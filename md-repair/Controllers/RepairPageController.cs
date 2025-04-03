using System.Text.Json;
using Dapper;
using md_repair.Config;
using md_repair.Models;
using md_repair.Utils;
using Microsoft.AspNetCore.Mvc;
using MySqlConnector;

namespace md_repair.Controllers;

[Route("RepairPage")]
public class RepairPageController(ILogger<RepairPageController> logger) : Controller
{
    private readonly ILogger<RepairPageController> _logger = logger;

    [HttpPost("CreateRepair")]
    public async Task<ApiResponse> CreateRepair([FromBody] RepairList repairInfo)
    {
        _logger.LogInformation($"{repairInfo.Name} {repairInfo.Tel} {repairInfo.Detail}");
        //调用ai
        var aiResponse = await QueryDouBao.DoQuery(repairInfo.Detail);
        _logger.LogInformation(aiResponse);
        var contentValue = "";
        try
        {
            var doc = JsonDocument.Parse(aiResponse);
            var root = doc.RootElement;
            var choices = root.GetProperty("choices");
            if (choices.ValueKind == JsonValueKind.Array && choices.GetArrayLength() > 0)
            {
                var firstChoice = choices[0];
                var message = firstChoice.GetProperty("message");
                var content = message.GetProperty("content");
                contentValue = content.GetString();
                _logger.LogInformation(contentValue);
            }
        }
        catch (Exception ex)
        {
            _logger.LogError("解析json错误 详情:" + ex.Message);
            return new ApiResponse(ErrorCode.JSONERROR);
        }

        if (contentValue == "")
        {
            _logger.LogError("无法判断故障归属者");
            return new ApiResponse(ErrorCode.AIERROR);
        }

        //存储数据库
        var repairMessage = new RepairMessage
        {
            UserId = -1,
            ToUserId = -2,
            Content = contentValue + "\n" + repairInfo.Detail + "\n" + repairInfo.Name + "\n" + repairInfo.Tel,
            Image = repairInfo.Image,
        };


        await using var connection = new MySqlConnection(ConnectionConfig.ConnectionString);
        connection.Open();
        var result =
            await connection.ExecuteAsync(
                "insert into repair_message(UserId,ToUserId,Content,Image) values (@UserId,@ToUserId,@Content,@Image)",
                repairMessage);

        if (result != 1)
        {
            return new ApiResponse(ErrorCode.DBERROR);
        }

        try
        {
            //发送邮件
            EmailUtil.SendEmail(GlobalJobEmail.JobEmail[contentValue!],$"联系人:{repairInfo.Name}<br>联系方式:{repairInfo.Tel}<br>报修详情:{repairInfo.Detail}",repairInfo.Image);
            _logger.LogInformation("邮件发送成功");
        }
        catch (Exception e)
        {
            _logger.LogError("发送邮件错误 详情:"+e.Message);
            return new ApiResponse(ErrorCode.EMAILREEOR);
        }
        
        return new ApiResponse();
    }
}
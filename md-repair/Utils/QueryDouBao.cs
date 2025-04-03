using System.Text;
using System.Text.Json;

namespace md_repair.Utils;

public static class QueryDouBao
{
    private static readonly JsonSerializerOptions JsonSerializer = new JsonSerializerOptions { WriteIndented = true };

    private const string ModelName = "deepseek-v3-250324";
    private const string Url = "https://ark.cn-beijing.volces.com/api/v3/chat/completions";
    private const string Token = "72044b55-f38f-4de3-b5b1-1eb08ee7dc7a";

    const string command = """
                           判断故障归属(直接输出名字)：
                           1. 校园内一般设施故障 -> 后勤维修员
                           2. 信息中心（机房，共4层，每层6个教室，编号如203、405）内的故障 -> 机房管理员
                           3. 教室（1 - 10栋教学楼，编号如6 - 304）多媒体设备故障、网络故障 -> 电教管理员
                           4. 学校非教室区域（如宿舍、办公室）网络故障 -> 网络管理员
                           5. 学校电子设备（如室外显示屏、打印机、教师电脑）故障 -> 网络管理员
                           6. 电力相关故障 -> 电工
                           7. 无法判断的故障 -> 系统管理员
                           """;

    public static async Task<string> DoQuery(string query)
    {
        using var client = new HttpClient();

        var jsonObject = new
        {
            model = ModelName,
            messages = new[]
            {
                new { role = "system", content = command },
                new { role = "user", content = query }
            }
        };
        var json = System.Text.Json.JsonSerializer.Serialize(jsonObject, JsonSerializer);

        // 创建 StringContent 对象，并设置请求体的编码方式
        var content = new StringContent(json, Encoding.UTF8, "application/json");
        client.DefaultRequestHeaders.Add("Authorization", $"Bearer {Token}");

        // 发送 POST 请求
        using var response = await client.PostAsync(Url, content);

        // 确保响应成功
        response.EnsureSuccessStatusCode();

        // 读取响应内容
        var responseBody = await response.Content.ReadAsStringAsync();

        return responseBody;
    }
}
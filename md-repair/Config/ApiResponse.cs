namespace md_repair.Config;

public class ApiResponse
{
    // 状态码 成功=200
    public int StatusCode { get; set; }
    
    // 成功时的返回数据
    public object Data { get; set; }
    
    // 错误信息
    public string? ErrorMessage { get; set; }
    
    // 构造成功响应
    public ApiResponse()
    {
        StatusCode = 200;
    }
    
    public ApiResponse(object data)
    {
        StatusCode = 200;
        Data = data;
    }

    // 构造失败响应
    public ApiResponse(ErrorCode.ErrorCodeEnum errorCode)
    {
        StatusCode = errorCode.ErrorCode;
        ErrorMessage = errorCode.ErrorMessage;
    }
}

namespace md_repair.Config;

public static class ErrorCode
{

    public record ErrorCodeEnum(int ErrorCode, string ErrorMessage);

    public static readonly ErrorCodeEnum AIERROR = new(1000, "调用ai发生错误");
    
    public static readonly ErrorCodeEnum  EMAILREEOR= new(1001, "发送邮件错误");

    public static readonly ErrorCodeEnum  DBERROR= new(1002, "插入数据库错误");
    
    public static readonly ErrorCodeEnum  JSONERROR= new(1003, "解析json错误");
}


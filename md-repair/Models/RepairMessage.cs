namespace md_repair.Models;

public class RepairMessage
{
    public int Id { get; set; }
    public int UserId { get; set; }
    public int ToUserId { get; set; }
    public string Content { get; set; }
    public bool IsRead { get; set; }
    public DateTime CreateTime { get; set; }
    public string Image { get; set; }
}
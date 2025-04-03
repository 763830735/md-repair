namespace md_repair.Models;

public class RepairList
{
    public int UserId { get; set; }
    public string Name { get; set; }
    public string Tel { get; set; }
    public string Detail { get; set; }
    public string Image { get; set; }
    public int ToUserId { get; set; }
    public DateTime CreateTime { get; set; }
}
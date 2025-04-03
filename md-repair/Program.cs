using md_repair.Services;

var builder = WebApplication.CreateBuilder(args);
builder.Services.AddCors(options =>
{
    options.AddPolicy("AllowSameOrigin", policy => policy.AllowAnyOrigin().AllowAnyHeader().AllowAnyMethod());
});
builder.Services.AddControllersWithViews();
// 添加文件日志记录器
builder.Logging.AddFile();

var app = builder.Build();
app.UseStaticFiles(); // 默认会支持 wwwroot 文件夹下的静态文件
app.UseRouting();
app.UseCors("AllowSameOrigin");
app.MapControllers();


await JobEmailService.GetAllJobEmails();
app.Run();
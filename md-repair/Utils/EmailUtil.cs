using System.Net;
using System.Net.Mail;
using System.Net.Mime;

namespace md_repair.Utils;

public static class EmailUtil
{
    public static void SendEmail(string to, string message, string images)
    {
        // 创建邮件消息对象
        var mail = new MailMessage();

        // 设置发件人邮箱地址
        mail.From = new MailAddress("19825085432@163.com");

        // 设置收件人邮箱地址
        mail.To.Add(to);

        // 设置邮件主题
        mail.Subject = "新的报修";

        // 创建 HTML 格式的邮件正文
        var htmlBody = "<html><body>";
        htmlBody += "<p>" + message + "</p>";
        var strings = images.Split("|");
        foreach (var str in strings)
        {
            htmlBody += $"<img src={str} />";
        }

        htmlBody += "</body></html>";

        // 创建 HTML 视图
        var htmlView = AlternateView.CreateAlternateViewFromString(htmlBody, null, MediaTypeNames.Text.Html);

        // 将 HTML 视图添加到邮件消息中
        mail.AlternateViews.Add(htmlView);

        // 创建 SmtpClient 对象，用于发送邮件
        var smtpClient = new SmtpClient("smtp.163.com");
        smtpClient.Port = 25;
        smtpClient.Credentials = new NetworkCredential("19825085432@163.com", "LKJrDPg3i4xxe45C");
        // smtpClient.EnableSsl = true;

        // 发送邮件
        smtpClient.Send(mail);
    }
}
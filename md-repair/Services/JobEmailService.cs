using Dapper;
using md_repair.Config;
using md_repair.Models;
using MySqlConnector;

namespace md_repair.Services;

public static class JobEmailService
{
    public static async Task GetAllJobEmails()
    {
        await using var connection = new MySqlConnection(ConnectionConfig.ConnectionString);
        connection.Open();
        var result=connection.Query<JobEmail>("SELECT Id,Job,Email FROM job_email");
        foreach (var x in result)
        {
            GlobalJobEmail.JobEmail.Add(x.Job,x.Email);
        }
    }
}
namespace md_repair.Config;

public static class ConnectionConfig
{
    public static readonly string ConnectionString;

    static ConnectionConfig()
    {
        var builder = new ConfigurationBuilder()
            .SetBasePath(System.AppContext.BaseDirectory)
            .AddJsonFile("dbSetting.json", optional: false, reloadOnChange: true);
        var configuration = builder.Build();
        ConnectionString = configuration.GetConnectionString("DefaultConnection");
    }
}
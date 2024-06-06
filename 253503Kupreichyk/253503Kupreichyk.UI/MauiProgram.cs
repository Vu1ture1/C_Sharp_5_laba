using CommunityToolkit.Maui;
using _253503Kupreichyk.Domain.Abstractions;
using _253503Kupreichyk.Domain.Entities;
using _253503Kupreichyk.Persistense.Data;
using _253503Kupreichyk.Persistense.Repository;
using _253503Kupreichyk.UI.Pages;
using _253503Kupreichyk.UI.ViewModels;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Logging;
using System.Reflection;
using _253503Kupreichyk.Application.OrderUseCases.Queries;
using System.Collections.Generic;
using _253503Kupreichyk.Persistence;
using _253503Kupreichyk.Persistense;

namespace _253503Kupreichyk.UI;

public static class MauiProgram
{
    public static MauiApp CreateMauiApp()
    {
        string settingsStream = "_253503Kupreichyk.UI.appsettings.json";
        var builder = MauiApp.CreateBuilder();
        builder
            .UseMauiApp<App>()
            .UseMauiCommunityToolkit()
            .ConfigureFonts(fonts =>
            {
                fonts.AddFont("OpenSans-Regular.ttf", "OpenSansRegular");
                fonts.AddFont("OpenSans-Semibold.ttf", "OpenSansSemibold");
            });

        builder.Services
    .AddApplication()
    .AddPersistence()
    .RegisterPages()
    .RegisterViewModels();

#if DEBUG
        builder.Logging.AddDebug();
#endif

        string path = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData), AppInfo.Current.Name);

        if (!Path.Exists(path))
        {
            Directory.CreateDirectory(path);
        }

        Preferences.Default.Set("LocalData", path);

        using var stream = Assembly.GetExecutingAssembly().GetManifestResourceStream(settingsStream);
        builder.Configuration.AddJsonStream(stream);



        var connStr = builder.Configuration.GetConnectionString("SqliteConnection");
        string dataDirectory = string.Empty;
#if ANDROID
        dataDirectory = FileSystem.AppDataDirectory + "/";
#endif
        connStr = string.Format(connStr, dataDirectory);
        var options = new DbContextOptionsBuilder<AppDbContext>()
            .UseSqlite(connStr)
            .Options;

        builder.Services.AddPersistence(options);

        DBInitializer.Initialize(builder.Services);

        return builder.Build();
    }


}

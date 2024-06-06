using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using _253503Kupreichyk.Persistense.Data;
using _253503Kupreichyk.Persistense.Repository;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
using _253503Kupreichyk.Domain.Abstractions;

namespace _253503Kupreichyk.Persistense
{
    public static class DependencyInjection

    {
        public static IServiceCollection AddPersistence(this IServiceCollection
            services)
        {
            services.AddSingleton<IUnitOfWork, EfUnitOfWork>();
            return services;
        }
        public static IServiceCollection AddPersistence(
            this IServiceCollection services,
        DbContextOptions options)
        {
            services.AddPersistence()
            .AddSingleton(
           new AppDbContext((DbContextOptions<AppDbContext>)options));
            return services;
        }
    }
}

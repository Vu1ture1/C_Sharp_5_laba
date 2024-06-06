using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using _253503Kupreichyk.Domain.Abstractions;
using _253503Kupreichyk.Persistense.Data;
using _253503Kupreichyk.Persistense.Repository;
using Microsoft.EntityFrameworkCore;
using _253503Kupreichyk.UI.Pages;
using _253503Kupreichyk.UI.ViewModels;
using Microsoft.Extensions.DependencyInjection;

namespace _253503Kupreichyk.UI
{
    public static class DependencyInjection

    {
        public static IServiceCollection RegisterPages(this IServiceCollection services)
        {
            services.AddTransient<Pizzeriaposes>();
            services.AddTransient<OrderDetails>();
            services.AddTransient<AddOrEditPizzeriaPosess>();
            services.AddTransient<AddOrEditOrder>();
            return services;
        }
        public static IServiceCollection RegisterViewModels(
        this IServiceCollection services)
        {
            services.AddSingleton<PizzeriaPosesViewModel>();
            services.AddTransient<OrderDetailsViewModel>();
            services.AddTransient<AddOrEditPizzeriaPosViewModel>();
            services.AddTransient<AddOrEditOrderViewModel>();
            return services;
        }
    }
}

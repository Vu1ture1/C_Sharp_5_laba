using Microsoft.Extensions.DependencyInjection;



namespace _253503Kupreichyk.Persistence
{
    public static class DependencyInjection
    {
        public static IServiceCollection AddApplication(this
       IServiceCollection services)
        {
            services.AddMediatR(conf =>

           conf.RegisterServicesFromAssembly(typeof(DependencyInjection)
           .Assembly));
            return services;
        }
    }

}

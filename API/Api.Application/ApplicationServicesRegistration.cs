using Api.Application.Implementation;
using Api.Application.Interface;
using Api.Application.Presistance;
using Microsoft.Extensions.DependencyInjection;
using System;
using System.Collections.Generic;
using System.Text;

namespace Api.Application
{

    public static class ApplicationServicesRegistration
    {
        public static IServiceCollection ConfigureApplicationServices(this IServiceCollection services)
        {
          

            //services.AddScoped(typeof(IDefaultService<>), typeof(DefaultService<>));
            services.AddScoped<ICategoryService, CategoryService>();

            return services;
        }
    }
}

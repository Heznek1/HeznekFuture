﻿using System.Reflection;
using System.Web.Http;
using Autofac;
using Autofac.Integration.WebApi;
using HeznekLaatid.Services.Authorization.Interfaces;
using HeznekLaatid.Services.Authorization.Repositories;
using HeznekLaatid.Services.Interfaces;
using HeznekLaatid.Services.Repositories;

namespace HeznekLaatid.Services
{
    public class DependencyResolver
    {
        private static IContainer container;

        public static void Initialize(HttpConfiguration config)
        {
            Initialize(config, RegisterServices(new ContainerBuilder()));
        }

        public static void Initialize(HttpConfiguration config, IContainer container)
        {
            config.DependencyResolver = new AutofacWebApiDependencyResolver(container);
        }

        private static IContainer RegisterServices(ContainerBuilder builder)
        {
            builder.RegisterApiControllers(Assembly.GetExecutingAssembly());

            // Register Token Service
            builder.RegisterType<TokenUserRepository>().As<ITokenUserRepository>();

            // Register needed components
            builder.RegisterType<UserRepository>().As<IUserRepository>();
            builder.RegisterType<ScholarshipRepository>().As<IScholarshipRepository>();

            // Set the dependency to Autofac
            container = builder.Build();

            return container;
        }
    }
}
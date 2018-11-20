using System.Web.Http;

namespace HeznekLaatid.TokenService.App_Start
{
    public class Bootstrapper
    {
        public static void Run()
        {
            // Configure Autofac Dependency Resolver
            DependencyInjectionResolver.Initialize(GlobalConfiguration.Configuration);
        }
    }
}
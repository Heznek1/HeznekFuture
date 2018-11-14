using System.Web.Http;

namespace HeznekLaatid.Services
{
    public class Bootstrapper
    {
        public static void Run()
        {
            // Configure Autofac Dependency Resolver
            DependencyResolver.Initialize(GlobalConfiguration.Configuration);
        }
    }
}
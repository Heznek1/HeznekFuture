using System.Web.Http;
using HeznekLaatid.TokenService.App_Start;

namespace HeznekLaatid.TokenService
{
    public class WebApiApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            Bootstrapper.Run();
            GlobalConfiguration.Configure(WebApiConfig.Register);
        }
    }
}

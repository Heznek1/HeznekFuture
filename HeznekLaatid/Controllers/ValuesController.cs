using System.Web.Http;
using Shared.Identity_Provider;
using TokenService.Filters;

namespace HeznekLaatid.Controllers
{
    [JwtAuthentication]
    public class ValuesController : ApiController
    {
        [Route("api/values")]
        [HttpGet]
        public User GetValues()
        {
            return new User()
            {
                id = 1,
                instance = Instance.ServiceOwner,
                role = Role.Manager,
                username = "testuser",
                password = "testpassword"
            };
        }
    }
}

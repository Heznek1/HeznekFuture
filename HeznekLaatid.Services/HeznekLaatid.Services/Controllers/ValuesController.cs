using System.Linq;
using System.Security.Claims;
using System.Web.Http;
using TokenService.Filters;

namespace HeznekLaatid.Services.Controllers
{
    [JwtAuthentication]
    public class ValuesController : ApiController
    {
        [HttpGet]
        [Route("api/values")]
        public IHttpActionResult ReturnUser()
        {
            var currentUser = User as ClaimsPrincipal;
            var usernameClaim = currentUser.Claims.FirstOrDefault(c => c.Type == ClaimTypes.Name).Value;
            var roleClaim = currentUser.Claims.FirstOrDefault(c => c.Type == ClaimTypes.Role)?.Value;
            var instanceClaim = currentUser.Claims.FirstOrDefault(c => c.Type == ClaimTypes.Actor)?.Value;

            return Ok(new
            {
                usernameClaim,
                roleClaim,
                instanceClaim
            });
        }
    }
}

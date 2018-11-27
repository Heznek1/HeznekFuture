using System;
using System.Security.Claims;
using System.Web.Http;
using HeznekLaatid.Core.Identity_Provider;
using HeznekLaatid.Core.Utils;
using HeznekLaatid.Services.Authorization.Filters;
using HeznekLaatid.Services.Utils;

namespace HeznekLaatid.Services.Controllers
{
    [JwtAuthentication]
    public class ValuesController : ApiController
    {
        [Route("api/values")]
        [HttpGet]
        public IHttpActionResult GetValues()
        {
            var user = User as ClaimsPrincipal;
            var userRole = user.GetCurrentUserRole();

            return Ok(
                new
                {
                    role = userRole.ToEnumType<Role>().ToString()
                }
            );
        }
    }
}

using System;
using System.Security.Claims;
using System.Threading.Tasks;
using System.Web.Http;
using HeznekLaatid.Core.View_Model;
using HeznekLaatid.Services.Interfaces;
using HeznekLaatid.Services.Utils;
using HeznekLaatid.TokenService.Filters;

namespace HeznekLaatid.Services.Controllers
{
    [JwtAuthentication]
    public class UserController : ApiController
    {
        private readonly IUserRepository userRepository;
        public UserController(IUserRepository userRepository)
        {
            this.userRepository = userRepository;
        }

        [HttpPost]
        [Route("api/internal/profile")]
        [AllowAnonymous]
        public async Task<IHttpActionResult> SetRegisteredUserProfile([FromBody] UserRegistrationViewModel userProfile)
        {
            if (userProfile == null)
            {
                return BadRequest("Empty object");
            }

            try
            {
                await this.userRepository.CreateUser(userProfile);
            }
            catch (Exception ex)
            {
                return InternalServerError(ex);
            }
            return Ok();
        }

        [HttpGet]
        [Route("api/profile")]
        public async Task<IHttpActionResult> GetUserProfile()
        {
            var user = User as ClaimsPrincipal;
            try
            {
                var data = await this.userRepository.GetUserProfile(user.GetCurrentUserId());
                return Ok(data);
            }
            catch (Exception ex)
            {
                return InternalServerError(ex);
            }
        }

        [HttpPatch]
        [Route("api/profile")]
        public async Task<IHttpActionResult> UpdateUserProfile([FromBody] UserProfile profile)
        {
            if (string.IsNullOrEmpty(profile.id) || string.IsNullOrWhiteSpace(profile.id))
            {
                return BadRequest("User id was not provided!");
            }

            try
            {
                await this.userRepository.UpdateUserProfile(profile);
                return Ok("Profile updated successfully");
            }
            catch (Exception ex)
            {
                return InternalServerError(ex);
            }
        }
    }
}

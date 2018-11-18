using System.Threading.Tasks;
using System.Web.Http;
using HeznekLaatid.Services.Interfaces;
using Shared.View_Model;

namespace HeznekLaatid.Services.Controllers
{
    [AllowAnonymous]
    public class UserController : ApiController
    {
        private readonly IUserRepository userRepository;
        public UserController(IUserRepository userRepository)
        {
            this.userRepository = userRepository;
        }

        [HttpPost]
        [Route("api/internal/profile")]
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
            catch (System.Exception ex)
            {
                return InternalServerError(ex);
            }
            return Ok();
        }
    }
}

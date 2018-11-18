using System.Linq;
using System.Security.Claims;

namespace HeznekLaatid.Services.Utils
{
    public static class UserClaimsUtils
    {
        public static string GetCurrentUserRole(this ClaimsPrincipal user)
        {
            return user.Claims.FirstOrDefault(c => c.Type == ClaimTypes.Role)?.Value;
        }

        public static string GetCurrentUserId(this ClaimsPrincipal user)
        {
            return user.Claims.FirstOrDefault(c => c.Type == ClaimTypes.Name)?.Value;
        }

        public static string GetCurrentGuid(this ClaimsPrincipal user)
        {
            return user.Claims.FirstOrDefault(c => c.Type == ClaimTypes.Hash)?.Value;
        }

        public static string GetCurrentInstance(this ClaimsPrincipal user)
        {
            return user.Claims.FirstOrDefault(c => c.Type == ClaimTypes.Actor)?.Value;
        }
    }
}
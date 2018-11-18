using System.Threading.Tasks;
using Shared.View_Model;

namespace HeznekLaatid.Services.Interfaces
{
    public interface IUserRepository
    {
        Task CreateUser(UserRegistrationViewModel profile);
        Task<UserProfile> GetUserProfile(string userId);
        Task UpdateUserProfile(UserProfile profile);
    }
}
using System.Threading.Tasks;
using HeznekLaatid.Core.View_Model;
using HeznekLaatid.Services.Entities;

namespace HeznekLaatid.Services.Interfaces
{
    public interface IUserRepository
    {
        Task CreateUser(UserRegistrationViewModel profile);
        Task<UserProfile> GetUserProfile(string userId);
        Task UpdateUserProfile(UserProfile profile);
    }
}
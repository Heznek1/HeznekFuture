using System.Threading.Tasks;
using HeznekLaatid.Core.View_Model;
using HeznekLaatid.Services.Entities;

namespace HeznekLaatid.Services.Interfaces
{
    public interface IUserRepository
    {
        Task CreateUser(UserRegistrationViewModel profile);
        Task<User_Profile> GetUserProfile(string userId);
        Task UpdateUserProfile(User_Profile profile);
    }
}
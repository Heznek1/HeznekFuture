using System.Threading.Tasks;
using HeznekLaatid.Core.View_Model;
using HeznekLaatid.Services.Entities;

namespace HeznekLaatid.Services.Interfaces
{
    public interface IUserRepository
    {
        Task CreateUser(UserRegistrationViewModel profile);
        Task<userTbl> GetUserProfile(string userId);
        Task UpdateUserProfile(userTbl profile);
    }
}
using System.Threading.Tasks;
using UserRegisterData = HeznekLaatid.Core.View_Model.UserRegistrationViewModel;

namespace HeznekLaatid.TokenService.Interfaces
{
    public interface IUserRepository
    {
        Task CreateUser(UserRegisterData user);
    }
}
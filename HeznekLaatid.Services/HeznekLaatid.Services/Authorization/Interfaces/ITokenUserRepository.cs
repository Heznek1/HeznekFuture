using System.Threading.Tasks;
using UserRegisterData = HeznekLaatid.Core.View_Model.UserRegistrationViewModel;

namespace HeznekLaatid.Services.Authorization.Interfaces
{
    public interface ITokenUserRepository
    {
        Task CreateUser(UserRegisterData user);
    }
}
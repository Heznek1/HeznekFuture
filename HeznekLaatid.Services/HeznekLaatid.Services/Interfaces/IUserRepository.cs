using System.Threading.Tasks;
using Shared.View_Model;

namespace HeznekLaatid.Services.Interfaces
{
    public interface IUserRepository
    {
        Task CreateUser(UserRegistrationViewModel profile);
    }
}
using System.Threading.Tasks;
using HeznekLaatid.Core.Utils;
using HeznekLaatid.Services.Authorization.Interfaces;
using HeznekLaatid.Services.Entities;
using UserRegisterData = HeznekLaatid.Core.View_Model.UserRegistrationViewModel;

namespace HeznekLaatid.Services.Authorization.Repositories
{
    public class TokenUserRepository : ITokenUserRepository
    {
        public async Task CreateUser(UserRegisterData user)
        {
            using (var db = new TokeServiceDbEntities())
            {
                db.Users.Add(this.MapUser(user));
                await db.SaveChangesAsync();
            }
        }

        private User MapUser(UserRegisterData newUser)
        {
            return new User()
            {
                role = (int) Core.Identity_Provider.Role.Candidate,
                guid = newUser.guid,
                instance = (int) Core.Identity_Provider.Instance.HeznekService,
                email = newUser.email,
                username = newUser.username,
                password = newUser.password.EncryptPassword()
            };
        }
    }
}
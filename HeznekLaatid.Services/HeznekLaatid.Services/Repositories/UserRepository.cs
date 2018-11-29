using System.Data.Entity;
using System.Data.Entity.Migrations;
using System.Threading.Tasks;
using HeznekLaatid.Core.View_Model;
using HeznekLaatid.Services.Entities;
using HeznekLaatid.Services.Interfaces;

namespace HeznekLaatid.Services.Repositories
{
    public class UserRepository : IUserRepository
    {
        public async Task CreateUser(UserRegistrationViewModel profile)
        {
            using (var db = new HeznekServiceDbEntities())
            {
                db.User_Profile.Add(this.MapUserProfile(profile));
                await db.SaveChangesAsync();
            }
        }

        public async Task<User_Profile> GetUserProfile(string userId)
        {
            using (var db = new HeznekServiceDbEntities())
            {
                return await db.User_Profile.FirstOrDefaultAsync(p => p.id == userId);
            }
        }

        public async Task UpdateUserProfile(User_Profile profile)
        {
            using (var db = new HeznekServiceDbEntities())
            {
                db.User_Profile.AddOrUpdate(profile);
                await db.SaveChangesAsync();
            }
        }

        private User_Profile MapUserProfile(UserRegistrationViewModel user)
        {
            return new User_Profile()
            {
                email = user.email,
                id = user.username,
                firstName = user.first_name,
                lastName = user.last_name,
                phone = user.phone
            };
        }
    }
}
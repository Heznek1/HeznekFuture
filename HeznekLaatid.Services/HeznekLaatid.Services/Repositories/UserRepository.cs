using System.Data.Entity;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Threading.Tasks;
using HeznekLaatid.Services.Interfaces;
using Shared.View_Model;

namespace HeznekLaatid.Services.Repositories
{
    public class UserRepository : IUserRepository
    {
        public async Task CreateUser(UserRegistrationViewModel profile)
        {
            using (var db = new HeznekServiceDbEntities())
            {
                db.UserProfiles.Add(this.MapUserProfile(profile));
                await db.SaveChangesAsync();
            }
        }

        public async Task<UserProfile> GetUserProfile(string userId)
        {
            using (var db = new HeznekServiceDbEntities())
            {
                return await db.UserProfiles.FirstOrDefaultAsync(p => p.unique_id == userId);
            }
        }

        public async Task UpdateUserProfile(UserProfile profile)
        {
            using (var db = new HeznekServiceDbEntities())
            {
                db.UserProfiles.AddOrUpdate(profile);
                await db.SaveChangesAsync();
            }
        }

        private UserProfile MapUserProfile(UserRegistrationViewModel user)
        {
            return new UserProfile()
            {
                email = user.email,
                unique_id = user.username,
                first_name = user.first_name,
                last_name = user.last_name,
                phone = user.phone
            };
        }
    }
}
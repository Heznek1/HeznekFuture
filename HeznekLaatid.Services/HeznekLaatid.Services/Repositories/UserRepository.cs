using System.Data.Entity;
using System.Data.Entity.Migrations;
using System.Threading.Tasks;
using HeznekLaatid.Core.View_Model;
using HeznekLaatid.Services.Interfaces;
using HeznekLaatid.Services.Entities;

namespace HeznekLaatid.Services.Repositories
{
    public class UserRepository : IUserRepository
    {
        public async Task CreateUser(UserRegistrationViewModel profile)
        {
            using (var db = new HeznekDBEntities())
            {
                db.userTbl.Add(this.MapUserProfile(profile));
                await db.SaveChangesAsync();
            }
        }

        public async Task<userTbl> GetUserProfile(string userId)
        {
            using (var db = new HeznekDBEntities())
            {
                return await db.userTbl.FirstOrDefaultAsync(p => p.id == userId);
            }
        }

        public async Task UpdateUserProfile(userTbl profile)
        {
            using (var db = new HeznekDBEntities())
            {
                db.userTbl.AddOrUpdate(profile);
                await db.SaveChangesAsync();
            }
        }

        private userTbl MapUserProfile(UserRegistrationViewModel user)
        {
            return new userTbl()
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
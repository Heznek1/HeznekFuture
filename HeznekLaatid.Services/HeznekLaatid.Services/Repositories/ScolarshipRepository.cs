using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using HeznekLaatid.Services.Models;

namespace HeznekLaatid.Services.Repositories
{
    public class ScolarshipRepository
    {
        public async Task<IEnumerable<Scolarship>> GetScholarships()
        {
            using (var db = new HeznekServiceDbEntities())
            {
                return await db.Scolarships.ToListAsync();
            }
        }

        public async Task<IEnumerable<AcademicInstitution>> GetAcademicInstitutions()
        {
            using (var db = new HeznekServiceDbEntities())
            {
                return await db.AcademicInstitutions.ToListAsync();
            }
        }

        public async Task<IEnumerable<StudentVolunteer>> GetStudentVolunteer()
        {
            using (var db = new HeznekServiceDbEntities())
            {
                return await db.StudentVolunteers.ToListAsync();
            }
        }

        public async Task<IEnumerable<Bank>> GetBankInformation()
        {
            using (var db = new HeznekServiceDbEntities())
            {
                return await db.Banks.ToListAsync();
            }
        }
    }
}
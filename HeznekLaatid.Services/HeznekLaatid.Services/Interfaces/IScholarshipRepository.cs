using System.Collections.Generic;
using System.Threading.Tasks;
using HeznekLaatid.Services.Models;

namespace HeznekLaatid.Services.Interfaces
{
    public interface IScholarshipRepository
    {
        Task<IEnumerable<ScholarshipModel>> GetScholarships();
        Task<IEnumerable<AcademicInstituteModel>> GetAcademicInstitutions();
        Task<IEnumerable<StudentVolunteerModel>> GetStudentVolunteer();
        Task<IEnumerable<BankModel>> GetBankInformation();
    }
}
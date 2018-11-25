using System.Collections.Generic;
using System.Threading.Tasks;

namespace HeznekLaatid.Services.Interfaces
{
    public interface IScholarshipRepository
    {
        Task<IEnumerable<Scolarship>> GetScholarships();
        Task<IEnumerable<AcademicInstitution>> GetAcademicInstitutions();
        Task<IEnumerable<StudentVolunteer>> GetStudentVolunteer();
        Task<IEnumerable<Bank>> GetBankInformation();
    }
}
using System.Collections.Generic;
using System.Threading.Tasks;
using HeznekLaatid.Services.Entities;

namespace HeznekLaatid.Services.Interfaces
{
    public interface IScholarshipRepository
    {
        IEnumerable<Scolarship> GetScholarships();
        Task<IEnumerable<AcademicInstitution>> GetAcademicInstitutions();
        Task<IEnumerable<StudentVolunteer>> GetStudentVolunteer();
        Task<IEnumerable<Bank>> GetBankInformation();
    }
}
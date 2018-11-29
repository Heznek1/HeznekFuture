using System.Collections.Generic;
using System.Data.Entity;
using System.Threading.Tasks;
using HeznekLaatid.Services.Entities;
using HeznekLaatid.Services.Interfaces;
using HeznekLaatid.Services.Models;

namespace HeznekLaatid.Services.Repositories
{
    public class ScholarshipRepository : IScholarshipRepository
    {
        public async Task<IEnumerable<ScholarshipModel>> GetScholarships()
        {
            using (var db = new HeznekServiceDbEntities())
            {
                var data = await db.Scholarships.ToListAsync();
                if (data.Count == 0)
                {
                    return new List<ScholarshipModel>()
                    {
                        new ScholarshipModel()
                        {
                            sn = 0
                        }
                    };
                }

                var result = new List<ScholarshipModel>();

                data.ForEach(el =>
                {
                    result.Add(new ScholarshipModel()
                    {
                        sn = el.sn,
                        scholarshipName = el.scholarshipName,
                        budgetScholarship = el.budgetScholarship,
                        admission = el.admission,
                        status = el.status,
                        Student_Volunteer = el.Student_Volunteer,
                        Deposits_scholarship = el.Deposits_scholarship,
                        Students_Scholarship = el.Students_Scholarship
                    });
                });

                return result;
            }
        }

        public async Task<IEnumerable<AcademicInstituteModel>> GetAcademicInstitutions()
        {
            using (var db = new HeznekServiceDbEntities())
            {
                var data = await db.Academic_Institut.ToListAsync();
                if (data.Count == 0)
                {
                    return new List<AcademicInstituteModel>()
                    {
                        new AcademicInstituteModel()
                        {
                            sn = 0
                        }
                    };
                }

                var result = new List<AcademicInstituteModel>();
                data.ForEach(el =>
                {
                    result.Add(new AcademicInstituteModel()
                    {
                        sn = el.sn,
                        User_Profile = el.User_Profile,
                        City = el.City,
                        nameOfInstitut = el.nameOfInstitut,
                        placeOfInstitute = el.placeOfInstitute
                    });
                });

                return result;
            }
        }

        public async Task<IEnumerable<StudentVolunteerModel>> GetStudentVolunteer()
        {
            using (var db = new HeznekServiceDbEntities())
            {
                var data = await db.Student_Volunteer.ToListAsync();
                if (data.Count == 0)
                {
                    return new List<StudentVolunteerModel>()
                    {
                        new StudentVolunteerModel()
                        {
                            id = "0"
                        }
                    };
                }

                var result = new List<StudentVolunteerModel>();
                data.ForEach(el =>
                {
                    result.Add(new StudentVolunteerModel()
                    {
                        id = el.id,
                        Scholarship = el.Scholarship,
                        User_Profile = el.User_Profile,
                        dateOfVolunteer = el.dateOfVolunteer,
                        finishHour = el.finishHour,
                        scholarshipSn = el.scholarshipSn,
                        semester = el.semester,
                        startHour = el.startHour
                    });
                });
                return result;
            }
        }

        public async Task<IEnumerable<BankModel>> GetBankInformation()
        {
            using (var db = new HeznekServiceDbEntities())
            {
                var data = await db.Banks.ToListAsync();
                if (data.Count == 0)
                {
                    return new List<BankModel>()
                    {
                        new BankModel()
                        {
                            sn = 0
                        }
                    };
                }

                var result = new List<BankModel>();
                data.ForEach(el =>
                {
                    result.Add(new BankModel()
                    {
                        sn = el.sn,
                        Scholarship_Student_Bank = el.Scholarship_Student_Bank,
                        name = el.name
                    });
                });
                return result;
            }
        }
    }
}
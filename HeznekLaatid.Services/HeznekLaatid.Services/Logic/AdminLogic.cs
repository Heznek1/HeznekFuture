using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using HeznekLaatid.Services.Entities;
using HeznekLaatid.Services.Interfaces;
using HeznekLaatid.Services.Model;

namespace HeznekLaatid.Services.Logic
{
    public class AdminLogic : AbstractAdmin
    {
       // private readonly IUserRepository userRepository;

        private static void AddScholarship(Scholarship s)
        {
            ScholarshipData.AddScholarship(s);        
        }

        private static void UpdateScholarship(Scholarship s)
        {
            ScholarshipData.UpdateScholarship(s);
        }

        private static void RemoveScholarship(int sn)
        {
            ScholarshipData.RemoveScholarship(sn);
        }

        private static void AddStudentToScholarship(Student_Scholarship student_scholarship)
        {
            StudentScholarshipData.AddStudentToScholarship(student_scholarship);
        }

        private static void UpdateStudentInScholarship(Student_Scholarship student_scholarship)
        {
            StudentScholarshipData.UpdateStudentInScholarship(student_scholarship);
        }

        private static void RemoveStudentFromScholarship(Student_Scholarship student_scholarship)
        {
            StudentScholarshipData.RemoveStudentFromScholarship( student_scholarship.id,student_scholarship.sn);
        }
 
    }
}
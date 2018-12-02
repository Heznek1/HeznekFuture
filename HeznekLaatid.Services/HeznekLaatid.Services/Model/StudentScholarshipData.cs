using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using HeznekLaatid.Services.Entities;

namespace HeznekLaatid.Services.Model
{
    public class StudentScholarshipData
    {
        /// <Summary>
        /// get all students from all the existing scholarships in the data base.
        /// </Summary>
        public static List<Student_Scholarship> GetAllStudentsInScholarships()
        {
            var db = new HeznekDBEntities();
            List<Student_Scholarship> studentsAndScholarships = db.Student_Scholarship.ToList();

            return studentsAndScholarships;
        }

        /// <Summary>
        /// get list of students that recieved specific scolarship
        /// </Summary>
        public static List<User_Profile> GetAllStudentsFromSpecificScholarship(int sn)
        {
            var db = new HeznekDBEntities();

            List<Student_Scholarship> scholarships = db.Student_Scholarship.ToList();
            List<User_Profile> users = new List<User_Profile>();

            foreach (var s in scholarships)
            {
                if(s.sn == sn)
                    users.Add(ForeignKeys.GetUserConnectedByID(s.id));
            }
            return users;
        }

        /// <Summary>
        /// add student to a scholarship(table: Student_Scholarship)
        /// </Summary>
        public static void AddStudentToScholarship(Student_Scholarship student_scholarship)
        {
            if (UserData.CheckExistingUserInDB(student_scholarship.id) && ScholarshipData.CheckExistingScholarshipInDB(student_scholarship.sn))
            {
                var db = new HeznekDBEntities();
                db.Student_Scholarship.Add(student_scholarship);
                db.SaveChanges();
            }
        }

        /// <Summary>
        /// update student in a scholarship(table: Student_Scholarship)
        /// </Summary>
        public static void UpdateStudentInScholarship(Student_Scholarship student_scholarship)
        {
            var db = new HeznekDBEntities();
            List<Student_Scholarship> ss = db.Student_Scholarship.ToList();

            foreach (var s in ss)
            {
                if (s.id == student_scholarship.id && s.sn == student_scholarship.sn)
                {
                    s.amountOfGivanScholarship = student_scholarship.amountOfGivanScholarship;
                    s.numOfDeposits = student_scholarship.numOfDeposits;
                    s.currentYear = student_scholarship.currentYear;
                    s.wasGivenInPast = student_scholarship.wasGivenInPast;
                }
            }

            db.SaveChanges();
        }

        /// <Summary>
        /// remove student from a scholarship(table: Student_Scholarship)
        /// </Summary>
        public static void RemoveStudentFromScholarship(string id_student, int sn)
        {

            var db = new HeznekDBEntities();
            List<Student_Scholarship> student_scholarship = db.Student_Scholarship.ToList();

            foreach (var s in student_scholarship)
            {
                if (s.id == id_student && s.sn == sn)
                {
                    db.Student_Scholarship.Remove(s);
                    db.SaveChanges();
                }     
            }    
        }
    }
}

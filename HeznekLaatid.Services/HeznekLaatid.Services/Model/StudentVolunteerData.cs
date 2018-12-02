using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using HeznekLaatid.Services.Entities;

namespace HeznekLaatid.Services.Model
{
    public class StudentVolunteerData
    {
        /// <Summary>
        /// get student volunteering hours
        /// </Summary>
        public static List<Student_Volunteer> GetStudentVolunteerHours(string userId)
        {
            if (!UserData.CheckExistingUserInDB(userId))//check if id userId exist in db
                return null;
            
            var db = new HeznekDBEntities();
            List<Student_Volunteer> sv = db.Student_Volunteer.ToList();
            List<Student_Volunteer> student_hours = new List<Student_Volunteer>();

            foreach (var student in sv)
            {
                if (student.id == userId)
                    student_hours.Add(student);
            }

            return student_hours;
        }

        /// <Summary>
        /// get all students that volunteers
        /// </Summary>
        public static List<User_Profile> GetAllVolunteeringStudents()
        {
            var db = new HeznekDBEntities();
            List<Student_Volunteer> sv = db.Student_Volunteer.ToList();
            List<User_Profile> users = new List<User_Profile>();

            foreach(var s in sv)
            {
                users.Add(ForeignKeys.GetUserConnectedByID(s.id));
            }
            return users;
        }

        /// <Summary>
        /// add volunteer hours to a student
        /// </Summary>
        public static void AddVolunteeringHoursToStudent(Student_Volunteer sv)
        {
            var db = new HeznekDBEntities();
            db.Student_Volunteer.Add(sv);
            db.SaveChanges();
        }

        /// <Summary>
        /// update volunteering hours
        /// </Summary>
        public static void UpdateStudentVolunteerHours(Student_Volunteer student_volunteer)
        {
            var db = new HeznekDBEntities();
            List<Student_Volunteer> sv = db.Student_Volunteer.ToList();

            foreach (var s in sv)
            {
                if (s.id == student_volunteer.id && s.scholarshipSn == student_volunteer.scholarshipSn &&
                    s.dateOfVolunteer == student_volunteer.dateOfVolunteer)
                {
                    s.startHour = student_volunteer.startHour;
                    s.finishHour = student_volunteer.finishHour;
                    s.semester = student_volunteer.semester;
                    db.SaveChanges();
                    break;
                }
            }
        }

        /// <Summary>
        /// remove volunteering hours from a specific student
        /// </Summary>
        public static void RemoveStudentVolunteerHours(Student_Volunteer sv)
        {
            var db = new HeznekDBEntities();
            db.Student_Volunteer.Remove(sv);
            db.SaveChanges();
        }
    }
}
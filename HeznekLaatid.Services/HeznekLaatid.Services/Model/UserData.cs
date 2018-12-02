using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Threading.Tasks;
using System.Collections;
using HeznekLaatid.Services.Entities;

namespace HeznekLaatid.Services.Model
{
    class UserData
    {
        /// <Summary>
        /// retrieval from DB all the users(scholarships student and former scholarships and candidates)
        /// </Summary>
        public static List<User_Profile> GetAllUsers()
        {
            using (var db = new HeznekDBEntities())
            {
                List<User_Profile> users = db.User_Profile.ToList();
                return users;
            }
        }

        /// <Summary>
        /// give all the users in the table with the same status
        /// </Summary>
        public static ArrayList GetUsersByStatus(int status)
        {
            List<User_Profile> users = GetAllUsers();
            ArrayList usersAL = new ArrayList();

            foreach (var user in users)
            {
                if (user.status == status)
                {
                    usersAL.Add(user);
                }
            }

            return usersAL;
        }

        /// <Summary>
        /// give all the scholarships students in the table(no matter what is their secondary status)
        /// </Summary>
        public static ArrayList GetAllScholarshipsStudents()
        {
            List<User_Profile> users = GetAllUsers();
            ArrayList usersAL = new ArrayList();

            foreach (var user in users)
            {
                if (user.status < 3)
                    usersAL.Add(user);
            }

            return usersAL;

        }

        /// <Summary>
        /// give all chosen users in the table that are from a specific city
        /// </Summary>
        public static ArrayList GetAllChosenUsersFromSpecificCity(ArrayList usersList, String city)
        {
            //get the serial number of the specific city
            int sn = ForeignKeys.GetCityNumberByName(city);
            ArrayList users = usersList;
            ArrayList usersAL = new ArrayList();

            foreach (User_Profile user in users)
            {
                if (user.cityNumber == sn)
                {
                    usersAL.Add(user);
                }
            }

            return usersAL;

        }

        /// <Summary>
        /// gets a specific user by Id(primary key) from the list of users that i get as a parameter
        /// </Summary>
        public static User_Profile GetSpecificUserById(char id, List<User_Profile> usersList)
        {
            List<User_Profile> users = usersList;

            foreach (var user in users)
            {
                if (user.id.Equals(id))
                {
                    return user;
                }
            }

            return null;
        }

        /// <Summary>
        /// get users with the same first name from a list of chosen users
        /// </Summary>   
        public static ArrayList GetSpecificUsersByFn(List<User_Profile> usersList, String fn)
        {
            List<User_Profile> users = usersList;
            ArrayList usersAL = new ArrayList();

            foreach (var user in users)
            {
                if (user.firstName.Equals(fn))
                {
                    usersAL.Add(user);
                }
            }

            return usersAL;
        }

        /// <Summary>
        /// get users with the same last name from a list of chosen users
        /// </Summary>   
        public static ArrayList GetSpecificUsersByLn(List<User_Profile> usersList, String ln)
        {
            List<User_Profile> users = usersList;
            ArrayList usersAL = new ArrayList();

            foreach (var user in users)
            {
                if (user.lastName.Equals(ln))
                {
                    usersAL.Add(user);
                }
            }

            return usersAL;
        }

        /// <Summary>
        /// get users with the same full name from a list of chosen users
        /// </Summary>
        public static ArrayList GetSpecificUserByFullName(List<User_Profile> usersList, String fullName)
        {
            List<User_Profile> users = usersList;
            ArrayList usersAL = new ArrayList();

            foreach (var user in users)
            {
                if ((user.firstName + user.lastName).Equals(fullName))
                {
                    usersAL.Add(user);
                }
            }

            return usersAL;
        }

        /// <Summary>
        /// get all active candidates(from genral details candidates table)
        /// </Summary>
        public static List<Active_Candidate_Info> GetCandidatesGenralDetails()
        {
            using (var db = new HeznekDBEntities())
            {
                List<Active_Candidate_Info> users = db.Active_Candidate_Info.ToList();
                return users;
            }
        }

        /// <Summary>
        /// get all active candidates with equal or grater psychometric grade
        /// </Summary>
        public static ArrayList GetActiveCandidatesByPsychometricGrade(int grade)
        {
            List<Active_Candidate_Info> users = GetCandidatesGenralDetails();
            ArrayList usersAL = new ArrayList();

            foreach (var user in users)
            {
                if (user.psychometric_grade >= grade)
                {
                    usersAL.Add(user);
                }
            }

            return usersAL;
        }


        /// <Summary>
        /// filter scholarships students table by averege degree grade - get all the scholarships students with
        /// equal or greater grade averege degree
        /// </Summary>
        public static ArrayList GetStudentsHigerAverege(float avergeGrade)
        {
            ArrayList students = GetAllScholarshipsStudents();
            ArrayList studentsAL = new ArrayList();

            foreach (User_Profile student in students)
            {
                if (student.averageDegree >= avergeGrade)
                {
                    studentsAL.Add(student);
                }
            }

            return studentsAL;
        }

        /// <Summary>
        /// filter scholarships students table by averege degree grade - get all the scholarships students with
        /// equal or lower grade averege degree
        /// </Summary>
        public static ArrayList GetStudentsLowerAverege(int avergeGrade)
        {
            ArrayList students = GetAllScholarshipsStudents();
            ArrayList studentsAL = new ArrayList();

            foreach (User_Profile student in students)
            {
                if (student.averageDegree <= avergeGrade)
                {
                    studentsAL.Add(student);
                }
            }

            return studentsAL;

        }


        /// <Summary>
        /// filter students table by academic institue - get all the students from the same academy
        /// </Summary>
        public static ArrayList GetStudentsFromTheSameInstitution(String institute)
        {
            ArrayList students = GetAllScholarshipsStudents();
            ArrayList studentsAL = new ArrayList();
            int num = ForeignKeys.GetInstitutionNumberByName(institute);

            foreach (User_Profile student in students)
            {
                if (student.academicInstitution == num)
                {
                    studentsAL.Add(student);
                }
            }

            return studentsAL;
        }

        /// <Summary>
        /// filter scholarships students table by age - get all the scholarships students with
        /// equal or higher age
        /// </Summary>
        public static ArrayList GetAllStudentsByHigerAge(int age)
        {
            ArrayList students = GetAllScholarshipsStudents();
            ArrayList studentsAL = new ArrayList();
            int ageOfStudent = 0;

            foreach (User_Profile student in students)
            {
                //calaulate the age of the student by date of birth
                ageOfStudent = DateTime.Today.Year - student.dateOfBirth.Value.Year;
                if (ageOfStudent >= age)
                {
                    studentsAL.Add(student);

                }
            }

            return studentsAL;
        }


        /// <Summary>
        /// filter scholarships students table by age - get all the scholarships students with
        /// equal or lower age
        /// </Summary>
        public static ArrayList GetAllStudentsByLowerAge(int age)
        {
            ArrayList students = GetAllScholarshipsStudents();
            ArrayList studentsAL = new ArrayList();
            int ageOfStudent = 0;

            foreach (User_Profile student in students)
            {
                //calaulate the age of the student by date of birth
                ageOfStudent = DateTime.Today.Year - student.dateOfBirth.Value.Year;
                if (ageOfStudent <= age)
                {
                    studentsAL.Add(student);

                }
            }

            return studentsAL;
        }

        /// <Summary>
        /// get all the students from the same study field(not from the same degree)
        /// </Summary>
        public static ArrayList GetAllStudentsFromTheSameStudyField(String field)
        {
            ArrayList students = GetAllScholarshipsStudents();
            ArrayList studentsAL = new ArrayList();
            int num = ForeignKeys.GetNumberOfFieldByName(field);

            foreach (User_Profile student in students)
            {
                if (student.studyField == num)
                {
                    studentsAL.Add(student);
                }
            }

            return studentsAL;
        }

        /// <Summary>
        /// get all chosen users with specific number of academic parents
        /// </Summary>
        public static ArrayList GetNumOfAcademicParents(ArrayList users, int academicParents)
        {
            ArrayList chosenUsers = users;
            ArrayList newUsers = new ArrayList();

            foreach (User_Profile user in chosenUsers)
            {
                if (user.academicParents == academicParents)
                {
                    newUsers.Add(user);
                }
            }

            return newUsers;
        }

        /// <Summary>
        /// get all the students with the same start year
        /// </Summary>
        public static ArrayList GetAllStudentsWithTheSameStartYear(int year)
        {
            ArrayList students = GetAllScholarshipsStudents();
            ArrayList newStudents = new ArrayList();

            foreach (User_Profile student in students)
            {
                if (student.startYear == year)
                {
                    newStudents.Add(student);
                }
            }

            return newStudents;
        }


        /// <Summary>
        /// get all the students with the same finish year
        /// </Summary>
        public static ArrayList GetAllStudentsWithSameFinishYear(int year)
        {
            ArrayList students = GetAllScholarshipsStudents();
            ArrayList newStudents = new ArrayList();

            foreach (User_Profile student in students)
            {
                if (student.excpectedCompletionYear == year)
                {
                    newStudents.Add(student);
                }
            }

            return newStudents;
        }

        /// <Summary>
        /// get all chosen users from the same chosen gender
        /// </Summary>
        public static ArrayList GetAllChosenUsersFromTheSameGender(string gender, ArrayList usersArr)
        {
            //get all the chosen users from the same gender 'F' = female or 'M'=male
            ArrayList users = usersArr;
            ArrayList usersAL = new ArrayList();

            foreach (User_Profile user in users)
            {
                if (user.gender.Equals(gender))
                {
                    usersAL.Add(user);
                }
            }

            return usersAL;
        }
        /*
        public int getAllUsersFromTheSameGender(char gender)
        {//get all the users from the same gender 'F' = female or 'M'=male - aware\unaware candidates and all the students
            return getAllCandidatesFromTheSameGender(gender).Count + getAllStudentsFromTheSameGender(gender).Count;
        }*/

        /*Add query*/

        /// <Summary>
        /// add user to the list of users
        /// </Summary>
        public static void AddUserToUsers(User_Profile user)
        {
            try
            {
                if (!CheckIfUserInList(user.id))
                {
                    using (var db = new HeznekDBEntities())
                    {
                        db.User_Profile.Add(user);
                        db.SaveChanges();                       
                    }

                    if (user.status == 5)//if he is active candidate so add him to another table
                    {
                        AddUserToActiveCandidate(user.id);
                    }
                }
            }
            catch (Exception ex)
            {

                throw;
            }
        }

        private static bool CheckIfUserInList(string id)
        {
                List<User_Profile> users = GetAllUsers();

                    foreach (var user in users)
                    {
                        if (user.id.Equals(id))
                            return true;
                    }

                 return false;
        }
        

        /// <Summary>
        /// add user to the list of active candidates
        /// </Summary>
        public static void AddUserToActiveCandidate(string userId)
        {
            var user = new Active_Candidate_Info()
            {
                idCandidate = userId
            };

            using (var db = new HeznekDBEntities())
            {
                db.Active_Candidate_Info.Add(user);
                db.SaveChangesAsync();
            }
        }


        /*update query*/

        /// <Summary>
        /// updating user in the list of users
        /// </Summary>
        public static void UpdateUserInList(User_Profile updatedUser)
        {
            using (var db = new HeznekDBEntities())
            {
                List<User_Profile> users = GetAllUsers();

                foreach (User_Profile user in users)
                {
                    if (user.id.Equals(updatedUser.id))
                    {
                        db.User_Profile.Remove(user);
                        db.User_Profile.Add(updatedUser);
                        db.SaveChanges();
                    }
                }
            }
        }

        /*removal query*/
        public static void RemoveUserFromList(string userId)
        {
            using (var db = new HeznekDBEntities())
            {
                List<User_Profile> users = GetAllUsers();

                foreach (User_Profile user in users)
                {
                    if (user.id.Equals(userId))
                    {
                        db.User_Profile.Remove(user);
                        db.SaveChanges();
                    }
                }
            }
        }

        public static Boolean CheckExistingUserInDB(string  userId)
        {
            var db = new HeznekDBEntities();
            List<User_Profile> users = db.User_Profile.ToList();

            foreach (var user in users)
            {
                if (user.id == userId)
                    return true;
            }
            return false;
        }
    }
}



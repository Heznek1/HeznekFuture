using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Threading.Tasks;
using System.Collections;
using HeznekLaatid.Services.Entities;
using HeznekLaatid.Services.Model;

namespace HeznekLaatid.Services
{
    class ForeignKeys
    {
        /// <Summary>
        /// recieve name of a cityName and return the serial number of this cityName in the db.
        /// </Summary>
        public static int GetCityNumberByName(String cityName)
        {
            using (var db = new HeznekDBEntities())
            {
                int cityNum = 0;
                var query = (from City in db.City
                             where (City.city1.Equals(cityName))
                             select City.sn);
                try
                {
                    cityNum = query.ToArray().Last();
                }
                catch
                {
                    return 0;
                }
                return cityNum;
            }
        }

        /// <Summary>
        /// recieve name of a academic institution and return the serial number of this institute in the db.
        /// </Summary>
        public static int GetInstitutionNumberByName(String institue)
        {
            using (var db = new HeznekDBEntities())
            {
                int instituteNum = 0;
                var query = (from academicInstitutTbl in db.Academic_Institut
                             where (academicInstitutTbl.nameOfInstitut.Equals(institue))
                             select academicInstitutTbl.sn);
                try
                {
                    instituteNum = query.Last();
                }
                catch
                {
                    return 0;
                }
                return instituteNum;
            }
        }


        /// <Summary>
        /// recieve name of study field  and return the serial number of this field in the db.
        /// </Summary>
        public static int GetNumberOfFieldByName(String field)
        {
            int fieldNum = 0;
            using (var db = new HeznekDBEntities())
            {
                var query = (from studyFieldTbl in db.Study_Field
                             where (studyFieldTbl.field.Equals(field))
                             select studyFieldTbl.sn);
                try
                {
                    fieldNum = query.Last();
                }
                catch
                {
                    return 0;
                }
                return fieldNum;
            }
        }

        /// <Summary>
        /// recieve id of user and return the user object who belongs this id
        /// </Summary>
        public static User_Profile GetUserConnectedByID(string id)
        {
            List<User_Profile> users = UserData.GetAllUsers();
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
        /// Cross tables - get all the candidates and search them by id(foreign key) in all
        /// users table(id primary key there)
        /// </Summary>
        public static List<User_Profile> GetAllCandidatesDetails()
        {
            List<Active_Candidate_Info> candidates = UserData.GetCandidatesGenralDetails();
            List<User_Profile> allUsers = UserData.GetAllUsers();
            List<User_Profile> candidateUsers = new List<User_Profile>();

            foreach (var candidate in candidates)
            {
                foreach (var user in allUsers)
                {
                    if (candidate.idCandidate.Equals(user))
                        candidateUsers.Add(user);
                }
            }
            return candidateUsers;//return a list of the full details of the candidates
        }

        public static Event GetEventBySerial(int sn)
        {
            List<Event> ev = EventData.GetAllEvents();

            foreach (var v in ev)
            {
                if (v.sn == sn)
                    return v;
            }
            return null;
        }

        public static Scholarship GetScholarshipBySerial(int sn)
        {
            List<Scholarship> scholarships = ScholarshipData.GetAllScholarships();

            foreach (var s in scholarships)
            {
                if (s.sn == sn)
                    return s;
            }
            return null;
        }

  

    }
}
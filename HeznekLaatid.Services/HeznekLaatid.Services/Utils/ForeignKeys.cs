using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Threading.Tasks;
using System.Collections;
using HeznekLaatid.Services.Entities;

namespace HeznekLaatid.Services
{
    class ForeignKeys
    {
        /// <Summary>
        /// recieve name of a city and return the serial number of this city in the db.
        /// </Summary>
        public static int GetCityNumberByName(String city)
        {
            using (var db = new HeznekDBEntities())
            {
                int cityNum = 0;
                var query = (from cityTbl in db.cityTbl
                             where (cityTbl.city.Equals(city))
                             select cityTbl.sn);
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
                var query = (from academicInstitutTbl in db.academicInstitutTbl
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
                var query = (from studyFieldTbl in db.studyFieldTbl
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
        public static userTbl GetUserConnectedByID(string id)
        {
            List<userTbl> users = UserData.GetAllUsers();
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
        public static List<userTbl> GetAllCandidatesDetails()
        {
            List<generalDetailsActiveCandidate> candidates = UserData.GetCandidatesGenralDetails();
            List<userTbl> allUsers = UserData.GetAllUsers();
            List<userTbl> candidateUsers = new List<userTbl>();

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
    }
}
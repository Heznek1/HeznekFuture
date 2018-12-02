using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using HeznekLaatid.Services.Entities;

namespace HeznekLaatid.Services.Model
{
    public class ScholarshipData
    {
        public static List<Scholarship> GetAllScholarships()
        {
            var db = new HeznekDBEntities();
            List<Scholarship> s = db.Scholarship.ToList();

            return s;
        }

        public static void AddScholarship(Scholarship s)
        {
            var db = new HeznekDBEntities();
            
            db.Scholarship.Add(s);
            db.SaveChanges();         
        }

        public static void RemoveScholarship(int sn)
        {
            List<Scholarship> scholarships = GetAllScholarships();

            foreach (var s in scholarships)
            {
                if (s.sn == sn)
                {
                    var db = new HeznekDBEntities();
                    db.Scholarship.Remove(s);
                    db.SaveChanges();
                }
            }
        }

        public static void UpdateScholarship(Scholarship scholarship)
        {//maybe it won't work because i make the changes on a list and not directly on the db
         
            using (var db = new HeznekDBEntities())
            {
                List<Scholarship> scholarships = GetAllScholarships();

                foreach (var s in scholarships)
                {
                    if (s.sn == scholarship.sn)
                    {
                        s.scholarshipName = scholarship.scholarshipName;
                        s.status = scholarship.status;
                        s.admission = scholarship.admission;
                        s.budgetScholarship = scholarship.budgetScholarship;
                    }
                }

                db.SaveChanges();
            }
        }

        public static Boolean CheckExistingScholarshipInDB(int sn)
        {
            var db = new HeznekDBEntities();
            List<Scholarship> scholarships = db.Scholarship.ToList();

            foreach (var s in scholarships)
            {
                if (s.sn == sn)
                    return true;
            }

            return false;

        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using HeznekLaatid.Services;
using System.Threading.Tasks;
using HeznekLaatid.Services.Entities;

namespace HeznekLaatid.Services
{
    public class Program
    {
        static async Task Main(String[] args)
        {
            var db = new HeznekDBEntities();


            userTbl user = new userTbl()
            {

                id = "307053214",
                firstName = "Mor",
                lastName = "Azran",
                address = "Ben Zvi 10",
                cityNumber = 13,
                status = 2
            };

            UserData.AddUserToUsers(user);

        }
    }
}
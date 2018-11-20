using System;

namespace HeznekLaatid.Core.View_Model
{
    public class UserRegistrationViewModel
    {
        public UserRegistrationViewModel()
        {
            guid = Guid.NewGuid().ToString();
            instance = "heznekservice";
        }

        public string username { get; set; }
        public string email { get; set; }
        public string password { get; set; }
        public string confirm { get; set; }
        public string first_name { get; set; }
        public string last_name { get; set; }
        public string phone { get; set; }
        public string guid { get; }
        public string instance { get; }
    }
}
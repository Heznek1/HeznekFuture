//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace HeznekLaatid.Services.Entities
{
    using System;
    using System.Collections.Generic;
    
    public partial class StudentScolarship
    {
        public string user_id { get; set; }
        public int id { get; set; }
        public Nullable<int> amountOfGivanScolarship { get; set; }
        public Nullable<int> numOfDeposits { get; set; }
        public Nullable<int> currentYear { get; set; }
        public string wasGivenInPast { get; set; }
        public Nullable<int> numOfVolunteerHours { get; set; }
        public Nullable<int> numOfHoursDone { get; set; }
        public string wayOfVolunteer { get; set; }
    
        public virtual Scolarship Scolarship { get; set; }
        public virtual UserProfile UserProfile { get; set; }
    }
}
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
    
    public partial class Deposits_scholarship
    {
        public string idScholar { get; set; }
        public int scholarship_sn { get; set; }
        public System.DateTime deposite_month { get; set; }
        public int amount_of_deposit { get; set; }
    
        public virtual User_Profile User_Profile { get; set; }
        public virtual Scholarship Scholarship { get; set; }
    }
}

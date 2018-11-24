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
    
    public partial class userTbl
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public userTbl()
        {
            this.contactScholarAndCandidate = new HashSet<contactScholarAndCandidate>();
            this.contactScholarAndCandidate1 = new HashSet<contactScholarAndCandidate>();
            this.deposits_scholarship = new HashSet<deposits_scholarship>();
            this.files = new HashSet<files>();
            this.message = new HashSet<message>();
            this.participantInEvent = new HashSet<participantInEvent>();
            this.studentScholarship = new HashSet<studentScholarship>();
            this.studentVolunteer = new HashSet<studentVolunteer>();
        }
    
        public string id { get; set; }
        public string firstName { get; set; }
        public string lastName { get; set; }
        public Nullable<System.DateTime> dateOfBirth { get; set; }
        public int status { get; set; }
        public Nullable<int> yearsInTheProgram { get; set; }
        public string gender { get; set; }
        public string phone { get; set; }
        public string email { get; set; }
        public Nullable<int> cityNumber { get; set; }
        public string address { get; set; }
        public Nullable<int> numOfSiblings { get; set; }
        public Nullable<int> academicParents { get; set; }
        public string school { get; set; }
        public Nullable<int> yearFinishSchool { get; set; }
        public int typeOfService { get; set; }
        public Nullable<int> academicInstitution { get; set; }
        public Nullable<int> studyField { get; set; }
        public Nullable<int> startYear { get; set; }
        public Nullable<int> excpectedCompletionYear { get; set; }
        public string anotherScholarship { get; set; }
        public string educationFunding { get; set; }
        public Nullable<int> typeOfDegree { get; set; }
        public string comments { get; set; }
        public string roleInService { get; set; }
        public Nullable<int> easeOfService { get; set; }
        public Nullable<int> residenceWhileStudiyng { get; set; }
        public string service_description { get; set; }
        public Nullable<double> averageDegree { get; set; }
    
        public virtual academicInstitutTbl academicInstitutTbl { get; set; }
        public virtual cityTbl cityTbl { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<contactScholarAndCandidate> contactScholarAndCandidate { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<contactScholarAndCandidate> contactScholarAndCandidate1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<deposits_scholarship> deposits_scholarship { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<files> files { get; set; }
        public virtual loginAndPermissions loginAndPermissions { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<message> message { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<participantInEvent> participantInEvent { get; set; }
        public virtual scholar_bank_details scholar_bank_details { get; set; }
        public virtual serviceTbl serviceTbl { get; set; }
        public virtual statusTbl statusTbl { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<studentScholarship> studentScholarship { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<studentVolunteer> studentVolunteer { get; set; }
        public virtual studyFieldTbl studyFieldTbl { get; set; }
        public virtual generalDetailsActiveCandidate generalDetailsActiveCandidate { get; set; }
    }
}

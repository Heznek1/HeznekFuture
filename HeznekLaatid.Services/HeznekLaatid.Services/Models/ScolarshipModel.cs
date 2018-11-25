namespace HeznekLaatid.Services.Models
{
    public class ScolarshipModel
    {
        public UserProfile PersonalInformation { get; set; }
        public AcademicInstitution AcademicInstitution { get; set; }
        public Scolarship Scolarship { get; set; }
        public Bank BankInfo { get; set; }
        public StudentVolunteer Volunteer { get; set; }
    }
}
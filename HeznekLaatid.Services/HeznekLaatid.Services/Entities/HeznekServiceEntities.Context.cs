﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class HeznekServiceDbEntities : DbContext
    {
        public HeznekServiceDbEntities()
            : base("name=HeznekServiceDbEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Academic_Institut> Academic_Institut { get; set; }
        public virtual DbSet<Active_Candidate_Info> Active_Candidate_Info { get; set; }
        public virtual DbSet<Bank> Banks { get; set; }
        public virtual DbSet<City> Cities { get; set; }
        public virtual DbSet<Contact_Candidate> Contact_Candidate { get; set; }
        public virtual DbSet<Deposits_scholarship> Deposits_scholarship { get; set; }
        public virtual DbSet<Event> Events { get; set; }
        public virtual DbSet<File> Files { get; set; }
        public virtual DbSet<Group> Groups { get; set; }
        public virtual DbSet<Login_Permissions> Login_Permissions { get; set; }
        public virtual DbSet<Message> Messages { get; set; }
        public virtual DbSet<Organization_Frames_HighSchool> Organization_Frames_HighSchool { get; set; }
        public virtual DbSet<Scholarship> Scholarships { get; set; }
        public virtual DbSet<Scholarship_Student_Bank> Scholarship_Student_Bank { get; set; }
        public virtual DbSet<Service> Services { get; set; }
        public virtual DbSet<Status> Status { get; set; }
        public virtual DbSet<Student_Volunteer> Student_Volunteer { get; set; }
        public virtual DbSet<Students_Scholarship> Students_Scholarship { get; set; }
        public virtual DbSet<Study_Field> Study_Field { get; set; }
        public virtual DbSet<User_Profile> User_Profile { get; set; }
        public virtual DbSet<UserType> UserTypes { get; set; }
    }
}

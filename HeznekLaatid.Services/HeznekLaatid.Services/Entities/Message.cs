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
    
    public partial class Message
    {
        public int id { get; set; }
        public string idSender { get; set; }
        public string idReciever { get; set; }
        public string subject { get; set; }
        public string content { get; set; }
        public Nullable<System.TimeSpan> hour { get; set; }
        public Nullable<System.DateTime> dateOfMessage { get; set; }
    
        public virtual UserProfile UserProfile { get; set; }
        public virtual UserProfile UserProfile1 { get; set; }
    }
}
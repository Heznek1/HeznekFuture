using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Policy;
using System.Web;
using HeznekLaatid.Services.Entities;

namespace HeznekLaatid.Services.Model
{
    public class ParticipantInEventData
    {
        /// <Summary>
        /// get all participants from all the existing events in the data base.
        /// </Summary>
        public static List<Participant_Event> GetAllParticipantsInAllEvent()
        {
            var db = new HeznekDBEntities();
            List<Participant_Event> events_Participants = new List<Participant_Event>();

            events_Participants = db.Participant_Event.ToList();

            return events_Participants;
        }

        /// <Summary>
        /// get the full data of all the particpants from a specific event
        /// </Summary>
        public static List<User_Profile> GetAllParticipantsInEvent(int sn)
        {
            var db = new HeznekDBEntities();
            List<Participant_Event> pe = db.Participant_Event.ToList();
            List<Participant_Event> participantsInEvent = new List<Participant_Event>();

            List<User_Profile> usersInEvent = new List<User_Profile>();

            foreach(var p in pe)
            {
                if (p.sn == sn)
                {
                    participantsInEvent.Add(p);
                    usersInEvent.Add((ForeignKeys.GetUserConnectedByID(p.id_participant)));
                }
            }

            return usersInEvent;
        }

        /// <Summary>
        /// add to the table participantInEvent a row(new object of participantInEvent)
        /// </Summary>
        public static void AddParticipantToEvent(string id, int sn, string review)
        {
            List<Event> events = EventData.GetAllEvents();
            var db = new HeznekDBEntities();          

            foreach (var evnt in events)
            {
                if (evnt.sn == sn)
                {
                    var pe = new Participant_Event()
                    {
                        sn = sn,
                        id_participant = id,
                        review = review

                    };

                    db.Participant_Event.Add(pe);
                    db.SaveChanges();
                    break;// find what i was looking for so get out from loop
                }
             
            }         
        }

        /// <Summary>
        /// remove specific participant from a specific event.
        /// </Summary>
        public static void RemoveParticipantFromEvent(string id, int sn)
        {
            List<Participant_Event> pe = GetAllParticipantsInAllEvent();
            var db = new HeznekDBEntities();

            foreach (var p in pe)
            {
                if (p.sn == sn && p.id_participant == id)
                {
                    db.Participant_Event.Remove(p);
                    db.SaveChanges();
                    break;// find what i was looking for so get out from loop
                }
            }          
        }

        public static void UpdateParticipantInEvent(Participant_Event p_e)
        {
            var db = new HeznekDBEntities();
            List<Participant_Event> pe = db.Participant_Event.ToList();

            foreach (var p in pe)
            {
                if (p.sn == p_e.sn && p.id_participant == p_e.id_participant)
                {
                    p.review = p_e.review;
                    break; //get out from the loop because i find what i needed
                }
            }
        }
    }
}
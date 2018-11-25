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
        public static List<participantInEvent> GetAllParticipantsInAllEvent()
        {
            var db = new HeznekDBEntities();
            List<participantInEvent> events_Participants = new List<participantInEvent>();

            events_Participants = db.participantInEvent.ToList();

            return events_Participants;
        }

        /// <Summary>
        /// get the full data of all the particpants from a specific event
        /// </Summary>
        public static List<userTbl> GetAllParticipantsInEvent(int sn)
        {
            var db = new HeznekDBEntities();
            List<participantInEvent> pe = db.participantInEvent.ToList();
            List<participantInEvent> participantsInEvent = new List<participantInEvent>();

            List<userTbl> usersInEvent = new List<userTbl>();

            foreach(var p in pe)
            {
                if (p.sn == sn)
                {
                    participantsInEvent.Add(p);
                    usersInEvent.Add((ForeignKeys.GetUserConnectedByID(p.participant_id)));
                }
            }

            return usersInEvent;
        }

        /// <Summary>
        /// add to the table participantInEvent a row(new object of participantInEvent)
        /// </Summary>
        public static void AddParticipantToEvent(string id, int sn)
        {
            List<@event> events = EventData.GetAllEvents();
            var db = new HeznekDBEntities();          

            foreach (var evnt in events)
            {
                if (evnt.sn == sn)
                {
                    var pe = new participantInEvent()
                    {
                       sn = sn,
                        participant_id = id,
                        typeOfParticipants = evnt.typeOfParticipants
                       
                    };

                    db.participantInEvent.Add(pe);
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
            List<participantInEvent> pe = GetAllParticipantsInAllEvent();
            var db = new HeznekDBEntities();

            foreach (var p in pe)
            {
                if (p.sn == sn && p.participant_id == id)
                {
                    db.participantInEvent.Remove(p);
                    db.SaveChanges();
                    break;// find what i was looking for so get out from loop
                }
            }          
        }
    }
}
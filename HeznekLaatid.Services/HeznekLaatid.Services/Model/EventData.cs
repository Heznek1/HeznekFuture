using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using  HeznekLaatid.Services.Entities;

namespace HeznekLaatid.Services.Model
{
    public class EventData
    {
        /// <Summary>
        /// gets all the evnts from the list of events
        /// </Summary>
        public static List<@event> GetAllEvents()
            {
                using (var db = new HeznekDBEntities)
                {
                    List<@event> events = db.@event.ToList();
                    return events;
                }
            }

        /// <Summary>
        /// update a specific event in the list of events
        /// </Summary>
        public static void updateEventInList(@event updatedEvent)
         {
             using (var db = new HeznekDBEntities())
             {
                 List<@event> events = GetAllEvents();
                 
                 foreach (var eventIndex in events)
                 {
                     if (eventIndex.sn == updatedEvent.sn)
                     {                        
                         eventIndex.nameEvent = updatedEvent.nameEvent;
                         eventIndex.subjectEvent = updatedEvent.subjectEvent;
                         eventIndex.eventDate = updatedEvent.eventDate;
                         eventIndex.eventHour = updatedEvent.eventHour;
                         eventIndex.eventLocation = updatedEvent.eventLocation;
                         eventIndex.numParticipantsExpected = updatedEvent.numParticipantsExpected;
                         //num of actual participant is calculates from the table ParticipantInEvent
                     }
                 }
             }
         }

        /// <Summary>
        ///  add an event to list of events
        /// </Summary>
        public static void AddEvent(@event eventToAdd)
        {
            using (var db = new HeznekDBEntities())
            {
                db.@event.Add(eventToAdd);
                db.SaveChanges();
            }
        }

        /// <Summary>
        ///  remove an event from list of events
        /// </Summary>
        public static void RemoveEvent(int sn)
        {
            List<@event> events = GetAllEvents();

            foreach (var evnt in events)
            {
                if (evnt.sn == sn)
                {
                    var db = new HeznekDBEntities();
                    db.@event.Remove(evnt);
                    db.SaveChanges();

                }
            }
        }
    }
}
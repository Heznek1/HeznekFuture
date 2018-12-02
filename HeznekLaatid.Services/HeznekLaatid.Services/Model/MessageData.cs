using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using HeznekLaatid.Services.Entities;

namespace HeznekLaatid.Services.Model
{
    public class MessageData
    {
        public static void AddMessage(Message message)
        {
            var db = new HeznekDBEntities();
            
            db.Message.Add(message);
        }

        public static void RemoveMessage(int id)
        {
            var db = new HeznekDBEntities();
            List<Message> messages = db.Message.ToList();

            foreach (var m in messages)
            {
                if (m.idMessage == id)
                {
                    db.Message.Remove(m);
                }
            }
        }

        public static List<Message> WatchAllMessage()
        {
            var db = new HeznekDBEntities();
            List<Message> messages = db.Message.ToList();

            return messages;
        }
    }
}
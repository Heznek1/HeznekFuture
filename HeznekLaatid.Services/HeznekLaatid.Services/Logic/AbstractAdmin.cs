﻿using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Threading.Tasks;
using  HeznekLaatid.Services.Entities;
using HeznekLaatid.Services.Model;
using System.Net.Mail;

namespace HeznekLaatid.Services.Logic
{
    public abstract class AbstractAdmin
    {
 /// <summary>
 /// watch all users that exist in the systen
 /// </summary>
 /// <returns>List of users</returns>
        protected List<User_Profile> WatchAllUsers()
        {
            return UserData.GetAllUsers();
        }
/// <summary>
/// watch in table only the beginners scholarships students
/// </summary>
/// <returns>ArrayList of beginners</returns>
        protected ArrayList WatchScolarshipStudents_beginners()
        {
            return UserData.GetUsersByStatus(1);
        }
/// <summary>
/// watch countinue scholarship students
/// </summary>
/// <returns>Array list of continue scholarships students</returns>
        protected ArrayList WatchScolarshipStudents_continue()
        {
            return UserData.GetUsersByStatus(2);
        }
/// <summary>
/// watch graduate scholarship students - means they don't recieve scholarship anymore
/// </summary>
/// <returns>ArrayList of graduate</returns>
        protected ArrayList WatchScolarshipStudents_graduate()
        {
            return UserData.GetUsersByStatus(3);
        }
/// <summary>
/// watch former scholarships students- don't get scholarship and the manager don't want them to be a part of the organization
/// </summary>
/// <returns></returns>
        protected ArrayList WatchScolarshipStudents_former()
        {
            return UserData.GetUsersByStatus(4);
        }

        protected ArrayList WatchCandidates()
        {
            return UserData.GetUsersByStatus(5);
        }

   
        protected ArrayList WatchUnActiveCandidates_InProcess()
        {
            return UserData.GetUsersByStatus(6);
        }

        protected ArrayList WatchUnActiveCandidates_EndOfTreatment()
        {
            return UserData.GetUsersByStatus(7);
        }



        //get users from status 1-3 -> general method
        protected ArrayList WatchScholarshipsStudents(int num)
        {
            return UserData.GetAllScholarshipsStudents();
        }

        protected List<Event> WatchEvents()
        {
            return EventData.GetAllEvents();
        }

        protected void OpenAnEvent(Event e)
        {
            EventData.AddEvent(e);
        }

        protected void UpdateAnEvent(Event e)
        {
            EventData.UpdateEventInList(e);
        }

        protected void DeleteEvent(int sn)
        {
            EventData.RemoveEvent(sn);
        }


        protected void AddUser(User_Profile user)
        {
            UserData.AddUserToUsers(user);
        }

        protected void UpdateUserProfile(User_Profile user)
        {
            UserData.UpdateUserInList(user);
        }

        protected void RemoveUser(string id)
        {
            UserData.RemoveUserFromList(id);
        }

        /* watch who is coming to a specific event*/
        protected List<User_Profile> WatchParticipantsInEvent(int sn)
        {
            List<User_Profile> pe = ParticipantInEventData.GetAllParticipantsInEvent(sn);
            return pe;
        }

        protected List<Scholarship> WatchAllScholarships()
        {
            return null; //not completed
        }

   
        
        protected void SendMessage(Message m)
        {
            //NOT COMPLETED YET - adrian said it will work only on deploy
            MailMessage mail = new MailMessage(m.idSender, "elinoraz21@gmail.com");//m.idReciever
            SmtpClient client = new SmtpClient();
            client.Port = 25;
            client.DeliveryMethod = SmtpDeliveryMethod.Network;
            client.UseDefaultCredentials = false;
            client.Host = "smtp.gmail.com";
            mail.Subject = m.message_subject;
            mail.Body = m.message_content;
            client.Send(mail);

            MessageData.AddMessage(m);
        }

        protected List<Student_Volunteer> WatchVolunteeringHours(string userId)
        {
            return StudentVolunteerData.GetStudentVolunteerHours(userId);
        }


                                             /*Quries Tables*/

        protected ArrayList WatchUsersByGender_Students(string gender)
        {
            ArrayList users = UserData.GetAllScholarshipsStudents();
            return UserData.GetAllChosenUsersFromTheSameGender(gender, users);

        }

        protected ArrayList WatchUsersByGender_ActiveCadidates(string gender)
        {
            List<Active_Candidate_Info> users = UserData.GetCandidatesGenralDetails();
            ArrayList usersArr = new ArrayList();

            foreach (var user in users)
            {
                usersArr.Add(ForeignKeys.GetUserConnectedByID(user.idCandidate));
            }
            return UserData.GetAllChosenUsersFromTheSameGender(gender,usersArr);
        }

        protected ArrayList WatchUsersByGender_UnActiveCadidates_InProcess(string gender)
        {
            ArrayList users = UserData.GetAllScholarshipsStudents();
            return UserData.GetAllChosenUsersFromTheSameGender(gender, users);
        }

        protected ArrayList WatchUsersByAverege_Students(float average)
        {
            return UserData.GetStudentsHigerAverege(average);
        }

        protected ArrayList WatchUsersByFinishYear_Students(int year)
        {
            return UserData.GetAllStudentsWithSameFinishYear(year);
        }

        protected ArrayList WatchUsersFromSameCity_Students(string city)
        {
            ArrayList users = UserData.GetAllScholarshipsStudents();
           
            return UserData.GetAllChosenUsersFromSpecificCity(users, city);
        }

        protected ArrayList WatchUsersFromSameCity_ActiveCandidates(string city)
        {
            ArrayList users = UserData.GetUsersByStatus(5);

            return UserData.GetAllChosenUsersFromSpecificCity(users, city);
        }

        protected ArrayList WatchStudentsFromSameInstitut_Students(string institut)
        {
            return UserData.GetStudentsFromTheSameInstitution(institut);
        }

        protected ArrayList WatchStudentsFromSameStudyField(string field_name)
        {
            return UserData.GetAllStudentsFromTheSameStudyField(field_name);
        }


    }
}
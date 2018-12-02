using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using HeznekLaatid.Services.Entities;

namespace HeznekLaatid.Services.Interfaces
{
    public interface IUserLogic
    {
  
            Task<userTbl> GetUserProfile(string userId);
            Task UpdateUserProfile(userTbl profile);
            Task AcceptEvent(@event evnt);
            Task DeclinedEvent(@event evnt);
            Task WatchEvents();
            Task WatchCandidates();
            Task UpdateUnCandidateProfile(string candidateId);
            Task UploadFilesToSystem(files file);

    }
}

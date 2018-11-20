using System;
using System.Threading.Tasks;
using HeznekLaatid.Core.View_Model;

namespace HeznekLaatid.TokenService.Helpers.Interfaces
{
    public interface ISubscribersEvents
    {
        Task SendEventToSubscriber(UserRegistrationViewModel user);
    }
}
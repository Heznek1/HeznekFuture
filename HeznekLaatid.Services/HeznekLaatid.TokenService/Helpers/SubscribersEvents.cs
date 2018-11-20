using System;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Threading.Tasks;
using System.Web.Script.Serialization;
using HeznekLaatid.Core.View_Model;
using HeznekLaatid.TokenService.Helpers.Interfaces;

namespace HeznekLaatid.TokenService.Helpers
{
    public class SubscribersEvents : ISubscribersEvents
    {
        public async Task SendEventToSubscriber(UserRegistrationViewModel user)
        {
            var json = new JavaScriptSerializer().Serialize(user);
            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri(this.GetSubscriberUri(user.instance));
                client.DefaultRequestHeaders.Accept.Clear();
                client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));

                await client.PostAsJsonAsync("api/internal/profile", user);
            }
        }

        private string GetSubscriberUri(string subscriber)
        {
            using (var db = new TokeServiceDbEntities())
            {
                var result = db.Subscribers.FirstOrDefault(s => s.name == subscriber)?.url;
                return result ?? throw new InvalidOperationException();
            }
        }
    }
}
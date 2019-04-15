using MyEasyConnect.Models;
using Newtonsoft.Json;
using System;
using System.Configuration;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Web.UI;

namespace AplicationMessages
{
    public partial class _Default : Page
    {
        public CurrentUserRS user;
        public UserPointsRS point;
        public ReminderRS reminder;

        protected void Page_Load(object sender, EventArgs e)
        {
            string uri = ConfigurationManager.AppSettings["current_user"];
            user = GetJson<CurrentUserRS>(null, uri);            
            point = GetJson<UserPointsRS>(null, ConfigurationManager.AppSettings["points"]);
            reminder = GetJson<ReminderRS>(null, ConfigurationManager.AppSettings["reminders"]);
        }

        private static T GetJson<T>(object rq, string endpoint)
        {
            using (HttpClient client = new HttpClient())
            {
                client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));

                using (HttpRequestMessage request = new HttpRequestMessage(HttpMethod.Post, new Uri(endpoint)))
                {
                    request.Content = new StringContent(JsonConvert.SerializeObject(rq), Encoding.UTF8, "application/json");

                    using (HttpResponseMessage response = client.SendAsync(request).Result)
                    using (HttpContent respContent = response.Content)
                    {
                        string jsonContent = respContent.ReadAsStringAsync().Result;

                        return JsonConvert.DeserializeObject<T>(jsonContent);
                    }
                }
            }
        }
    }
}
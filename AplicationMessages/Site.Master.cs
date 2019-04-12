using MyEasyConnect.Models;
using Newtonsoft.Json;
using System;
using System.Configuration;
using System.Text;
using System.Web.UI;
using System.Net.Http;
using System.Net.Http.Headers;

namespace AplicationMessages
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            JsonConvert.DeserializeObject<GetMessagesRS>(GetJson(null, ConfigurationManager.ConnectionStrings["default"].ConnectionString));
        }

        private static string GetJson(object rq, string endpoint)
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

                        return jsonContent;
                    }
                }
            }
        }
    }
}
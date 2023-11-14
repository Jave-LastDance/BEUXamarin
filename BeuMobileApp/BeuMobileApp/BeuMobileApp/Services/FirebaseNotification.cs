using BeuMobileApp.Models;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;

namespace BeuMobileApp.Services
{
    public class FirebaseNotification
    {
        private readonly HttpClient client;

        public FirebaseNotification()
        {
            client = new HttpClient
            {
                BaseAddress = new Uri("http://190.156.243.87:8888/notificacionPUJ/")
            };
            client.DefaultRequestHeaders.Accept.Clear();
            client.DefaultRequestHeaders.Add("Accept", "application/json");
        }

        public async Task<string> PostBeacon(NotificationFirebase notificationFirebase)
        {
            string evn = null;
            try
            {
                string json = JsonConvert.SerializeObject(notificationFirebase);
                StringContent jsoncontent = new StringContent(json, Encoding.UTF8, "application/json");
                HttpResponseMessage response = await client.PostAsync("up", jsoncontent);
                if (response.IsSuccessStatusCode)
                {

                    string content = await response.Content.ReadAsStringAsync();
                    evn = JsonConvert.DeserializeObject<string>(content);
                }
                else
                {
                    Console.WriteLine("Error al obtener FIREBASEEEEE " + response.StatusCode);
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error al obtener FIREBASEEEEE: " + ex.Message);
            }

            return evn;
        }

    }
}

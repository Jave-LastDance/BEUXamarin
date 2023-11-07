using BeuMobileApp.Models;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;

namespace BeuMobileApp.Services
{
    public class NotificationService
    {
        private readonly HttpClient client;

        public NotificationService()
        {
            client = new HttpClient
            {
                BaseAddress = new Uri("http://192.168.0.6:8085/notificationsPUJ/")
            };
            client.DefaultRequestHeaders.Accept.Clear();
            client.DefaultRequestHeaders.Add("Accept", "application/json");
        }
        public async Task<List<Notification>> GetNotifications(int idUser)
        {
            List<Notification> result = new List<Notification>();

            try
            {
                

                HttpResponseMessage response = await client.GetAsync("notifications/user/"+ idUser);
                if (response.IsSuccessStatusCode)
                {
                  
                    string content = await response.Content.ReadAsStringAsync();
                   
                    result = JsonConvert.DeserializeObject<List<Notification>>(content);
                }
                else
                {
                    Console.WriteLine("Error al obtener notificaciones: " + response.StatusCode);
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error al obtener notificaciones: " + ex.Message);
            }

            return result;
        }

        public async Task<Notification> GetNotification(int IdNot)
        {
            Notification ntf = null;
            try
            {

                HttpResponseMessage response = await client.GetAsync("notification/" + IdNot);
                if (response.IsSuccessStatusCode)
                {
                    
                    string content = await response.Content.ReadAsStringAsync();
                    
                    ntf = JsonConvert.DeserializeObject<Notification>(content);
                }
                else
                {
                    Console.WriteLine("Error al obtener notificacion: " + response.StatusCode);
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error al obtener notificacion: " + ex.Message);
            }

            return ntf;
        }

    }
}

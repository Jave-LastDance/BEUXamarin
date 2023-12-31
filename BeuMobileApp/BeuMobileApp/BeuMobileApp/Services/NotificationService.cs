﻿using BeuMobileApp.Models;
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
                BaseAddress = new Uri("http://190.156.243.87:8888/notificacionPUJ/")
            };
            client.DefaultRequestHeaders.Accept.Clear();
            client.DefaultRequestHeaders.Add("Accept", "application/json");
        }
        public async Task<List<Notification>> GetNotifications(int idUser)
        {
            List<Notification> result = new List<Notification>();

            try
            {
                

                HttpResponseMessage response = await client.GetAsync("notificaciones/" + idUser);
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

                HttpResponseMessage response = await client.GetAsync("notificacion/" + IdNot);
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
        public async Task<string> DeleteNotification(int id)
        {
            string result = null;

            try
            {
                
                HttpResponseMessage response = await client.DeleteAsync("notificacion/" + id);

                if (response.IsSuccessStatusCode)
                {
                    string content = await response.Content.ReadAsStringAsync();
                    result = content;
                }
                else
                {
                    Console.WriteLine("Error al eliminar notificacion: " + response.StatusCode);
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error al eliminar notificacion: " + ex.Message);
            }

            return result;

        }

    }
}

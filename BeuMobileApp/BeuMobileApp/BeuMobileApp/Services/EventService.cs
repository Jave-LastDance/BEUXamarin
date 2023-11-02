using BeuMobileApp.Models;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;

namespace BeuMobileApp.Services
{
    public class EventService
    {
        private readonly HttpClient client;

        public EventService()
        {
            client = new HttpClient
            {
                BaseAddress = new Uri("http://192.168.56.1:8081/eventosPUJ/")
            };
            client.DefaultRequestHeaders.Accept.Clear();
            client.DefaultRequestHeaders.Add("Accept", "application/json");
        }

        public async Task<List<Event>> GetEvents()
        {
            List<Event> result = new List<Event>();

            try
            {
                Console.WriteLine("Haciendo solicitud a la API..."); 

                HttpResponseMessage response = await client.GetAsync("eventos/activos");
                if (response.IsSuccessStatusCode)
                {
                    Console.WriteLine("Respuesta exitosa de la API."); 
                    string content = await response.Content.ReadAsStringAsync();
                    Console.WriteLine("Contenido de la respuesta de la API:");
                    Console.WriteLine(content);
                    result = JsonConvert.DeserializeObject<List<Event>>(content);
                }
                else
                {
                    Console.WriteLine("Error al obtener eventos: " + response.StatusCode);
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error al obtener eventos: " + ex.Message);
            }

            return result;
        }


    }
}

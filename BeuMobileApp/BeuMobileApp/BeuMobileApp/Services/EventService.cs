using BeuMobileApp.Models;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Net;
using System.Net.Http;
using System.Numerics;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Essentials;

namespace BeuMobileApp.Services
{
    public class EventService
    {
        private readonly HttpClient client;

        public EventService()
        {
            client = new HttpClient
            {
                BaseAddress = new Uri("http://190.156.243.87:8888/eventosPUJ/")
            };
            client.DefaultRequestHeaders.Accept.Clear();
            client.DefaultRequestHeaders.Add("Accept", "application/json");
        }

        public async Task<List<Event>> GetEvents()
        {
            List<Event> result = new List<Event>();

            try
            {
              
                HttpResponseMessage response = await client.GetAsync("eventos/activos");
                if (response.IsSuccessStatusCode)
                {
         
                    string content = await response.Content.ReadAsStringAsync();
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

        public async Task<Event> GetEvent(int Id) { 
                Event evn=null;
                try
                {
        
                    HttpResponseMessage response = await client.GetAsync("evento/"+Id);
                    if (response.IsSuccessStatusCode)
                    {
                     
                        string content = await response.Content.ReadAsStringAsync();
                        evn = JsonConvert.DeserializeObject<Event>(content);
                    }
                    else
                    {
                        Console.WriteLine("Error al obtener evento: " + response.StatusCode);
                    }
                }
                catch (Exception ex)
                {
                    Console.WriteLine("Error al obtener evento: " + ex.Message);
                }

            return evn;
        }

        public async Task<string> PostReview(Review newReview)
        {
            string result = null;

            try
            {
                
                string json = JsonConvert.SerializeObject(newReview);
                StringContent jsoncontent = new StringContent(json, Encoding.UTF8, "application/json");
                HttpResponseMessage response = await client.PostAsync("evento/comentario", jsoncontent);
                if (response.IsSuccessStatusCode)
                {
                    
                    string content = await response.Content.ReadAsStringAsync();
                    result = content;

                }
                else if (response.StatusCode == HttpStatusCode.BadRequest)
                {
                    result = "Existe";
                }
                else if (response.StatusCode == HttpStatusCode.InternalServerError)
                {
                    
                    Console.WriteLine("Error al agregar el ranking. Error interno del servidor.");
                }
                else
                {
                    Console.WriteLine("Error al agregar comentario: " + response.StatusCode);
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error al agregar comentario: " + ex.Message);
            }

            return result;

        }

        public async Task<string> PutReview(Review updateReview)
        {
            string result = null;

            try
            {
               
                string json = JsonConvert.SerializeObject(updateReview);
                StringContent jsoncontent = new StringContent(json, Encoding.UTF8, "application/json");
                HttpResponseMessage response = await client.PutAsync("evento/comentario", jsoncontent);
                if (response.IsSuccessStatusCode)
                {

                    string content = await response.Content.ReadAsStringAsync();
                    result = content;

                }
                
                else
                {
                    Console.WriteLine("Error al actualizar comentario: " + response.StatusCode);
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error al actualizar comentario: " + ex.Message);
            }

            return result;
        }

        public async Task<Rating> GetRating(int IdUs, int IdEvent)
        {
            Rating rtn = null;
            try
            {

                HttpResponseMessage response = await client.GetAsync("califacion/evento/usuario/" +IdUs+"/"+IdEvent);
                if (response.IsSuccessStatusCode)
                {
                  
                    string content = await response.Content.ReadAsStringAsync();
                    rtn = JsonConvert.DeserializeObject<Rating>(content);
                }
                else if (response.StatusCode == HttpStatusCode.BadRequest)
                {
                    rtn = null;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error al obtener rating: " + ex.Message);
            }

            return rtn;
        }


        public async Task<string> PostRating(Rating newRating)
        {
            string result = null;

            try
            {
               
                string json = JsonConvert.SerializeObject(newRating);
                StringContent jsoncontent = new StringContent(json, Encoding.UTF8, "application/json");
                HttpResponseMessage response = await client.PostAsync("evento/rating", jsoncontent);
                if (response.IsSuccessStatusCode)
                {

                    string content = await response.Content.ReadAsStringAsync();
                    result = content;

                }
                else if (response.StatusCode == HttpStatusCode.BadRequest)
                {
                    result = "Existe";
                }
                else if (response.StatusCode == HttpStatusCode.InternalServerError)
                {

                    Console.WriteLine("Error al agregar el ranking. Error interno del servidor.");
                }
                else
                {
                    Console.WriteLine("Error al agregar el ranking: " + response.StatusCode);
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error al agregar el ranking: " + ex.Message);
            }

            return result;

        }


        public async Task<string> PutRating(Rating updateRating)
        {
            string result = null;

            try
            {
               
                string json = JsonConvert.SerializeObject(updateRating);
                StringContent jsoncontent = new StringContent(json, Encoding.UTF8, "application/json");
                HttpResponseMessage response = await client.PutAsync("rating", jsoncontent);
                if (response.IsSuccessStatusCode)
                {
                    
                    string content = await response.Content.ReadAsStringAsync();
                    result = content;

                }
                else
                {
                    Console.WriteLine("Error al actualizar  ranking: " + response.StatusCode);
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error al actualizar ranking: " + ex.Message);
            }

            return result;

        }


        public async Task<List<Activity>> GetActivities(int idEvnt)
        {
            List<Activity> result = new List<Activity>();

            try
            {

                HttpResponseMessage response = await client.GetAsync("actividad/" + idEvnt);
                if (response.IsSuccessStatusCode)
                {

                    string content = await response.Content.ReadAsStringAsync();
                    result = JsonConvert.DeserializeObject<List<Activity>>(content);
                }
                else
                {
                    Console.WriteLine("Error al obtener actividades: " + response.StatusCode);
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error al obtener actividades: " + ex.Message);
            }

            return result;
        }

    }

}



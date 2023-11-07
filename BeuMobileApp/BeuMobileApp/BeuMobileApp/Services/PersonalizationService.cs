using BeuMobileApp.Models;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;

namespace BeuMobileApp.Services
{
    public class PersonalizationService
    {
        private readonly HttpClient client;

        public PersonalizationService()
        {
            client = new HttpClient
            {
                BaseAddress = new Uri("http://192.168.0.6:8082/personalizacionPUJ/")
            };
            client.DefaultRequestHeaders.Accept.Clear();
            client.DefaultRequestHeaders.Add("Accept", "application/json");
        }

        public async Task<List<Preference>> GetPreference (string nameCenter)
        {
          List<Preference> result = new List<Preference>();

           try
           {
                 

                 HttpResponseMessage response = await client.GetAsync("preferencias/"+nameCenter);
                 if (response.IsSuccessStatusCode)
                  {
                     
                     string content = await response.Content.ReadAsStringAsync();
                    
                     result = JsonConvert.DeserializeObject<List<Preference>>(content);
                 }
                 else
                 {
                     Console.WriteLine("Error al obtener preferencias: " + response.StatusCode);
                 }
           }
           catch (Exception ex)
           {
                 Console.WriteLine("Error al obtener preferencias: " + ex.Message);
           }

            return result;
        }

        public async Task <string> PostUserPreference(List<PreferenceUser> UserPref)
        {

            string result = null;
            
            try
            {
                
                string json = JsonConvert.SerializeObject(UserPref);
                StringContent jsoncontent = new StringContent(json, Encoding.UTF8, "application/json");
                HttpResponseMessage response = await client.PostAsync("usuario/preferencias", jsoncontent);
                if (response.IsSuccessStatusCode)
                {
                    
                    string content = await response.Content.ReadAsStringAsync();
                 
                    result= content;

                }
                else
                {
                    Console.WriteLine("Error al agregar las preferencias: " + response.StatusCode);
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error al agregar preferencias: " + ex.Message);
            }

            return result;
        }


        public async Task<string> PostUserPriority(List<PriorityUser> UserPrior)
        {

            string result = null;

            try
            {
               
                string json = JsonConvert.SerializeObject(UserPrior);
                StringContent jsoncontent = new StringContent(json, Encoding.UTF8, "application/json");
                HttpResponseMessage response = await client.PostAsync("prioridad/usuario", jsoncontent);
                if (response.IsSuccessStatusCode)
                {
                    
                    string content = await response.Content.ReadAsStringAsync();
                    
                    result = content;

                }
                else
                {
                    Console.WriteLine("Error al agregar las prioridades: " + response.StatusCode);
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error al agregar prioridades: " + ex.Message);
            }

            return result;
        }
    }
}

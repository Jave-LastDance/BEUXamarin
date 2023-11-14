using BeuMobileApp.Models;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;

namespace BeuMobileApp.Services
{
    public class BeaconService
    {
        private readonly HttpClient client;

        public BeaconService()
        {
            client = new HttpClient
            {
                BaseAddress = new Uri("http://190.156.243.87:8888/beaconPUJ/")
            };
            client.DefaultRequestHeaders.Accept.Clear();
            client.DefaultRequestHeaders.Add("Accept", "application/json");
        }

        public async Task<BeaconBEU> GetBeacon(string Id)
        {
            BeaconBEU evn = null;
            try
            {

                HttpResponseMessage response = await client.GetAsync("id?beaconId=" + Id);
                if (response.IsSuccessStatusCode)
                {

                    string content = await response.Content.ReadAsStringAsync();
                    evn = JsonConvert.DeserializeObject<BeaconBEU>(content);
                    Console.WriteLine("Deserialized BeaconBEU Object: " + JsonConvert.SerializeObject(evn));
                
            }
                else
                {
                    Console.WriteLine("Error al obtener beacon: " + response.StatusCode);
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error al obtener beacon: " + ex.Message);
            }

            return evn;
        }

    }
}

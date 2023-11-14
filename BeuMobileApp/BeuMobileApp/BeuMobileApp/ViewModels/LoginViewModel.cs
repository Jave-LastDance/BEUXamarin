using BeuMobileApp.Models;
using BeuMobileApp.Services;
using BeuMobileApp.Views;
using System;
using System.Collections.Generic;
using System.Net;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using Xamarin.Forms;

namespace BeuMobileApp.ViewModels
{
    public class LoginViewModel : BaseViewModel
    {
        private string username;
        private string password;
        private readonly PersonalizationService personalizationService;
        public string Username
        {
            get { return username; }
            set { SetProperty(ref username, value); }
        }

        public string Password
        {
            get { return password; }
            set { SetProperty(ref password, value); }
        }

        public Command LoginCommand { get; }
        public Command CJFDCommand { get; }
        public void OnAppearing()
        {
            IsBusy = true;
        }

        public LoginViewModel()
        {
            LoginCommand = new Command(OnLoginClicked);
            CJFDCommand = new Command(OnCJFDClicked);
            personalizationService = new PersonalizationService();
        }

        private async void OnLoginClicked(object obj)
        {
            try
            {

                if (string.IsNullOrWhiteSpace(Username) || string.IsNullOrWhiteSpace(Password))
                {
                    
                    await Application.Current.MainPage.DisplayAlert("Error", "Por favor, ingrese nombre de usuario y contraseña.", "OK");
                    return;
                }
                string apiUrl = "http://190.156.243.87:8888/auth/login";
                string jsonData = $"{{\"username\":\"{Username}\", \"password\":\"{Password}\"}}";

                using (HttpClient client = new HttpClient())
                {
                    StringContent content = new StringContent(jsonData, Encoding.UTF8, "application/json");
                    HttpResponseMessage response = await client.PostAsync(apiUrl, content);

                    if (response.IsSuccessStatusCode)
                    {
                        string responseBody = await response.Content.ReadAsStringAsync();
                        UserResponse userResponse = Newtonsoft.Json.JsonConvert.DeserializeObject<UserResponse>(responseBody);
                        
                        if (userResponse != null && userResponse.id > 0)
                        {
                            App.CurrentUser = userResponse;

                            UserSession.IdUsuario = userResponse.id;
                           
                            var pref = await personalizationService.GetPreferencesUser(UserSession.IdUsuario);

                            if (pref != null && pref.Count > 0)
                            {
                                App.Current.MainPage = new AppShell();
                            }
                            else
                            {
                                OnCJFDClicked(null);
                            }


                        }
                        
                    }
                    Console.WriteLine("CODIGO RTA: " + response.StatusCode);

                    if (response.StatusCode == HttpStatusCode.InternalServerError)
                    {
                        await Application.Current.MainPage.DisplayAlert("Error", "Credenciales incorrectas. Por favor, inténtelo de nuevo.", "OK");
                    }
                    else
                    {
                       
                        
                       
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error: {ex.Message}");
            }
        }
        private async void OnCJFDClicked(object obj)
        {
            App.Current.MainPage = new CJFDView();
        }
    }
    
}

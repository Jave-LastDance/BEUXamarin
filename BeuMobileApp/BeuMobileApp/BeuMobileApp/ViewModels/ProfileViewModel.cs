using BeuMobileApp.Models;
using BeuMobileApp.Services;
using BeuMobileApp.Views;
using System;
using System.Collections.Generic;
using System.Text;
using Xamarin.Forms;

namespace BeuMobileApp.ViewModels
{
    public class ProfileViewModel
    {
        public Command LoginCommand { get; }
        public Command CJFDCommand { get; }

        private readonly PersonalizationService personalizationService;
        public UserResponse CurrentUser => App.CurrentUser;

        public ProfileViewModel()
        {
            LoginCommand = new Command(OnLoginClicked);
            CJFDCommand = new Command(OnCJFD);
            personalizationService = new PersonalizationService();
        }

        private async void OnLoginClicked(object obj)
        {

            // Prefixing with `//` switches to a different navigation stack instead of pushing to the active one
            await Shell.Current.GoToAsync($"//{nameof(EventView)}");
        }
        private async void OnCJFD(object obj)
        {
            int userId = CurrentUser.id;
            Console.WriteLine($"ID USUARIO: {userId}");
            var pref = await personalizationService.GetPreferencesUser(userId);

             if (pref != null && pref.Count > 0)
             {
                await personalizationService.DeleteUserPreferences(userId);
             }
             else
             {
                 Console.WriteLine("No se obtuvieron preferencias para el usuario.");
             }

            await Shell.Current.GoToAsync($"{nameof(CJFDView)}");
        }
        
    }
}

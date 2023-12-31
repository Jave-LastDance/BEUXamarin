﻿using BeuMobileApp.Models;
using BeuMobileApp.Services;
using BeuMobileApp.Views;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using Xamarin.Forms;

namespace BeuMobileApp.ViewModels
{
    public class CPSFJViewModel: BaseViewModel
    {
        public int IdUser { get; set; }
        public ObservableCollection<Preference> AvailableServices { get; set; }
        public ObservableCollection<Preference> SelectedPreferences { get; set; }
        public ICommand SaveCommand { get; set; }
        public ICommand LoadPreferencesCommand { get; }

        private readonly PersonalizationService personalizationService;
        public UserResponse CurrentUser => App.CurrentUser;
        public CPSFJViewModel() {
            IdUser = CurrentUser.id;
            personalizationService = new PersonalizationService();
            AvailableServices = new ObservableCollection<Preference>();
            LoadPreferencesCommand = new Command(async () => await LoadPreferences());
            SelectedPreferences = new ObservableCollection<Preference>();
            SaveCommand = new Command(() => SavePreferences());

        }

        public void OnAppearing()
        {
            IsBusy = true;
        }

        public async Task LoadPreferences()
        {
            IsBusy = true;

            AvailableServices.Clear();

            
            try
            {
                var pref = await personalizationService.GetPreference("CPSFJ");

                if (pref != null)
                {
                    foreach (var prf in pref)
                    {
                        AvailableServices.Add(prf);
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error al cargar preferencias: " + ex.Message);
            }

            finally
            {
                IsBusy = false;
            }
        }

        private async void SavePreferences()
        {
            var selectedPreferences = SelectedPreferences;

            if (selectedPreferences != null && selectedPreferences.Count > 0)
            {

                List<PreferenceUser> selectedPrefUsers = new List<PreferenceUser>();
               

                foreach (var preference in selectedPreferences)
                {
                    PreferenceUser prefUser = new PreferenceUser
                    {
                        id_user = IdUser,
                        preferenceid_preference = preference.Id_preference
                    };

                    selectedPrefUsers.Add(prefUser);
                }
                string result = await personalizationService.PostUserPreference(selectedPrefUsers);

                if (result != null)
                {
                    Console.WriteLine("Preferencias agregadas exitosamente");
                }
                else
                {
                    Console.WriteLine("Error al agregar preferencias.");
                }

            }
            else
            {
                Console.WriteLine("Ningún elemento seleccionado.");
            }
            //await Shell.Current.GoToAsync($"{nameof(CAPSView)}");
            App.Current.MainPage = new CAPSView();
        }
    }
}

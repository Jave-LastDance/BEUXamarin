using BeuMobileApp.Models;
using BeuMobileApp.Services;
using BeuMobileApp.Views;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Windows.Input;
using Xamarin.Forms;

namespace BeuMobileApp.ViewModels
{
    public class PriorityViewModel:INotifyPropertyChanged
    {
        public int IdUser { get; set; }
        public ICommand SaveCommand { get; set; }

        private readonly PersonalizationService personalizationService;

        private string location;
        public string Location
        {
            get => location;
            set
            {
                if (location != value)
                {
                    location = value;
                    OnPropertyChanged(nameof(Location));
                }
            }
        }

        private string program;
        public string Program
        {
            get => program;
            set
            {
                if (program != value)
                {
                    program = value;
                    OnPropertyChanged(nameof(Program));
                }
            }
        }

        private string preference;
        public string Preference
        {
            get => preference;
            set
            {
                if (preference != value)
                {
                    preference = value;
                    OnPropertyChanged(nameof(Preference));
                }
            }
        }

        private string schedule;
        public string Schedule
        {
            get => schedule;
            set
            {
                if (schedule != value)
                {
                    schedule = value;
                    OnPropertyChanged(nameof(Schedule));
                }
            }
        }



        public PriorityViewModel() {
            IdUser = UserSession.IdUsuario;
            personalizationService = new PersonalizationService();
            SaveCommand = new Command(() => SavePreferences());
        }
        private async void SavePreferences()
        {

            var preferenceValues = new List<string> { Location, Program, Preference, Schedule };

            if (preferenceValues.All(p => !string.IsNullOrEmpty(p) && int.TryParse(p, out int _)))
            {
                var preferenceNumbers = preferenceValues.Select(int.Parse).ToList();

                if (preferenceNumbers.All(p => p >= 1 && p <= 4) && preferenceNumbers.Distinct().Count() == preferenceValues.Count)
                {
           
                    string message = $"Ubicación: {Location}\nPrograma: {Program}\nPreferencias: {Preference}\nHorario: {Schedule}";
                    
               
                    var priorityUsers = new List<PriorityUser>
                {
                    new PriorityUser { id_user = IdUser, importance = Convert.ToInt32(Location), priorityrule = "Ubicacion" },
                    new PriorityUser { id_user = IdUser, importance = Convert.ToInt32(Program), priorityrule = "Programa" },
                    new PriorityUser { id_user = IdUser, importance = Convert.ToInt32(Preference), priorityrule = "Preferencias" },
                    new PriorityUser { id_user = IdUser, importance = Convert.ToInt32(Schedule), priorityrule = "Horario" }
                };

                    var result = await personalizationService.PostUserPriority(priorityUsers);


                   await Application.Current.MainPage.DisplayAlert("Prioridad Guardada", message, "OK");

                    await Shell.Current.GoToAsync($"//{nameof(EventView)}");
                }
                else
                {
                    
                    await Application.Current.MainPage.DisplayAlert("Error", "Los números deben ser únicos y estar en el rango de 1 a 4", "OK");
                }
            }
            else
            {

                await Application.Current.MainPage.DisplayAlert("Error", "Ingrese valores numéricos en las preferencias", "OK");
            }
        }

        

        public event PropertyChangedEventHandler PropertyChanged;

        protected virtual void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}

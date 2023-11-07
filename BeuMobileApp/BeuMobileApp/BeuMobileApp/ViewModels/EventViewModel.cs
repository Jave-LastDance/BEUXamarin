using BeuMobileApp.Models;
using BeuMobileApp.Services;
using BeuMobileApp.Views;
using System;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Diagnostics;
using System.Threading.Tasks;
using System.Windows.Input;
using Xamarin.Forms;
using BeuMobileApp.ViewModels;

namespace BeuMobileApp.ViewModels
{
    public class EventViewModel : BaseViewModel
    {

        private readonly EventService eventService;
        public ObservableCollection<EventTitleViewModel> Events { get; }


        public ICommand LoadEventsCommand { get; }


        public EventViewModel()
        {
            eventService = new EventService();
            Events = new ObservableCollection<EventTitleViewModel>();
            LoadEventsCommand = new Command(async () => await LoadEvents());
        }
        public void OnAppearing()
        {
            IsBusy = true;
        }


        public async Task LoadEvents()
        {
            IsBusy = true;

            Events.Clear();

            try
            {
                var events = await eventService.GetEvents();

                if (events != null)
                {

                  
                    foreach (var evnt in events)
                    {
                       
                        var eventTitleViewModel = new EventTitleViewModel(evnt);
                        Events.Add(eventTitleViewModel);
                       
                    }

                }
            }
            catch (Exception ex)
            {

                Console.WriteLine("Error al cargar eventos: " + ex.Message);
            }
            finally
            {
                IsBusy = false;
            }
        }




    }
}

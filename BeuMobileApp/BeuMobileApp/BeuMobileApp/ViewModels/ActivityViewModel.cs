using BeuMobileApp.Models;
using BeuMobileApp.Services;
using BeuMobileApp.TitleViews;
using System;
using System.Collections.ObjectModel;
using System.Windows.Input;
using Xamarin.Forms;

namespace BeuMobileApp.ViewModels
{
    [QueryProperty(nameof(EventIndex), nameof(EventIndex))]
    public class ActivityViewModel : BaseViewModel
    {
        private int _eventId;
        public int EventIndex
        {
            get => _eventId;
            set
            {
                if (_eventId != value)
                {
                    _eventId = value;
                    
                }
            }
        }

        public ObservableCollection<ActivityTitleViewModel> Activities { get; }

        private readonly EventService eventService;

        public ICommand LoadActivitiesCommand { get; }

        public ActivityViewModel()
        {
            eventService = new EventService();
            Activities = new ObservableCollection<ActivityTitleViewModel>();
            LoadActivitiesCommand = new Command(RefreshActivities);
        }

        public void OnAppearing()
        {
            // You might add some logic when the page appears
            IsBusy = true;
        }

        async void LoadActivities(int eventId)
        {
            IsBusy = true;
            Activities.Clear();

            try
            {
                var activities = await eventService.GetActivities(eventId);
                if (activities != null)
                {
                    foreach (var act in activities)
                    {
                        var activityTitleViewModel = new ActivityTitleViewModel(act);
                        Activities.Add(activityTitleViewModel);
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error loading activities: " + ex.Message);
            }
            finally
            {
                IsBusy = false;
            }
        }

        private void RefreshActivities()
        {
            // Re-load activities upon refresh
            LoadActivities(_eventId);
        }
    }
}

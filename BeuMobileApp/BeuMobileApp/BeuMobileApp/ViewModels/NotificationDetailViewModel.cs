using BeuMobileApp.Models;
using BeuMobileApp.Services;
using BeuMobileApp.Views;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace BeuMobileApp.ViewModels
{
    [QueryProperty(nameof(NotificationId), nameof(NotificationId))]
    public class NotificationDetailViewModel : BaseViewModel
    {
        public string Image { get; set; }
        public string Title { get; set; }
        public string TimeStamp { get; set; }
        public string Body { get; set; }
        public int IdEvent { get; set; }


        public string EventName { get; set; }
        public string EventDescription { get; set; }
        public string EventImageUrl { get; set; }

        public string EventCenter { get; set; }
        public string[] EventTags { get; set; }

        private readonly EventService eventService;

        private readonly NotificationService notificationService;

        private int notificationId;


        public Command EventTapCommand { get; }

        public int NotificationId
        {
            get => notificationId;
            set
            {
                if (notificationId != value)
                {
                    notificationId = value;
                    Console.WriteLine("Me llega: " + notificationId);
                    LoadNotificationData(notificationId);
                }
            }
        }

        public NotificationDetailViewModel()
        {
            eventService = new EventService();
            notificationService = new NotificationService();
            EventTapCommand = new Command(EventTapCallback);
        }
        async void LoadNotificationData(int notificationId)
        {
            var selectedNotification = await notificationService.GetNotification(notificationId);

            if (selectedNotification != null)
            {
                Title = selectedNotification.Title;
                Body = selectedNotification.Body;
                Image = selectedNotification.Image;
                TimeStamp = selectedNotification.TimeStamp;
                IdEvent = selectedNotification.Event_id;

                await LoadEventData(IdEvent);
            }


        }

        public async Task LoadEventData(int eventId)
        {
            var selectedEvent = await GetEvent(eventId);
            if (selectedEvent != null)
            {
                EventName = selectedEvent.Name;
                EventDescription = selectedEvent.Description;
                EventImageUrl = selectedEvent.Url_poster;
                EventTags = SplitTags(selectedEvent.Tags);
                EventCenter = selectedEvent.Name_center;
            }
        }

        public async Task<Event> GetEvent(int eventId)
        {
            Console.WriteLine("ID EVENTO: " + eventId);
            var evt = await eventService.GetEvent(eventId);
            return evt;
        }

        private string[] SplitTags(string tags)
        {
            char[] delimiters = { ',' };
            return tags.Split(delimiters, StringSplitOptions.RemoveEmptyEntries);
        }

        async void EventTapCallback()
        {
            await Shell.Current.GoToAsync($"{nameof(EventDetailView)}" + $"?{nameof(EventDetailViewModel.EventIndex)}={IdEvent}");
        }
    }
}

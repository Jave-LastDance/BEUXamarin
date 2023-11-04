using BeuMobileApp.Models;
using BeuMobileApp.Services;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;

using Xamarin.Forms;

namespace BeuMobileApp.ViewModels
{
    [QueryProperty(nameof(EventIndex), nameof(EventIndex))]
    public class EventDetailViewModel : BaseViewModel
    {
        public int EventId;

        private readonly EventService eventService;
        public ObservableCollection<EventTitleViewModel> Events { get; }

        public string[] split = { "," };
        public string Name { get; set; }
        public string Description { get; set; }
        public string[] Tags { get; set; }
        public string Requirements { get; set; }
        public int Duration { get; set; }
        public string Location { get; set; }
        public string DateStart { get; set; }
        public string DateEnd { get; set; }
        public string TimeStart { get; set; }
        public string TimeEnd { get; set; }
        public int? PromRating { get; set; }
        public string Mode { get; set; }
        public float? Price { get; set; }
        public string UrlEvent { get; set; }
        public string UrlPhotos { get; set; }
        public string HeadEmail { get; set; }

        public string CenterName { get; set; }
        public System.Collections.Generic.List<Review> Reviews { get; set; }

        public string CenterImage { get; set; }



        public Command ImageChangedCommand { get; }
        public Command PhotoCommand { get; }

        public Command EventUrl { get; }

 
        public int EventIndex
        {
            get => EventId;
            set
            {
                if (EventId != value)
                {
                    EventId = value;                   
                    LoadEventData(EventId);
                }
            }
        }



        public EventDetailViewModel()
        {

            eventService = new EventService();
            Events = new ObservableCollection<EventTitleViewModel>();

        }

        async void LoadEventData(int EventIndex)
        {
            Console.WriteLine("Este es el indice en DeatilEvents: " + EventIndex);
            var selectedEvent = await eventService.GetEvent(EventIndex);
            if (selectedEvent != null)
            {
                Name = selectedEvent.Name;
                Description = selectedEvent.Description;
                Requirements = selectedEvent.Requirements;
                Location = selectedEvent.Location;
                DateStart = selectedEvent.Date_start;
                DateEnd = selectedEvent.Date_end;
                TimeStart = selectedEvent.Time_start;
                TimeEnd = selectedEvent.Time_end;
                PromRating = selectedEvent.Prom_rating;
                Mode = selectedEvent.Mode;
                UrlEvent = selectedEvent.Url_event;
                HeadEmail = selectedEvent.Head_email;
                CenterName = selectedEvent.Name_center;
                Tags = SplitTags(selectedEvent.Tags);
                UrlPhotos = selectedEvent.Url_photos;
                CenterImage = CenterName + "Logo.png";
                Reviews = selectedEvent.Reviews;
            }

        }

        private string[] SplitTags(string tags)
        {
            return tags.Split(split, StringSplitOptions.None);
        }

        private string[] SplitUrlPhotos(string urlPhotos)
        {
            return urlPhotos.Split(split, StringSplitOptions.None);

        }

       


    }
}
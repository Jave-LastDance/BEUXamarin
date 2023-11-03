using BeuMobileApp.Models;
using BeuMobileApp.Views;
using System;
using Xamarin.Forms;

namespace BeuMobileApp.ViewModels
{
    public class EventTitleViewModel : BaseViewModel
    {

        public string[] split = { "," };
        public string Image { get; }
        public string Name { get; }
        public string Description { get; }
        public string[] Tags { get; }
        public string PublicType { get; }
        public string Requirements { get; }
        public int Duration { get; }
        public string Location { get; }
        public int? Capacity { get; }
        public string Mode { get; }
        public string State { get; }
        public string Category { get; }
        public string Topic { get; }
        public int Cycle { get; }
        public int? PromRating { get; }
        public string DateStart { get; }
        public string DateEnd { get; }
        public string TimeStart { get; }
        public string TimeEnd { get; }
        public string DateStartPost { get; }
        public float? Price { get; }
        public string UrlEvent { get; }
        public string UrlPoster { get; }
        public string UrlPhotos { get; }
        public string HeadEmail { get; }
        public string NameCenter { get; }
        public System.Collections.Generic.List<Rating> Rating { get; }
        public System.Collections.Generic.List<Review> Reviews { get; }
        public System.Collections.Generic.List<Activity> Activities { get; }

        public Command TapCommand { get; }


        private readonly int eventIndex;

        public EventTitleViewModel(Event evnt, int index)
        {
            eventIndex = index;


            TapCommand = new Command(TapCallback);

            Image = evnt.Url_poster;
            Name = evnt.Name;
            Description = evnt.Description;
            Tags = SplitTags(evnt.Tags);
            PublicType = evnt.Public_type;
            Requirements = evnt.Requirements;
            Duration = evnt.Duration;
            Location = evnt.Location;
            Capacity = evnt.Capacity;
            Mode = evnt.Mode;
            State = evnt.State;
            Category = evnt.Category;
            Topic = evnt.Topic;
            Cycle = evnt.Cycle;
            PromRating = evnt.Prom_rating;
            DateStart = evnt.Date_start;
            DateEnd = evnt.Date_end;
            TimeStart = evnt.Time_start;
            TimeEnd = evnt.Time_end;
            DateStartPost = evnt.Date_start_post;
            Price = evnt.Price;
            UrlEvent = evnt.Url_event;
            UrlPoster = evnt.Url_poster;
            UrlPhotos = evnt.Url_photos;
            HeadEmail = evnt.Head_email;
            NameCenter = evnt.Name_center;
            Rating = evnt.Rating;
            Reviews = evnt.Reviews;
            Activities = evnt.Activities;

        }

        private string[] SplitTags(string tags){
            return tags.Split(split, StringSplitOptions.None);
        }
        async void TapCallback()
        {
            Console.WriteLine("EventId TITLE: " + eventIndex);
            await Shell.Current.GoToAsync($"{nameof(EventDetailView)}" + $"?{nameof(EventDetailViewModel.EventIndex)}={eventIndex}");
        }
    
    }
}

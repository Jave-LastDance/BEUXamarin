﻿using BeuMobileApp.Models;
using BeuMobileApp.Services;
using BeuMobileApp.Views;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Threading.Tasks;
using System.Windows.Input;
using Xamarin.Essentials;
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

        public string[] Images { get; set; }

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

        public string UrlPhotosF { get; set; }
        public string HeadEmail { get; set; }

        public string CenterName { get; set; }
        public System.Collections.Generic.List<Review> Reviews { get; set; }

        public System.Collections.Generic.List<Activity> Activities { get; set; }

        public string CenterImage { get; set; }

        public bool ShowIndicator { get; }

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


        private int eventRating;
        public int EventRating
        {
            get => eventRating;
            set
            {
                if (value >= 0 && value <= 5)
                {
                    eventRating = value;
                    OnPropertyChanged(nameof(EventRating));
                }
            }
        }

        public bool ShowActivitiesButton { get; set; }

        public string CurrentImage;
        public int idUser { get; }

        public string CommentText { get; set; }

        public Command AddCommentCommand { get; set; }

        public Command IncreaseRatingCommand { get; }
        public Command DecreaseRatingCommand { get; }
        public Command ImageChangedCommand { get; }

        public Command EventUrl { get; }

        public Command GoActivities { get; }

        public Command OpenLinkCommand { get; }
        public Command SaveRating { get; }

        public EventDetailViewModel()
        {
            ShowActivitiesButton = false;
            eventService = new EventService();
            Events = new ObservableCollection<EventTitleViewModel>();
            EventRating = 0;
            idUser = UserSession.IdUsuario ;
            GoActivities = new Command(GoActivitiesList);
            Reviews = new List<Review>();
            IncreaseRatingCommand = new Command(IncreaseRating, CanIncreaseRating);
            DecreaseRatingCommand = new Command(DecreaseRating, CanDecreaseRating);
            AddCommentCommand = new Command(async () => await AddComment());
            SaveRating = new Command(async () => await RateEvent(idUser));
            OpenLinkCommand = new Command(OpenLink);
           

            ImageChangedCommand = new Command<string>((i) => CurrentImage = i);
           
        }

        async void LoadEventData(int EventIndex)
        {

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
                Activities = selectedEvent.Activities;
                if(Activities.Count>0){
                    ShowActivitiesButton = true;
                }
                Images = SplitTags(UrlPhotos);
                foreach (string str in Images)
                {
                    Console.WriteLine("ESTAS SON LAS URL DE LAS FOTOS: "+str);
                }
                UrlPhotosF = Images[0];
            }

        }

        private string[] SplitTags(string tags)
        {
            return tags.Split(split, StringSplitOptions.None);
        }



        private bool CanIncreaseRating()
        {
            return EventRating <= 5;
        }

        private void IncreaseRating()
        {
            if (EventRating <= 5)
            {
                EventRating++;
                ((Command)DecreaseRatingCommand).ChangeCanExecute();
                ((Command)IncreaseRatingCommand).ChangeCanExecute();
            }
        }

        private bool CanDecreaseRating()
        {
            return EventRating >= 0;
        }

        private void DecreaseRating()
        {
            if (EventRating >= 0)
            {
                EventRating--;
                ((Command)DecreaseRatingCommand).ChangeCanExecute();
                ((Command)IncreaseRatingCommand).ChangeCanExecute();
            }
        }

        public async Task RateEvent(int userId)
        {
            Rating existingRating = await eventService.GetRating(userId, EventId);
            Console.WriteLine("RTA GET" + existingRating);
            if (existingRating != null)
            {
                Console.WriteLine("Estoy actualizando");
                Rating updateReating = new Rating
                {
                    idRatingXEvent = existingRating.idRatingXEvent,
                    eventid_event = EventId,
                    idUser = userId,
                    grade = EventRating,
                };

                var updateResult = await eventService.PutRating(updateReating);
                Console.Write("RESULTADO UPDATE: " + updateResult);
                if (updateResult != null)
                {
                    await Application.Current.MainPage.DisplayAlert("Éxito", "Operación de actualizar exitosa", "OK");
                }
                else
                {
                   // await Application.Current.MainPage.DisplayAlert("Error", "Operación de actualizar fallida", "OK");
                }



            }
            else
            {
                Console.WriteLine("Es un nuevo rating");
                Rating newRating = new Rating
                {
                    eventid_event = EventId,
                    idUser = userId,
                    grade = EventRating
                };

                var addResult = await eventService.PostRating(newRating);
                Console.Write("RESULTADO POST: " + addResult);
                if (addResult !=null)
                {
                    await Application.Current.MainPage.DisplayAlert("Éxito", "Calificación agregada", "OK");
                }
                else
                {
                    //await Application.Current.MainPage.DisplayAlert("Error", "No se pudo agregar la calificación", "OK");
                }


            }



        }

        private async Task AddComment()
        {
            if (CommentText != null)
            {
                Review reviewUser = null;
                foreach (var review in Reviews)
                {
                    if (review.idUser == idUser)
                    {
                        reviewUser = review;
                        break;
                    }
                }

                if (reviewUser != null)
                {
                    reviewUser.comment = CommentText;
                    var updateReview = await eventService.PutReview(reviewUser);
                    if (updateReview != null)
                    {
                        await Application.Current.MainPage.DisplayAlert("Éxito", "Comentario actualizado", "OK");

                    }
                    else
                    {
                      //  await Application.Current.MainPage.DisplayAlert("Error", "No se pudo actualizar el comentario", "OK");
                    }
                }
                else
                {

                    Review reviewNewUser = new Review
                    {
                        comment = CommentText,
                        idUser = idUser,
                        eventId = EventId
                    };

                    var createReview = await eventService.PostReview(reviewNewUser);
                    if (createReview =="OK")
                    {
                        await Application.Current.MainPage.DisplayAlert("Éxito", "Comentario agregado", "OK");

                    }
                    else
                    {
                        //await Application.Current.MainPage.DisplayAlert("Error", "No se pudo agregar el comentario", "OK");
                    }
                }
            }
            else {
                await Application.Current.MainPage.DisplayAlert("Error", "No has ingresado un comentario para guardar", "OK");
            }
        }

        private void OpenLink()
        {
            Launcher.OpenAsync(UrlEvent);
        }
        async void GoActivitiesList()
        {

            await Shell.Current.GoToAsync($"{nameof(ActivityView)}" + $"?{nameof(ActivityViewModel.EventIndex)}={EventId}");
        }

    
    }
}
using BeuMobileApp.Models;
using BeuMobileApp.Services;
using BeuMobileApp.Views;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace BeuMobileApp.ViewModels
{
    public class NotificationTitleViewModel : BaseViewModel
    {
        public string Image { get; set; }
        public string Title { get; set; }
        public string TimeStamp { get; set; }

        public string Body { get; set; }

        public int Event_id { get; set; }

        private int Notification_id { get; set; }


        public Command TapCommand { get; }
       
        public NotificationTitleViewModel(Notification ntf)
        {

            Notification_id = ntf.Notification_id;
            TapCommand = new Command(TapCallback);
            Image = ntf.Image;
            Title = ntf.Title;
            TimeStamp = ntf.TimeStamp;
            Body = ntf.Body;
            Event_id = ntf.Event_id;
          
        }

        async void TapCallback()
        {
            Console.WriteLine("Notif tITLE: " + Notification_id);
            await Shell.Current.GoToAsync($"{nameof(NotificationDetailView)}" + $"?{nameof(NotificationDetailViewModel.NotificationId)}={Notification_id}");

        }
    }
}

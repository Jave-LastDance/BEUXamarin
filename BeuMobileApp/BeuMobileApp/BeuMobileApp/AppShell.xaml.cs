using BeuMobileApp.ViewModels;
using BeuMobileApp.Views;
using Plugin.FirebasePushNotification;
using System;
using System.Collections.Generic;
using Xamarin.Forms;

namespace BeuMobileApp
{
    public partial class AppShell : Xamarin.Forms.Shell
    {
        public AppShell()
        {
            InitializeComponent();

            CrossFirebasePushNotification.Current.OnNotificationReceived += Current_OnNotificationReceived;

            Routing.RegisterRoute(nameof(EventDetailView), typeof(EventDetailView));
            Routing.RegisterRoute(nameof(BeaconLocationView), typeof(BeaconLocationView));

        }

        private void Current_OnNotificationReceived(object source, FirebasePushNotificationDataEventArgs e)
        {
            DisplayAlert("Notification", $"Data:{e.Data["MyData"]}", "OK");
        }

    }
}

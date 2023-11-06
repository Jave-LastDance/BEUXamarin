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
            Routing.RegisterRoute(nameof(CJFDView), typeof(CJFDView));
            Routing.RegisterRoute(nameof(CGCView), typeof(CGCView));
            Routing.RegisterRoute(nameof(CAPSView), typeof(CAPSView));
            Routing.RegisterRoute(nameof(CPSFJView), typeof(CPSFJView));
            Routing.RegisterRoute(nameof(CFICCView), typeof(CFICCView));
            Routing.RegisterRoute(nameof(NotificationView), typeof(NotificationView));

        }

        private void Current_OnNotificationReceived(object source, FirebasePushNotificationDataEventArgs e)
        {
            DisplayAlert("Notification", $"Data:{e.Data["MyData"]}", "OK");
        }

    }
}

using BeuMobileApp.InterfaceBeacons;
using BeuMobileApp.ViewModels;
using BeuMobileApp.Views;
using Plugin.FirebasePushNotification;
using System;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace BeuMobileApp
{
    public partial class App : Application
    {

        public App()
        {
            InitializeComponent();

            if (Device.RuntimePlatform == Device.Android)
            {
                DependencyService.Get<IbeaconAndroid>().InitializeService();
            }

            if (Device.RuntimePlatform == Device.iOS)
            {
                DependencyService.Get<iOSScan>().InitializeScannerService();
            }

            // MainPage = new AppShell();
            MainPage = new LoginView();

        }

        protected override void OnStart()
        {
            CrossFirebasePushNotification.Current.Subscribe("all");
            CrossFirebasePushNotification.Current.OnTokenRefresh += (s, p) =>
            {
                System.Diagnostics.Debug.WriteLine($"TOKEN REC: {p.Token}");
            };
            System.Diagnostics.Debug.WriteLine($"TOKEN: {CrossFirebasePushNotification.Current.Token}");


        }

        protected override void OnSleep()
        {
        }

        protected override void OnResume()
        {
        }
        public static UserResponse CurrentUser { get; set; }
    }
}

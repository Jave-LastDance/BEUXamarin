﻿using BeuMobileApp.InterfaceBeacons;
using BeuMobileApp.Models;
using BeuMobileApp.Services;
using BeuMobileApp.ViewModels;
using BeuMobileApp.Views;
using Plugin.FirebasePushNotification;
using System;
using System.Collections.Generic;
using System.Runtime.InteropServices;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace BeuMobileApp
{
    public partial class App : Application
    {
        private BeaconLocationViewModel beaconViewModel;
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
          

            FirebaseToken.TokenUser = CrossFirebasePushNotification.Current.Token;
            Console.WriteLine("TOKEN TELEFONO" +FirebaseToken.TokenUser);

            


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

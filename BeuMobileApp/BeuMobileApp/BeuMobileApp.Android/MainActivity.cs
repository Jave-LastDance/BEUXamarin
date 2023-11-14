using System;

using Android.App;
using Android.Content.PM;
using Android.Runtime;
using Android.OS;
using AltBeaconOrg.BoundBeacon;
using Plugin.CurrentActivity;
using Plugin.Permissions;
using BeuMobileApp.InterfaceBeacons;
using Xamarin.Forms;
using Plugin.FirebasePushNotification;
using Android.Content;

namespace BeuMobileApp.Droid
{
    [Activity(Label = "BeuMobileApp", Icon = "@mipmap/icon", Theme = "@style/MainTheme", MainLauncher = true, ConfigurationChanges = ConfigChanges.ScreenSize | ConfigChanges.Orientation | ConfigChanges.UiMode | ConfigChanges.ScreenLayout | ConfigChanges.SmallestScreenSize )]
    public class MainActivity : global::Xamarin.Forms.Platform.Android.FormsAppCompatActivity, IBeaconConsumer
    {
        protected override void OnCreate(Bundle savedInstanceState)
        {
            TabLayoutResource = Resource.Layout.Tabbar;
            ToolbarResource = Resource.Layout.Toolbar;
            base.OnCreate(savedInstanceState);

            Xamarin.Essentials.Platform.Init(this, savedInstanceState);
            CrossCurrentActivity.Current.Init(this, savedInstanceState);
          
            global::Xamarin.Forms.Forms.Init(this, savedInstanceState);
            LoadApplication(new App());
            FirebasePushNotificationManager.ProcessIntent(this, Intent);

            //Beacons signal
           // var intent = new Intent(this, typeof(BeaconMonitoringService));
            //StartForegroundService(intent);
        }
        public override void OnRequestPermissionsResult(int requestCode, string[] permissions, [GeneratedEnum] Android.Content.PM.Permission[] grantResults)
        {
            Xamarin.Essentials.Platform.OnRequestPermissionsResult(requestCode, permissions, grantResults);
            PermissionsImplementation.Current.OnRequestPermissionsResult(requestCode, permissions, grantResults);
            base.OnRequestPermissionsResult(requestCode, permissions, grantResults);
        }
        protected override void OnResume()
        {
            base.OnResume();
            // Start the service when the activity is about to become visible
            var intent = new Intent(this, typeof(BeaconMonitoringService));
            StartForegroundService(intent);
        }
        protected override void OnDestroy()
        {
            base.OnDestroy();
            //DependencyService.Get<IbeaconAndroid>().OnDestroy();

        }

        void IBeaconConsumer.OnBeaconServiceConnect()
        {

        }
    }
}
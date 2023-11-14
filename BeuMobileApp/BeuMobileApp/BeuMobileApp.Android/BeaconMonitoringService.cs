using AltBeaconOrg.BoundBeacon;
using Android.App;
using Android.Content;
using Android.OS;
using AndroidX.Core.App;
using BeuMobileApp.Models;
using BeuMobileApp.Services;
using BeuMobileApp.ViewModels;
using Plugin.FirebasePushNotification;
using Plugin.Permissions;
using Plugin.Permissions.Abstractions;
using System;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;
using System.Timers;
using Xamarin.Forms;

namespace BeuMobileApp.Droid
{
    [Service]
    public class BeaconMonitoringService : Service
    {
        private BeaconLocationViewModel _beaconViewModel;
        private readonly FirebaseNotification firebaseNotification = new FirebaseNotification();
        private readonly int NOTIFICATION_ID = 1;
        private readonly BeaconService beaconService = new BeaconService();
        public override StartCommandResult OnStartCommand(Intent intent, StartCommandFlags flags, int startId)
        {
            _beaconViewModel = new BeaconLocationViewModel();
            _beaconViewModel.StartRangingCommand.Execute(null);
            try
            {

                var channelId = "beacon_notification_channel";
                var channelName = "Beacon Monitoring Service";


                if (Android.OS.Build.VERSION.SdkInt >= Android.OS.BuildVersionCodes.O)
                {
                    var channel = new NotificationChannel(channelId, channelName, NotificationImportance.Default);
                    var notificationManager = (NotificationManager)GetSystemService(NotificationService);
                    notificationManager.CreateNotificationChannel(channel);
                }

                // Create a notification
                var notificationBuilder = new NotificationCompat.Builder(this, channelId)
                    .SetContentTitle("Beacon Monitoring Service")
                    .SetContentText("This service is monitoring for beacons in the background");


                var notification = notificationBuilder.Build();

                MessagingCenter.Subscribe<App, List<BeaconDetection>>(this, "BeaconsReceived", async (sender, arg) =>
                {
                    if (arg != null)
                    {
                        foreach (BeaconDetection beacon in arg)
                        {
                            string first8Digits = "50098ED0";
                            if (beacon.Id1.StartsWith(first8Digits, StringComparison.OrdinalIgnoreCase))
                            {
                                BeaconBEU beaconInfo = await beaconService.GetBeacon(beacon.Id1);
                                Console.WriteLine("este es el id del beacon " + beacon.Id1 + "llocation: " + beaconInfo.id_building);

                                if (beaconInfo != null)
                                {

                                    NotificationFirebase notificationFirebase = new NotificationFirebase
                                    {
                                        tokenDevice = FirebaseToken.TokenUser,
                                        userId = UserSession.IdUsuario,
                                        beaconId = beaconInfo.id_building,

                                    };


                                    var rta = await firebaseNotification.PostBeacon(notificationFirebase);
                                }
                                else
                                {
                                }
                            }
                            else
                            {
                            }
                        }
                    }
                });
                StartForeground(NOTIFICATION_ID, notification);

                return StartCommandResult.Sticky;
            }
            catch (Exception ex)
            {
                return StartCommandResult.Sticky;
            }
        }


        public override void OnDestroy()
        {
            base.OnDestroy();

            StopForeground(true);
            StopSelf();

            _beaconViewModel.OnDisappearingCommand.Execute(null);

            MessagingCenter.Unsubscribe<App, List<BeaconDetection>>(this, "BeaconsReceived");
        }

        public override IBinder OnBind(Intent intent)
        {
            return null;
        }
    }
}
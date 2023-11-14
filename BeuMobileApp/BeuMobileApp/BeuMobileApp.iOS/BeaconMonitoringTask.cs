using BeuMobileApp.Models;
using BeuMobileApp.ViewModels;
using Foundation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using UIKit;
using Xamarin.Forms;

namespace BeuMobileApp.iOS
{
    public class BeaconMonitoringTask : BackgroundTask
    {
        private BeaconLocationViewModel beaconViewModel;

        public override void OnStart()
        {
            // Start ranging before subscribing to beacons
            beaconViewModel = new BeaconLocationViewModel();
            beaconViewModel.StartRangingCommand.Execute(null);

            MessagingCenter.Subscribe<App, List<BeaconDetection>>(this, "BeaconsReceived", (sender, arg) =>
            {
                if (arg != null && arg is List<BeaconDetection>)
                {
                    foreach (BeaconDetection beacon in arg)
                    {
                        Console.WriteLine($"Detected beacon: {beacon.BluetoothAddress}");
                    }
                }
            });
        }

        public override void OnReschedule()
        {
            // Reschedule the task only if it's not already scheduled
            if (!IsScheduled)
            {
                Schedule();
            }
        }
    }

}
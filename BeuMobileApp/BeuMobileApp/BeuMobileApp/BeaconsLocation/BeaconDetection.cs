using BeuMobileApp.InterfaceBeacons;
using BeuMobileApp.Models;
using BeuMobileApp.Views;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Windows.Input;
using System.Threading.Tasks;
using Xamarin.Forms;
using Plugin.Permissions;
using Plugin.Permissions.Abstractions;

namespace BeuMobileApp.BeaconsLocation
{
    internal class BeaconDetection
    {
        public bool IsStartedRanging { get; set; }

        public bool IsTransmitting { get; set; }


        public ObservableCollection<BeaconDetection> ReceivedBeacons { get; set; } = new ObservableCollection<BeaconDetection>();




        public async void startRangingBeacon()
        {
            var status = await CrossPermissions.Current.CheckPermissionStatusAsync(Permission.Location);

            if (status != PermissionStatus.Granted)
            {
                status = await Util.Permissions.CheckPermissions(Permission.Location);
            }

            if (Device.RuntimePlatform == Device.Android)
            {
                var beaconService = Xamarin.Forms.DependencyService.Get<IbeaconAndroid>();
                beaconService.BluetoothEnable();

                if (!IsStartedRanging)
                    beaconService.StartRanging();
                else
                    beaconService.StopRanging();

                IsStartedRanging = !IsStartedRanging;
            }

            if (Device.RuntimePlatform == Device.iOS)
            {
                if (!IsStartedRanging)
                    Xamarin.Forms.DependencyService.Get<iOSScan>().startranging();
                else
                    Xamarin.Forms.DependencyService.Get<iOSScan>().stopranging();

                IsStartedRanging = !IsStartedRanging;
            }


        }

       
      
    }
}

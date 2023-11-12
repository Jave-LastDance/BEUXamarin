using BeuMobileApp.Models;
using BeuMobileApp.ViewModels;
using Microsoft.Extensions.Hosting;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace BeuMobileApp.Services
{

    public class BeaconDetectionService : BackgroundService

    {

        private BeaconLocationViewModel beaconViewModel;

        protected override Task ExecuteAsync(CancellationToken stoppingToken)

        {
            Console.WriteLine("ID USUARIO BEACONDETECSWERV: " + UserSession.IdUsuario);
            Console.WriteLine("TOKEN FIREBASE BEACONDETECSWERV: " + FirebaseToken.TokenUser);


            // Initialize beacon detection

            beaconViewModel = new BeaconLocationViewModel();

            beaconViewModel.StartRangingCommand.Execute(null);

            // Subscribe to beacon detection events

            MessagingCenter.Subscribe<BeaconDetectionService, List<BeaconDetection>>(this, "BeaconsReceived", (sender, arg) => {

                if (arg != null && arg is List<BeaconDetection>)
                {

                    foreach (BeaconDetection beacon in arg)
                    {

                        // Print the beacon to the console

                        Console.WriteLine("Beacon detectado: {0}", beacon.Id1);

                    }

                }

            });

            // Wait for the cancellation token to be canceled

            while (!stoppingToken.IsCancellationRequested)

            {

                // ...

            }

            // Stop beacon detection

            if (beaconViewModel != null)
            {

                beaconViewModel.OnDisappearingCommand.Execute(null);

            }

            return Task.CompletedTask;

        }

    }


}

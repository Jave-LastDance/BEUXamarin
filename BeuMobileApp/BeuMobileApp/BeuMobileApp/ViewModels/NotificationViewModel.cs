using BeuMobileApp.Views;
using System;
using System.Windows.Input;
using Xamarin.Essentials;
using Xamarin.Forms;

namespace BeuMobileApp.ViewModels
{

    public class NotificationViewModel 
    {
        public Command NotificationCommand { get; }

        public Command CJFDCommand { get; }
        public NotificationViewModel()
        {
            NotificationCommand = new Command(OnAboutClicked);
            CJFDCommand = new Command(OnCJFD);
        }
        private async void OnAboutClicked(object obj)
        {
            // Prefixing with `//` switches to a different navigation stack instead of pushing to the active one
            await Shell.Current.GoToAsync($"{nameof(BeaconLocationView)}");

        }
        private async void OnCJFD(object obj)
        {
            // Prefixing with `//` switches to a different navigation stack instead of pushing to the active one
            await Shell.Current.GoToAsync($"{nameof(CJFDView)}");
        }

    }
}
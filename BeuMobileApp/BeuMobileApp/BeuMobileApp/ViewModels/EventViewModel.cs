using BeuMobileApp.Views;
using System;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace BeuMobileApp.ViewModels
{
    public class EventViewModel
    {
        public Command ItemsCommand { get; }

        public EventViewModel()
        {
            ItemsCommand = new Command(OnItemClicked);
        }

        private async void OnItemClicked(object obj)
        {
            // Prefixing with `//` switches to a different navigation stack instead of pushing to the active one
            await Shell.Current.GoToAsync($"//{nameof(NotificationView)}");
        }


     }
}
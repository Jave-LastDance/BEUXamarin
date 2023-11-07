using BeuMobileApp.Models;
using BeuMobileApp.Services;
using BeuMobileApp.Views;
using System;
using System.Collections.ObjectModel;
using System.Windows.Input;
using Xamarin.Essentials;
using Xamarin.Forms;
using System.Threading.Tasks;

namespace BeuMobileApp.ViewModels
{

    public class NotificationViewModel : BaseViewModel
    {
       

        public ObservableCollection<NotificationTitleViewModel> Notifications { get; }
        public Command NotificationCommand { get; }
        public ICommand LoadNotificationsCommand { get; }
        public Command CJFDCommand { get; }

        private readonly NotificationService notificationService;

        private int idUser;
        
        public NotificationViewModel()
        {
            NotificationCommand = new Command(OnAboutClicked);
            CJFDCommand = new Command(OnCJFD);
            Notifications = new ObservableCollection<NotificationTitleViewModel>();
            notificationService = new NotificationService();
            idUser = 7;
            LoadNotificationsCommand = new Command(async () => await LoadNotifications());
           
        }


        public void OnAppearing()
        {
            IsBusy = true;
        }
        public async Task LoadNotifications()
        {
            IsBusy = true;
            
           Notifications.Clear();
             

            try
            {
                
                var notifications = await notificationService.GetNotifications(idUser);
                if (notifications != null)
                {
                    foreach (var ntf in notifications)
                    {
                        var notificationTitleViewModel = new NotificationTitleViewModel(ntf);
                        Notifications.Add(notificationTitleViewModel);
                    }
                }
            }
            catch (Exception ex)
            {

                Console.WriteLine("Error al cargar notificaciones: " + ex.Message);
            }
            finally
            {
                IsBusy = false;
            }
        }

        private async void OnAboutClicked(object obj)
        {
            
            await Shell.Current.GoToAsync($"{nameof(BeaconLocationView)}");

        }
        private async void OnCJFD(object obj)
        {
            
            await Shell.Current.GoToAsync($"{nameof(CJFDView)}");
        }

    }
}
using BeuMobileApp.ViewModels;
using System;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace BeuMobileApp.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class EventView : ContentPage
    {

        EventViewModel viewModel;

        public EventView()
        {
            InitializeComponent();
            viewModel = new EventViewModel();
            BindingContext = viewModel;
        }

        protected override void OnAppearing()
        {
            base.OnAppearing();

            viewModel?.OnAppearing(); // Asegúrate de que viewModel no sea nulo
        }
        private void OpenWhatsAppChat(object sender, EventArgs e)
        {
            Launcher.OpenAsync("https://wa.me/573213105516"); // Reemplaza con el número de WhatsApp al que deseas enviar el mensaje
        }



    }
}
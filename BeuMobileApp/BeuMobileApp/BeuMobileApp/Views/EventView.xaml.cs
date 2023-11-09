using BeuMobileApp.Models;
using BeuMobileApp.Services;
using BeuMobileApp.ViewModels;
using System;
using System.Collections.Generic;
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

            viewModel?.OnAppearing(); 
        }
        private void OpenWhatsAppChat(object sender, EventArgs e)
        {
            Launcher.OpenAsync("https://wa.me/573213105516"); 
        }



    }
}
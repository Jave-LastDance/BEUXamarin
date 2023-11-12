using System;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Xamarin.Essentials;
using BeuMobileApp.ViewModels;
using System.ComponentModel;

namespace BeuMobileApp.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class LoginView : ContentPage
    {

        private LoginViewModel loginViewModel;

        public LoginView()
        {
            loginViewModel = new LoginViewModel();
            BindingContext = loginViewModel;
            InitializeComponent();

        }

        private async void OnForgotPasswordTapped(object sender, EventArgs e)
        {
            await Browser.OpenAsync(new Uri("https://tuid.javeriana.edu.co/recuperarcl/puj/InicioClave.xhtml"), BrowserLaunchMode.SystemPreferred);
        }
        protected override void OnAppearing()
        {
            base.OnAppearing();
            loginViewModel.OnAppearing();
        }
    }
}

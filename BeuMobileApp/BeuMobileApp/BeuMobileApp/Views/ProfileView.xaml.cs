using BeuMobileApp.ViewModels;
using System;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace BeuMobileApp.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class ProfileView : ContentPage
    {
        public ProfileView()
        {
            InitializeComponent();
            this.BindingContext = new ProfileViewModel();
        }
        private void DetallesCuentaButton_Clicked(object sender, EventArgs e)
        {
            // Navega a la página "DetailsAccount"
            Navigation.PushAsync(new DetailsAccount());
        }
    }
}
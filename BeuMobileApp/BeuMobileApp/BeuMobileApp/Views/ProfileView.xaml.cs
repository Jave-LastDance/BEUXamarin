using BeuMobileApp.ViewModels;
using System;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace BeuMobileApp.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class ProfileView : ContentPage
    {

        ProfileViewModel viewModel;

        public ProfileView( )
        {
            
            InitializeComponent();
            viewModel = new ProfileViewModel();
            BindingContext = viewModel;
        }
        private void DetallesCuentaButton_Clicked(object sender, EventArgs e)
        {
            // Navega a la página "DetailsAccount"
            Navigation.PushAsync(new DetailsAccount());
        }

        private void PrefrenciasButton_Clicked(object sender, EventArgs e)
        {
            // Navega a la página "DetailsAccount"
            Navigation.PushAsync(new CJFDView());
        }

        private void CerrarSesionButton_Clicked(object sender, EventArgs e)
        {
            // Realiza aquí la lógica de cierre de sesión, por ejemplo:
            // - Limpiar la información de autenticación.
            // - Redirigir al usuario a la página de inicio de sesión.

            // Ejemplo de redirección a la página de inicio de sesión:
            Application.Current.MainPage = new LoginView(); // Reemplaza "LoginPage" con el nombre de tu página de inicio de sesión.
        }
    }
}
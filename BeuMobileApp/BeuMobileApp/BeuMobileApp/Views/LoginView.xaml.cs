using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Xamarin.Essentials;
using BeuMobileApp.Models;
using BeuMobileApp.Services;
using System.Windows.Input;
using Plugin.Permissions.Abstractions;
using Plugin.Permissions;
using Behaviors;

namespace BeuMobileApp.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class LoginView : ContentPage
    {
        public ICommand OnAppearingCommand { get; protected set; }
        public LoginView()
        {
            InitializeComponent();
            this.OnAppearingCommand = new Command(() =>
            {
                Task.Run(async () =>
                {
                    var status = await CrossPermissions.Current.CheckPermissionStatusAsync(Permission.Location);

                    if (status != Plugin.Permissions.Abstractions.PermissionStatus.Granted)
                        status = await Util.Permissions.CheckPermissions(Permission.Location);
                });
            }); 
            InvokeCommandAction icaOnAppearing = new InvokeCommandAction();
            icaOnAppearing.SetBinding(InvokeCommandAction.CommandProperty, "OnAppearingCommand");
            EventHandlerBehavior ehbOnAppearing = new EventHandlerBehavior() { EventName = "Appearing" };
            ehbOnAppearing.Actions.Add(icaOnAppearing);
            this.Behaviors.Add(ehbOnAppearing);
        }
        private async void OnLoginButtonClicked(object sender, EventArgs e)
        {
            // Aquí puedes realizar la lógica de autenticación y determinar si el usuario puede iniciar sesión.
           
                // Si la autenticación es exitosa, puedes navegar a la página MainPage.
                //Se guarda el id del usuario registrado 
                App.Current.MainPage = new AppShell();
                UserSession.IdUsuario = 2; 

            


            // Si la autenticación falla, puedes mostrar un mensaje de error o realizar otras acciones.

        }
        private async void OnForgotPasswordTapped(object sender, EventArgs e)
        {
            // Abre la URL en el navegador del sistema preferido
            await Browser.OpenAsync(new Uri("https://tuid.javeriana.edu.co/recuperarcl/puj/InicioClave.xhtml"), BrowserLaunchMode.SystemPreferred);
        }


    }
}
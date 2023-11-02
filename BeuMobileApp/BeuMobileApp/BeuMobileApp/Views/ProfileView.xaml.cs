using BeuMobileApp.ViewModels;
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
    }
}
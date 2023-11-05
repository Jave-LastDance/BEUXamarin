using BeuMobileApp.ViewModels;
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

    }
}
using BeuMobileApp.ViewModels;
using Xamarin.Forms;

namespace BeuMobileApp.Views
{
    public partial class EventView : ContentPage
    {
       
        public EventView()
        {
            InitializeComponent();
            this.BindingContext = new EventViewModel();
        }

    }
}
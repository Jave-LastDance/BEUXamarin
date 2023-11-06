using BeuMobileApp.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace BeuMobileApp.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class PriorityView : ContentPage
    {
        PriorityViewModel viewModel;

        public PriorityView()
        {
            InitializeComponent();
            viewModel = new PriorityViewModel();
            BindingContext = viewModel;



        }
       
    }
}
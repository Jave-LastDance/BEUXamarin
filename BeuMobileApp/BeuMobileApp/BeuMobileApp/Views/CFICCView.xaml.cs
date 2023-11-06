using BeuMobileApp.Models;
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
    public partial class CFICCView : ContentPage
    {
        CFICCViewModel viewModel;
        public CFICCView()
        {
            InitializeComponent();
            viewModel=new CFICCViewModel();
            BindingContext = viewModel;
            collectionView.SelectionChanged += (sender, e) =>
            {
                var selectedItems = ((CollectionView)sender).SelectedItems;


                viewModel.SelectedPreferences.Clear();

                foreach (var selectedItem in selectedItems)
                {
                    if (selectedItem is Preference selectedPreference)
                    {
                        viewModel.SelectedPreferences.Add(selectedPreference);
                    }
                }
            };
        }
        protected override void OnAppearing()
        {
            base.OnAppearing();

            viewModel?.OnAppearing();
        }
    }
}
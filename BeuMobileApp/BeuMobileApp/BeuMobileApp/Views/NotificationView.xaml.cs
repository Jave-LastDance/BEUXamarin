using BeuMobileApp.ViewModels;
using System;
using System.ComponentModel;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace BeuMobileApp.Views
{
    public partial class NotificationView : ContentPage
    {
        public NotificationView()
        {
            InitializeComponent();
            this.BindingContext = new NotificationViewModel();
        }
    }
}
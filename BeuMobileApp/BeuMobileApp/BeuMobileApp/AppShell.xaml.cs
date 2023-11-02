using BeuMobileApp.ViewModels;
using BeuMobileApp.Views;
using System;
using System.Collections.Generic;
using Xamarin.Forms;

namespace BeuMobileApp
{
    public partial class AppShell : Xamarin.Forms.Shell
    {
        public AppShell()
        {
            InitializeComponent();

            Routing.RegisterRoute(nameof(EventDetailView), typeof(EventDetailView));
           
        }

    }
}

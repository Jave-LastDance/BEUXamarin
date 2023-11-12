﻿using BeuMobileApp.Views;
using System;
using System.Collections.Generic;
using System.Text;
using Xamarin.Forms;

namespace BeuMobileApp.ViewModels
{
    public class ProfileViewModel
    {
        public Command LoginCommand { get; }
        public Command CJFDCommand { get; }

        public ProfileViewModel()
        {
            LoginCommand = new Command(OnLoginClicked);
            CJFDCommand = new Command(OnCJFD);
        }

        private async void OnLoginClicked(object obj)
        {
            // Prefixing with `//` switches to a different navigation stack instead of pushing to the active one
            await Shell.Current.GoToAsync($"//{nameof(EventView)}");
        }
        private async void OnCJFD(object obj)
        {

            await Shell.Current.GoToAsync($"{nameof(CJFDView)}");
        }
        public UserResponse CurrentUser => App.CurrentUser;
    }
}

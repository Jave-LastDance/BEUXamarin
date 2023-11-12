using System;
using System.Collections.Generic;
using System.Text;

namespace BeuMobileApp.ViewModels
{
    public class Authority
    {
        public string authority { get; set; }
    }

    public class UserResponse
    {
        public int id { get; set; }
        public string username { get; set; }
        public string lastname { get; set; }
        public string firstname { get; set; }
        public string password { get; set; }
        public string role { get; set; }
        public bool seccionIniciada { get; set; }
        public string programa { get; set; }
        public string rol { get; set; }
        public string photo { get; set; }
        public object tokenMovil { get; set; }
        public DateTime fechaNacimiento { get; set; }
        public bool enabled { get; set; }
        public bool accountNonExpired { get; set; }
        public bool accountNonLocked { get; set; }
        public bool credentialsNonExpired { get; set; }
        public List<Authority> authorities { get; set; }
    }
}

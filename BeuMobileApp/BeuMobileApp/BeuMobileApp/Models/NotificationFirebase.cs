using System;
using System.Collections.Generic;
using System.Text;

namespace BeuMobileApp.Models
{
    public class NotificationFirebase
    {
        public string DeviceToken { get; set; }
        public string Title { get; set; }
        public string Body { get; set; }
        public string Image {  get; set; }
        public Dictionary<string, string> Data { get; set; }
    }
}

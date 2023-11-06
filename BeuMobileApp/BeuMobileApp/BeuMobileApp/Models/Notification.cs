using System;
using System.Collections.Generic;
using System.Text;

namespace BeuMobileApp.Models
{
    public class Notification
    {
        public int Notification_id { get; set; }
        public int User_id { get; set; }
        public int Event_id { get; set; }
        public string Title { get; set; }
        public string Body { get; set; }
        public string Url_notification { get; set; }
        public string Image { get; set; }
        public string TimeStamp { get; set; }
    }
}

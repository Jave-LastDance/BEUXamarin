using System;
using System.Collections.Generic;
using System.Text;

namespace BeuMobileApp.Models
{
    public class Rating
    {
        public int IdRatingXEvent { get; set; }
        public int Grade { get; set; }
        public int Eventid_event { get; set; }
        public int IdUser { get; set; }
    }
}

using System;
using System.Collections.Generic;
using System.Text;

namespace BeuMobileApp.Models
{
    public class Rating
    {
        public int idRatingXEvent { get; set; }
        public int grade { get; set; }
        public int eventid_event { get; set; }
        public int idUser { get; set; }
    }
}

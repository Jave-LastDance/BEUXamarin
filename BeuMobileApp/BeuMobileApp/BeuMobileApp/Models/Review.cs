using System;
using System.Collections.Generic;
using System.Text;

namespace BeuMobileApp.Models
{
    public class Review
    {
        public int idCommentEvent { get; set; }
        public int idUser { get; set; }
        public int eventId { get; set; }
        public string comment { get; set; }
    }
}

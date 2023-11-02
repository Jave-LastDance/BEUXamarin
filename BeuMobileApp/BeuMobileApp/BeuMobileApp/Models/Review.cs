using System;
using System.Collections.Generic;
using System.Text;

namespace BeuMobileApp.Models
{
    public class Review
    {
        public int IdCommentEvent { get; set; }
        public int IdUser { get; set; }
        public int EventId { get; set; }
        public string Comment { get; set; }
    }
}

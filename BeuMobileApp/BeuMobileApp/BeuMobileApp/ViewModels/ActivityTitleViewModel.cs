using BeuMobileApp.Models;
using System;
using System.Collections.Generic;
using System.Text;

namespace BeuMobileApp.ViewModels
{
    public class ActivityTitleViewModel : BaseViewModel
    {
        public string[] split = { "," };
        public string Name { get; set; }
        public string Description { get; set; }
        public string[] Public_type { get; set; }
        public string Date { get; set; }
        public string Time_start { get; set; }
        public string Time_end { get; set; }
        public string Url_poster { get; set; }
        public string Category { get; set; }
        public string Topic { get; set; }
        public string Location { get; set; }
        public ActivityTitleViewModel(Activity act) {
        
            Name=act.Name;
            Description=act.Description;
            Public_type= SplitTags(act.Public_type);
            Date=act.Date;
            Time_start=act.Time_start;
            Time_end=act.Time_end;
            Url_poster=act.Url_poster;
            Category=act.Category;
            Topic=act.Topic;
            Location=act.Location;

        
        }
        private string[] SplitTags(string tags)
        {
            return tags.Split(split, StringSplitOptions.None);
        }

    }
}

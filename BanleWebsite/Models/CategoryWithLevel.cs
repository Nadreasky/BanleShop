using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BanleWebsite.Models
{
    public class CategoryWithLevel
    {
        public int id { get; set; }
        public string name { get; set; }
        public int preCateId { get; set; }
        public int rank { get; set; }
        public int level { get; set; }
    }
}
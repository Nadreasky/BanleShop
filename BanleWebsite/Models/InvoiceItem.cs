using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BanleWebsite.Models
{
    public class InvoiceItem
    {
        public string productName { get; set; }
        public string color { get; set; }
        public string size { get; set; }
        public double price { get; set; }
        public int quantity { get; set; }
    }
}
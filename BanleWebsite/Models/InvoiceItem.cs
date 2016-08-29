using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BanleWebsite.Models
{
    public class InvoiceItem
    {
        public string productName { get; set; }
        public int color { get; set; }
        public int size { get; set; }
        public double price { get; set; }
        public int quantity { get; set; }
        public int productId { get; set; }
    }
}
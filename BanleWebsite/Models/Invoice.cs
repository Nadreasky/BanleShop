using BanleWebsite.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BanleWebsite.Models
{
    public class Invoice
    {
        public int orderId { get; set; }
        public string name { get; set; }
        public string phoneNo { get; set; }
        public DateTime createDate { get; set; }
        public string address { get; set; }
        public string email { get; set; }
        public List<InvoiceItem> listOrderDetail { get; set; }

        public Invoice()
        {
            ProductServices _productService = new ProductServices();
            OrderServices _orderServices = new OrderServices();

            if (HttpContext.Current.Session["OrderId"] != null)
            {
                orderId = Int32.Parse(HttpContext.Current.Session["OrderId"].ToString());

                name = _orderServices.findOrderByID(orderId).Name;
                phoneNo = _orderServices.findOrderByID(orderId).PhoneNo;
                createDate = _orderServices.findOrderByID(orderId).CreateDate;
                address = _orderServices.findOrderByID(orderId).Address;
                email = _orderServices.findOrderByID(orderId).Email;
            }

            listOrderDetail = new List<InvoiceItem>();

            List<CartItem> cart = new List<CartItem>();
            if (HttpContext.Current.Session["CartSession"] != null)
            {
                cart = (List<CartItem>)HttpContext.Current.Session["CartSession"];
                foreach (var item in cart)
                {
                    InvoiceItem it = new InvoiceItem();
                    it.productName = _productService.findByID(item.productId).Name;
                    it.color = item.color;
                    it.size = item.size;
                    it.price = _productService.findByID(item.productId).Price.Value;
                    it.quantity = item.quantity;

                    listOrderDetail.Add(it);
                }
            }

            HttpContext.Current.Session.Clear();
        }
    }
}
using BanleWebsite.Models;
using BanleWebsite.Services;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Mvc;

namespace BanleWebsite.Controllers
{
    public class CartController : Controller
    {
        OrderServices _orderServices = new OrderServices();
        // GET: Cart
        public ActionResult Index()
        {
            string xcolor = Request["color"];
            string xsize = Request["size"];
            if (Request["id"]!=null
                && Request["color"]!=null
                && Request["size"]!=null)
            {
                int id = Int32.Parse(Request["id"]);
                string color = Request["color"].ToString();
                string size = Request["size"].ToString();
                _orderServices.AddToCart(id, color, size);
            }

            //_orderServices.AddToCart(13, "white", "XL");

            //else
            //{
            //    return RedirectToAction("Index","Home");
            //}
            ViewBag.cart = _orderServices.getCart();

            AddressBar ab = new AddressBar();
            ViewBag.link = ab.GetLinkBackToShopping();

            return View();

        }

        public ActionResult SubmitOrderCompleted()
        {
            Invoice invoice = new Invoice();

            ViewBag.invoice = invoice;

            return View();
        }

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult SubmitOrder(string name, string phoneNo, string address, string email)
        {
            var cart = _orderServices.SubmitOrder(name, phoneNo, address, email);

            StringBuilder sb = new StringBuilder();

            sb.Append("Action: SubmitOrder");
            sb.Append(Environment.NewLine);
            sb.Append("Username: ");
            sb.Append(name);
            sb.Append(Environment.NewLine);
            sb.Append("PhoneNumber: ");
            sb.Append(phoneNo);
            sb.Append(Environment.NewLine);
            sb.Append("Address: ");
            sb.Append(address);
            sb.Append(Environment.NewLine);
            sb.Append("Email: ");
            sb.Append(email);

            foreach (var item in cart)
            {
                sb.Append(Environment.NewLine);
                sb.Append("ProductId: ");
                sb.Append(item.productId);
                sb.Append(" - ");
                sb.Append("Quantity: ");
                sb.Append(item.quantity);
                sb.Append(" - ");
                sb.Append("Color: ");
                sb.Append(item.color);
                sb.Append(" - ");
                sb.Append("Size: ");
                sb.Append(item.size);
            }
            WriteLog(sb.ToString());

            sb.Clear();

            return RedirectToAction("SubmitOrderCompleted", "Cart");
        }

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult UpdateQuantity(int productId, int quantity, string color, string size)
        {
            _orderServices.UpdateQuantity(productId, quantity, color, size);
            return RedirectToAction("index", "cart");
        }

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult DeleteCartItem(int productId, string color, string size)
        {
            _orderServices.DeleteCartItem(productId, color, size);
            return RedirectToAction("index", "cart");
        }

        public void WriteLog(string text)
        {
            StringBuilder sb = new StringBuilder();

            sb.Append(DateTime.Now.ToLongDateString());
            sb.Append(" - ");
            sb.Append(DateTime.Now.ToLongTimeString());
            sb.Append(Environment.NewLine);

            sb.Append(text);
            sb.Append(Environment.NewLine);
            sb.Append(Environment.NewLine);

            string path = Server.MapPath(Url.Content("~/"));
            //string fileName = Server.MapPath("logYourFashion.txt");
            if (!System.IO.File.Exists(path + "/logYourFashion.txt"))
            {
                System.IO.File.Create(path + "/logYourFashion.txt").Close();   
            }
            System.IO.File.AppendAllText(path + "/logYourFashion.txt", sb.ToString());

            sb.Clear();
        }
    }
}
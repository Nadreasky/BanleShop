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
            if (Request["id"]!=null)
            {
                int id = Int32.Parse(Request["id"]);
                _orderServices.AddToCart(id);
            }

            //else
            //{
            //    return RedirectToAction("Index","Home");
            //}
            ViewBag.cart = _orderServices.getCart();
            return View();

        }

        public ActionResult SubmitOrderCompleted()
        {
            return View();
        }

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult SubmitOrder(string name, string phoneNo)
        {
            var cart = _orderServices.SubmitOrder(name, phoneNo);

            StringBuilder sb = new StringBuilder();

            sb.Append("Action: SubmitOrder");
            sb.Append(Environment.NewLine);
            sb.Append("Username: ");
            sb.Append(name);
            sb.Append(Environment.NewLine);
            sb.Append("PhoneNumber: ");
            sb.Append(phoneNo);

            foreach (var item in cart)
            {
                sb.Append(Environment.NewLine);
                sb.Append("ProductId: ");
                sb.Append(item.productId);
                sb.Append(" - ");
                sb.Append("Quantity: ");
                sb.Append(item.quantity);
            }
            WriteLog(sb.ToString());

            sb.Clear();

            return RedirectToAction("SubmitOrderCompleted", "Cart");
        }

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult UpdateQuantity(int productId, int quantity)
        {
            _orderServices.UpdateQuantity(productId, quantity);
            return RedirectToAction("index", "cart");
        }

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult DeleteCartItem(int productId)
        {
            _orderServices.DeleteCartItem(productId);
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
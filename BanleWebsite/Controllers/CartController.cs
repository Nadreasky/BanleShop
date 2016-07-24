using BanleWebsite.Services;
using System;
using System.Collections.Generic;
using System.Linq;
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
            _orderServices.SubmitOrder(name, phoneNo);
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
    }
}
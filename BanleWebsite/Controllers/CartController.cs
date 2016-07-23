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
                ViewBag.cart = _orderServices.getCart();
                return View();
            }
            else
            {
                return RedirectToAction("Index","Home");
            }
     
            
        }

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult SubmitOrder(string name, string phoneNo)
        {
            _orderServices.SubmitOrder(name, phoneNo);
            return RedirectToAction("index", "home");
        }
    }
}
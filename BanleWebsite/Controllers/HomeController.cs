using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using BanleWebsite.Services;
using BanleWebsite.Models;

namespace BanleWebsite.Controllers
{
    public class HomeController : Controller
    {
        ProductServices _productServices;

        public ActionResult Index()
        {
            _productServices = new ProductServices();
            List<Product> allProduct = _productServices.getAll();
            ViewBag.allProduct = allProduct;

            // cap nhat link cho "Quay lai mua sam"
            AddressBar ab = new AddressBar();
            ab.UpdateLinkBackToShopping();

            return View();
        }

        public ActionResult About()
        {

            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}
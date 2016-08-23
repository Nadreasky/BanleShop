using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using BanleWebsite.Services;

namespace BanleWebsite.Controllers
{
    public class PromotionController : Controller
    {
        ProductServices _productServices = new ProductServices();
        // GET: Promotion
        public ActionResult Index()
        {
            List<Product> promoteProduct = _productServices.getPromoteProduct();
            ViewBag.promoteProduct = promoteProduct;
            return View();
        }
    }
}
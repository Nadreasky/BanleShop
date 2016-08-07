using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using BanleWebsite.Services;

namespace BanleWebsite.Controllers
{
    public class SanphamNoibatController : Controller
    {
        ProductServices _productServices = new ProductServices();
        // GET: SanphamNoibat
        public ActionResult Index()
        {
            Product highlightProduct = _productServices.getHighlightProduct();
            ViewBag.highlightProduct = highlightProduct;

            List<Product> saleProducts = _productServices.getSaleProducts();
            ViewBag.saleProducts = saleProducts;
            return View();
        }
    }
}
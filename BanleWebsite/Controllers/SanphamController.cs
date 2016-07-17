using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using BanleWebsite.Services;

namespace BanleWebsite.Controllers
{
    public class SanphamController : Controller
    {
        ProductServices _productService = new ProductServices();

        public ActionResult Index(int? id)
        {
            Product mainProduct = null;
            if (id != null && id.HasValue)
            {
                mainProduct = _productService.findByID(id.Value);
            }
            if (mainProduct == null)
            {
                return RedirectToAction("Home/Index");
            }
            ViewBag.mainProduct = mainProduct;
            List<Product> relativeProducts = _productService.getRelativeProducts(id.Value);
            ViewBag.relativeProducts = relativeProducts;

            List<Category> proTree = _productService.getProductTree(id.Value);
            ViewBag.proTree = proTree;
            return View();
        }

    }
}
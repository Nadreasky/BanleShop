using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using BanleWebsite.Services;

namespace BanleWebsite.Controllers
{
    public class QuanliController : Controller
    {
        CategoryServices _categoryServices = new CategoryServices();
        ProductServices _productService = new ProductServices();
        // GET: Quanli
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Category()
        {
            return View();
        }

        public ActionResult Product()
        {
            List<Category> categories = _categoryServices.getAll();
            ViewBag.categories = categories;
            List<Product> products = _productService.getAll();
            ViewBag.products = products;
            return View();
        }

    }
}
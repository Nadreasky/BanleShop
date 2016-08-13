using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using BanleWebsite.Services;

namespace BanleWebsite.Controllers
{
    public class HomeController : Controller
    {
        ProductServices _productServices;
        NewsServices _newsServices;

        public ActionResult Index()
        {
            _productServices = new ProductServices();
            _newsServices = new NewsServices();
            List<Product> allProduct = _productServices.getAll();
            List<News> listNews = _newsServices.getPopNews();

            List<Product> fashionProduct = _productServices.getFashionProduct();
            List<Product> nonFashionProduct = _productServices.getNonFashionProduct();

            //Random 
            List<Product> listRandom = _productServices.getListProductRandom();
            ViewBag.listRandom = listRandom;

            ViewBag.allProduct = allProduct;
            ViewBag.listNews = listNews;
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
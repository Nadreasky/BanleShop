﻿using System;
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

        public ActionResult Index()
        {
            _productServices = new ProductServices();
            List<Product> allProduct = _productServices.getAll();
            ViewBag.allProduct = allProduct;
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
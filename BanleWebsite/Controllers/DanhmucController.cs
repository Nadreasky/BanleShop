﻿using BanleWebsite.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BanleWebsite.Controllers
{
    public class DanhmucController : Controller
    {
        ProductServices _productServices = new ProductServices();
        CategoryServices _categoryServices = new CategoryServices();

        // GET: Danhmuc
        public ActionResult Index(int? id)
        {
            List<Product> productList = _productServices.getProductsByCategory(id.Value);
            ViewBag.productList = productList;

            List<Category> categoryTree = _categoryServices.getCategoryTree(id.Value);
            ViewBag.categoryTree = categoryTree;

            return View();
        }
    }
}
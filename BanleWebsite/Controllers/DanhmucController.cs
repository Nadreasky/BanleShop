using BanleWebsite.Models;
using BanleWebsite.Services;
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
            List<Product> productList = _categoryServices.getProductByCate(id.Value).OrderByDescending(i => i.ID).ToList();
            ViewBag.productList = productList;

            List<Category> categoryTree = _categoryServices.getCategoryTree(id.Value);
            ViewBag.categoryTree = categoryTree;

            Category mainCate = _categoryServices.findByid(id.Value);
            ViewBag.mainCate = mainCate;

            // cap nhat link cho "Quay lai mua sam"
            AddressBar ab = new AddressBar();
            ab.UpdateLinkBackToShopping();

            return View();
        }
    }
}
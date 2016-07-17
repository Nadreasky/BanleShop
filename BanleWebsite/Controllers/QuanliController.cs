using BanleWebsite.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BanleWebsite.Controllers
{
    public class QuanliController : Controller
    {
        CategoryServices _categoryServices = new CategoryServices();

        // GET: Quanli
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult UpdateCategory()
        {
            List<Category> categoryList =_categoryServices.getAll();
            ViewBag.categoryList = categoryList;

            List<Category> categoryNoPreList = new List<Category>();
            ViewBag.categoryNoPreList = categoryNoPreList;
            foreach (var itemCategory in categoryList)
            {
                if (itemCategory.PreCateID == null)
                {
                    categoryNoPreList.Add(itemCategory);
                }
            }



            //foreach (var itemCategoryNoPre in categoryNoPreList)
            //{
            //    foreach (var itemCategory in categoryList)
            //    {
            //        if (itemCategory.PreCateID == itemCategoryNoPre.ID) { }

            //    }
            //}

            //Product p = null;
            //ViewBag.pro1 = p;
            return View();
        }
    }
}
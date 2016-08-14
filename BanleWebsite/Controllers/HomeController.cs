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
        CategoryServices _categoryServices;

        public ActionResult Index()
        {
            _productServices = new ProductServices();
            _newsServices = new NewsServices();
            _categoryServices = new CategoryServices();
            //List<Product> allProduct = _productServices.getAll();
            List<News> listNews = _newsServices.getPopNews();

            //List<Product> fashionProduct = _productServices.getFashionProduct();
            //List<Product> nonFashionProduct = _productServices.getNonFashionProduct();

            //Random 
            List<Product> listRandom = _productServices.getListProductRandom();
            ViewBag.listRandom = listRandom;

            //cho giao dien moi
            Dictionary<Category, List<Product>> productByCateList = new Dictionary<Category, List<Product>>();
            List<Category> allCate = _categoryServices.getAll();
            List<Category> showCateHome = new List<Category>();
            foreach (var item in allCate)
            {
                foreach (var item2 in SLIMCONFIG.HOMEPAGE_SHOW_CATEGORIES)
                {
                    if(item.Name.ToUpper().Contains(item2.ToUpper()))
                    {
                        showCateHome.Add(item);
                    }
                }

            }
            foreach (Category item in showCateHome)
            {
                List<Product> pl = _productServices.getListProductRandomByCate(item.ID);
                productByCateList.Add(item, pl);
            }
            ViewBag.productByCateList = productByCateList;

            //ViewBag.allProduct = allProduct;
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
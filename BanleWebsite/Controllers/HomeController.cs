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
        ProductDetailServices _ProductDetailServices;

        public ActionResult Index()
        {
            _productServices = new ProductServices();
            _ProductDetailServices = new ProductDetailServices();
            List<Product> allProduct = _productServices.getAll().OrderBy(p => p.ID).ToList();
            List<ProductDetail> pDetail = _ProductDetailServices.getAll();

            //Random 
            ViewBag.allProduct = randomProduct(allProduct);
            ViewBag.pDetail = pDetail;
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

        public List<Product> randomProduct(List<Product> allProduct)
        {

            List<Product> listRandom = new List<Product>();

            Random ran = new Random();
            int ranNum = 0;

                while (allProduct.Count != 0)
                {
                    ranNum = ran.Next(0, allProduct.Count);
                    listRandom.Add(allProduct[ranNum]);
                    allProduct.RemoveAt(ranNum);
                }

                allProduct = listRandom.ToList();
                //listRandom.Clear();

                


            return allProduct;
        }
    }
}
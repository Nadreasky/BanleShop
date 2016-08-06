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
        ImageServices _imageServices = new ImageServices();
        SizeProductDetailServices _sizeProductDetailServices = new SizeProductDetailServices();

        // GET: SanphamNoibat
        public ActionResult Index()
        {
            Product highlightProduct = _productServices.getHighlightProduct();
            ViewBag.highlightProduct = highlightProduct;

            List<Image> colorImgProduct = _imageServices.getByProductId(highlightProduct.ID);
            ViewBag.colorImgProduct = colorImgProduct;

            List<SizeProductDetail> sizeProduct = _sizeProductDetailServices.getByProductId(highlightProduct.ID);
            ViewBag.sizeProduct = sizeProduct;
            return View();
        }
    }
}
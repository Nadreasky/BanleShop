using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using BanleWebsite.Services;
using BanleWebsite.Models;

namespace BanleWebsite.Controllers
{
    public class SanphamController : Controller
    {
        ProductServices _productService = new ProductServices();
        ImageServices _imageServices = new ImageServices();
        SizeProductDetailServices _sizeProductDetailServices = new SizeProductDetailServices();

        public ActionResult Index(int? id)
        {
            Product mainProduct = null;
            if (id != null && id.HasValue)
            {
                mainProduct = _productService.findByID(id.Value);
            }
            if (mainProduct == null)
            {
                return RedirectToAction("index", "Home");
            }
            ViewBag.mainProduct = mainProduct;
            List<Product> relativeProducts = _productService.getRelativeProducts(id.Value);
            ViewBag.relativeProducts = relativeProducts;

            List<Category> proTree = _productService.getProductTree(id.Value);
            ViewBag.proTree = proTree;

            List<Image> colorImgProduct = _imageServices.getByProductId(id.Value);
            ViewBag.colorImgProduct = colorImgProduct;

            List<SizeProductDetail> sizeProduct = _sizeProductDetailServices.getByProductId(id.Value);
            ViewBag.sizeProduct = sizeProduct;

            // cap nhat link cho "Quay lai mua sam"
            AddressBar ab = new AddressBar();
            ab.UpdateLinkBackToShopping();

            return View();
        }
        
    }
}
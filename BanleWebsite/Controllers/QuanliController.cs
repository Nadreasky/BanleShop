using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using BanleWebsite.Services;
using Newtonsoft.Json;
using System.IO;
using System.Web.Helpers;

namespace BanleWebsite.Controllers
{
    public class QuanliController : Controller
    {
        CategoryServices _categoryServices = new CategoryServices();
        ProductServices _productServices = new ProductServices();
        ImageServices _imageServices = new ImageServices();

        // GET: Quanli
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Category()
        {
            List<Category> categories = _categoryServices.getAll();
            ViewBag.categories = categories;
            return View();
        }

        public ActionResult Product()
        {
            List<Category> categories = _categoryServices.getAll();
            ViewBag.categories = categories;
            List<Product> products = _productServices.getAll();
            ViewBag.products = products;
            return View();
        }

        public ActionResult Order()
        {
            return View();
        }

        //============START FUNCTION OF PRODUCT=============

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult saveProduct(string id, string productName, string productPrice, string productCateID, string description,
            string quantity, HttpPostedFileBase productImg1, HttpPostedFileBase productImg2, HttpPostedFileBase productImg3)
        {
            int _id = -1;
            double _productPrice = -1;
            int _productCateID = -1;
            int _quantity = -1;
            string filePath1 = "";
            string filePath2 = "";
            string filePath3 = "";
            ViewBag.Error = "";

            if (id == null || id.Equals(""))
            {
                _id = -1;
            }
            else if (int.TryParse(id, out _id) == false)
            {
                ViewBag.Error += "Error: Không thể parse ProductID <br/>";
            }
            if (productName == null || productName.Equals(""))
            {
                ViewBag.Error += "Error: Không có tên sản phẩm <br/>";
            }
            //if (description == null || description.Equals(""))
            //{
            //    error += "Error: Không có mô tả sản phẩm";
            //}
            if (productPrice == null || productPrice.Equals(""))
            {
                _productPrice = 0;
            }
            else if (double.TryParse(productPrice, out _productPrice) == false)
            {
                ViewBag.Error += "Error: Không thể parse giá của sản phẩm <br/>";
            }
            if (productCateID == null || productCateID.Equals(""))
            {
                _productCateID = -1;
            }
            else if (int.TryParse(productCateID, out _productCateID) == false)
            {
                ViewBag.Error += "Error: Không thể parse cateID của sản phẩm <br/>";
            }
            if (quantity == null || quantity.Equals(""))
            {
                _quantity = 0;
            }
            else if (int.TryParse(quantity, out _quantity) == false)
            {
                ViewBag.Error += "Error: Không thể parse quantity của sản phẩm <br/>";
            }
            

            //check image
            if (productImg1 == null && productImg2 == null && productImg3 == null && _productServices.isProductHasImage(_id) == false)
            {
                ViewBag.Error += "Bạn chưa chọn hình ảnh cho sản phẩm, xin hãy chọn ít nhất 1 hình";
            }
            else
            {

                if (productImg1 != null && productImg1.FileName != null)
                {

                    string newPath = Server.MapPath(SLIMCONFIG.PRODUCT_IMG_PATH + "ProductImages");
                    string newPathBig = Server.MapPath(SLIMCONFIG.BIG_PRODUCT_IMG_PATH + "ProductImages");
                    if (!Directory.Exists(newPath))
                    {
                        System.IO.Directory.CreateDirectory(newPath);
                    }
                    if (!Directory.Exists(newPathBig))
                    {
                        System.IO.Directory.CreateDirectory(newPathBig);
                    }
                    WebImage imgBig = _imageServices.reSizeImgBig(productImg1);
                    imgBig.FileName = productImg1.FileName;
                    imgBig.Save(newPathBig + "/" + imgBig.FileName);


                    WebImage img = _imageServices.reSizeImg(imgBig);
                    img.FileName = productImg1.FileName;
                    img.Save(newPath + "/" + img.FileName);
                    //productImg1.SaveAs(newPath + "/" + productImg1.FileName);
                    filePath1 = "/Images/" + "ProductImages/" + productImg1.FileName;
                }
                else
                {
                    //ViewBag.Error += "Thiếu hình ảnh 1 <br/>";
                }
                if (productImg2 != null && productImg2.FileName != null)
                {
                    string newPath = Server.MapPath(SLIMCONFIG.PRODUCT_IMG_PATH + "ProductImages");
                    string newPathBig = Server.MapPath(SLIMCONFIG.BIG_PRODUCT_IMG_PATH + "ProductImages");
                    if (!Directory.Exists(newPath))
                    {
                        System.IO.Directory.CreateDirectory(newPath);
                    }
                    if (!Directory.Exists(newPathBig))
                    {
                        System.IO.Directory.CreateDirectory(newPathBig);
                    }
                    WebImage imgBig = _imageServices.reSizeImgBig(productImg2);
                    imgBig.FileName = productImg2.FileName;
                    imgBig.Save(newPathBig + "/" + imgBig.FileName);


                    WebImage img = _imageServices.reSizeImg(imgBig);
                    img.FileName = productImg2.FileName;
                    img.Save(newPath + "/" + img.FileName);
                    filePath2 = "/Images/" + "ProductImages/" + productImg2.FileName;
                }
                else
                {
                    //ViewBag.Error += "Thiếu hình ảnh 2 <br/>";
                }
                if (productImg3 != null && productImg3.FileName != null)
                {
                    string newPath = Server.MapPath(SLIMCONFIG.PRODUCT_IMG_PATH + "ProductImages");
                    string newPathBig = Server.MapPath(SLIMCONFIG.BIG_PRODUCT_IMG_PATH + "ProductImages");
                    if (!Directory.Exists(newPath))
                    {
                        System.IO.Directory.CreateDirectory(newPath);
                    }
                    if (!Directory.Exists(newPathBig))
                    {
                        System.IO.Directory.CreateDirectory(newPathBig);
                    }
                    WebImage imgBig = _imageServices.reSizeImgBig(productImg3);
                    imgBig.FileName = productImg3.FileName;
                    imgBig.Save(newPathBig + "/" + imgBig.FileName);


                    WebImage img = _imageServices.reSizeImg(imgBig);
                    img.FileName = productImg3.FileName;
                    img.Save(newPath + "/" + img.FileName);
                    filePath3 = "/Images/" + "ProductImages/" + productImg3.FileName;
                }
                else
                {
                    //ViewBag.Error += "Thiếu hình ảnh 3 <br/>";
                }
            }


            if (!"".Equals(ViewBag.Error))
            {
                TempData["error"] = ViewBag.Error;
                return RedirectToAction("Product");
            }

            else
            {
                _productServices.addOrUpdateProduct(_id, productName, _productPrice, _productCateID, description, _quantity, filePath1, filePath2, filePath3);
                return RedirectToAction("Product");
            }
        }

        public Object getProductInfo(int proId)
        {
            return JsonConvert.SerializeObject(_productServices.findByID(proId));
        }

        [HttpPost]
        public string deleteProduct(string proId)
        {
            int _id = -1;
            if (proId == null || proId.Equals(""))
            {
                return "Error: ID không hợp lệ!";
            }
            else if (int.TryParse(proId, out _id) == false)
            {
                return "Error: Lỗi khi parse ID";
            }
            Product p = _productServices.findByID(_id);
            if (p == null)
            {
                return "Error: Không tìm thấy Category yêu cầu!";
            }
            _productServices.delete(p);
            return "Success";
        }

        //=======================END FUNCTION OF PRODUCT==============

        //=======================START FUNCTION OF CATEGORY=============

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult saveCategory(string id, string categoryName, string preCateID)
        {
            ViewBag.Error = "";
            int _id = -1;
            int.TryParse(id, out _id);
            int _preCateID = -1;
            int.TryParse(preCateID, out _preCateID);

            if (categoryName == null || categoryName.Equals(""))
            {
                ViewBag.Error += "Error: Không có tên Category!";
            }
            if (!"".Equals(ViewBag.Error))
            {
                TempData["error"] = ViewBag.Error;
                return RedirectToAction("Category");
            }
            _categoryServices.addOrUpdateCategory(_id, categoryName, _preCateID);

            return RedirectToAction("Category");
        }

        [HttpPost]
        [ValidateInput(false)]
        public string editSubCate(string id, string name)
        {
            ViewBag.Error = "";
            int _id = -1;
            if (id == null || id.Equals(""))
            {
                return "Error: ID không hợp lệ!";
            }
            else if (int.TryParse(id, out _id) == false)
            {
                return "Error: Lỗi khi parse ID";
            }
            if (name == null || name.Equals(""))
            {
                return "Error: Không có tên sub-category";
            }
            Category c = _categoryServices.findByid(_id);
            if (c == null)
            {
                return "Error: Không tìm thấy Category yêu cầu!";
            }
            c.Name = name;
            _categoryServices.addOrUpdateCategory(c.ID, c.Name, (int)c.PreCateID);
            return "success";
        }

        public Object getCategoryInfo(int cateID)
        {
            return JsonConvert.SerializeObject(_categoryServices.findByid(cateID));
        }

        [HttpPost]
        public string deleteCategory(string id)
        {
            int _id = -1;
            if (id == null || id.Equals(""))
            {
                return "Error: ID không hợp lệ!";
            }
            else if (int.TryParse(id, out _id) == false)
            {
                return "Error: Lỗi khi parse ID";
            }
            Category c = _categoryServices.findByid(_id);
            if (c == null)
            {
                return "Error: Không tìm thấy Category yêu cầu!";
            }
            _categoryServices.delete(c);
            return "Success";
        }

        //=======================END FUNCTION OF CATEGORY=============

        //=======================START FUNCTION OF ORDER==============

        public void addOrder()
        {

        }

        public void changeStateOrder()
        {

        }




        //=======================END FUNCTION OF ORDER================

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
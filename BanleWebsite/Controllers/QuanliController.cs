using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using BanleWebsite.Services;
using Newtonsoft.Json;
using System.IO;
using System.Web.Helpers;
using System.Text;
using System.Globalization;
using System.Web.Security;
using BanleWebsite.Models;

namespace BanleWebsite.Controllers
{
    //[AuthLog(Roles = "Admin")]
    public class QuanliController : Controller
    {
        CategoryServices _categoryServices = new CategoryServices();
        ProductServices _productServices = new ProductServices();
        ImageServices _imageServices = new ImageServices();
        OrderServices _orderServices = new OrderServices();
        ColorServices _colorServices = new ColorServices();
        SizeServices _sizeServices = new SizeServices();
        ColorProductDetailServices _colorProductDetailsServices = new ColorProductDetailServices();
        SizeProductDetailServices _sizeProductDetailsServices = new SizeProductDetailServices();


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

        public ActionResult ProductDetails(int? id)
        {

            Product mainProduct = _productServices.findByID(id.Value);
            ViewBag.mainProduct = mainProduct;
            List<Color> allColor = _colorServices.getAll();
            ViewBag.allColor = allColor;
            List<ColorProductDetail> colorMainProduct = _colorProductDetailsServices.getByProductId(id.Value);
            ViewBag.colorMainProduct = colorMainProduct;
            List<SizeProductDetail> sizeMainProduct = _sizeProductDetailsServices.getByProductId(id.Value);
            ViewBag.sizeMainProduct = sizeMainProduct;
            List<Image> imgMainProduct = _imageServices.getByProductId(id.Value);
            ViewBag.imgMainProduct = imgMainProduct;
            List<Size> allSize = _sizeServices.getAll();
            ViewBag.allSize = allSize;
            List<Category> categories = _categoryServices.getAll();
            ViewBag.categories = categories;
            //ProductDetail proDetail = _productDetailServices.finbByProID(id.Value);
            //ViewBag.proDetail = proDetail;

            return View();
        }

        public ActionResult Order()
        {
            
            //var orders = _orderServices.getOrderFilter("Q",2,null,null);
            if(string.IsNullOrWhiteSpace(Request.Form["status"]) == false ||
                string.IsNullOrWhiteSpace(Request.Form["fromDate"]) == false || string.IsNullOrWhiteSpace(Request.Form["toDate"]) == false)
            {
                int? status = Int32.Parse(Request.Form["status"]);
                if (status == -1)
                {
                    status = null;
                }
                DateTime? fromDate = null;
                DateTime? toDate = null;
                List<Order> filteredOrders;
            
                if (string.IsNullOrWhiteSpace(Request.Form["fromDate"]) == false)
                {
                    fromDate = DateTime.ParseExact(Request.Form["fromDate"], "MM/dd/yyyy", CultureInfo.InvariantCulture);
                }
                if (string.IsNullOrWhiteSpace(Request.Form["toDate"]) == false)
                {
                    toDate = DateTime.ParseExact(Request.Form["toDate"], "MM/dd/yyyy", CultureInfo.InvariantCulture);
                }
                    
                   
                filteredOrders = _orderServices.getOrderFilter("", status, fromDate, toDate);
                ViewBag.status = status;
                ViewBag.orders = filteredOrders;
                return View();
               
            }
            else
            {
                List<Order> orders = _orderServices.getAllOrder();
                ViewBag.orders = orders;
            }
            
            return View(); // chua co
        }

        public ActionResult OrderClone()
        {
            List<Order> orders = _orderServices.getAllOrder();
            ViewBag.orders = orders;

            return View();
        }

        //============START FUNCTION OF PRODUCT=============

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult saveProduct(string id, string productName, string productPrice, string productCateID, string description,
            string quantity, HttpPostedFileBase productImg1, HttpPostedFileBase productImg2, HttpPostedFileBase productImg3,
            string featured, string salePercent)
        {
            int _id = -1;
            double _productPrice = -1;
            int _productCateID = -1;
            int _quantity = -1;
            string filePath1 = "";
            string filePath2 = "";
            string filePath3 = "";
            bool _featured = false;
            double _salePercent = 0;
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
            if (featured == null || featured.Equals(""))
            {
                _featured = false;
            }
            _featured = featured == "1";
            if (salePercent == null || salePercent.Equals(""))
            {
                _salePercent = 0;
            }
            else if (double.TryParse(salePercent, out _salePercent) == false)
            {
                ViewBag.Error += "Error: Không thể parse salePercent của sản phẩm <br/>";
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
                _productServices.addOrUpdateProduct(_id, productName, _productPrice, _productCateID, description, _quantity, filePath1, filePath2, filePath3, _featured, _salePercent);
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
            p.isActived = false;
            _productServices.updateProductentity(p);
            return "Success";
        }

        //[HttpPost]
        //public string saveDetailProduct(int id, int featured, string salePercent, string promote )
        //{
        //    double _salePercent = 0;
        //    bool _featured = false;
        //    if (salePercent == null || salePercent.Equals(""))
        //    {
        //        return "Error: salePercent không hợp lệ!";
        //    }
        //    else if (double.TryParse(salePercent, out _salePercent) == false)
        //    {
        //        return "Error: Lỗi khi parse salePercent";
        //    }
        //    if (featured == 1)
        //    {
        //        _featured = true;
        //    }
        //    ProductDetail pd = _productDetailServices.finbByProID(id);
        //    if(pd != null)
        //    {
        //        _productDetailServices.addOrUpdateProductDetail(id, _featured, _salePercent, promote);
        //    }
        //    return "success";
        //}

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
            c.isActived = false;
            _categoryServices.updateCategoryEntity(c);
            return "Success";
        }

        //=======================END FUNCTION OF CATEGORY=============



        //=========================START FUNCTION OF ORDER============================

        //Tìm detail cua order theo OrderID
        public Object getOrderDetail(int id)
        {
            return JsonConvert.SerializeObject(_orderServices.getOrderDetail(id));
        }

        //Tim order theo orderID
        public Object getOrderInfo(int id)
        {
            return JsonConvert.SerializeObject(_orderServices.findOrderByID(id));
        }

        [HttpPost]
        public string UpdateOrderStatus(string id, string status)
        {
            int _id = -1;
            int _status = -1;
            if (id == null || id.Equals(""))
            {
                return "Error: ID không hợp lệ!";
            }
            else if (int.TryParse(id, out _id) == false)
            {
                return "Error: Lỗi khi parse ID";
            }

            if (status == null || status.Equals(""))
            {
                return "Error: status không hợp lệ!";
            }
            else if (int.TryParse(status, out _status) == false)
            {
                return "Error: Lỗi khi parse status";
            }

            Order o = _orderServices.findOrderByID(_id);
            if ( o == null)
            {
                return "Không tìm thấy order yêu cầu";
            }
            o.Status = _status;
            _orderServices.updateOrder(o);

            StringBuilder sb = new StringBuilder();
            sb.Append("Action: UpdateOrderStatus");
            sb.Append(Environment.NewLine);
            sb.Append("Id: ");
            sb.Append(id);
            sb.Append(Environment.NewLine);
            sb.Append("Status: ");
            sb.Append(status);

            WriteLog(sb.ToString());

            return "Success";
        }

        [HttpPost]
        public ActionResult filterOrder(string status, string fromDate, string toDate)
        {
            int _status = -1;
            DateTime _fromDate;
            DateTime _toDate;

            int.TryParse(status, out _status);
            _fromDate = DateTime.ParseExact(fromDate, "MM-dd-yyyy", CultureInfo.InvariantCulture);
            _toDate = DateTime.ParseExact(toDate, "MM-dd-yyyy", CultureInfo.InvariantCulture);

            List<Order> orders = _orderServices.getOrderFilter("", _status, _fromDate, _toDate);
            ViewBag.orders = orders;

            return RedirectToAction("Order");
            
        }

        //==========================END FUNCTION OF ORDER======================

        //========================START FUNCTION OF IMAGE SSERVICES=================

        [HttpPost]
        public ActionResult addColorImgProduct(int colorID, HttpPostedFileBase imgColor, int productID)
        {
            

            string path = "";
            string newPathBig = Server.MapPath(SLIMCONFIG.BIG_PRODUCT_IMG_PATH + "ProductImages");
            WebImage img = _imageServices.reSizeImgBig(imgColor);
            img.FileName = imgColor.FileName;
            img.Save(newPathBig + "/" + img.FileName);
            path = "/BigImages/" + "/Images/" + "ProductImages/" + imgColor.FileName;

            Image imgExist = _imageServices.getAll().FirstOrDefault(a => a.IDColor.Equals(colorID) && a.IDProduct.Equals(productID));
            if (imgExist!=null)
            {
                imgExist.Path = path;
                _imageServices.update(imgExist);
            }
            else
            {
                _imageServices.add(colorID, path, productID);
            }

            
            return RedirectToAction("ProductDetails", new { id = productID});
        }

        [HttpPost]
        public string deleteColorImgProduct(int imageId)
        {
            Image img = new Image();
            img = _imageServices.findByID(imageId);
            _imageServices.delete(img);

            return "Success";
        }



        //[HttpPost]
        //public string addColorImgProduct()
        //{
        //    ResultViewModels result = new ResultViewModels();
        //    string path = "";

        //    if (System.Web.HttpContext.Current.Request.Files.AllKeys.Any())
        //    {
        //        var pic = System.Web.HttpContext.Current.Request.Files["image"];
        //        var proID = Int32.Parse(Request.Form["proID"]);
        //        var colorID = Int32.Parse(Request.Form["colorID"]);

        //        if (pic != null)
        //        {
        //            string newPath = Server.MapPath(SLIMCONFIG.PRODUCT_IMG_PATH + "ProductImages");

        //            if (!Directory.Exists(newPath))
        //            {
        //                System.IO.Directory.CreateDirectory(newPath);
        //            }
        //            pic.SaveAs(newPath + "/" + pic.FileName);
        //            path = "/Images/" + "ProductImages/" + pic.FileName;
        //            _imageServices.add(colorID, path, proID);

        //        }
        //        else
        //        {
        //            return "Tải lên tập tin thất bại";
        //        }
        //    }
        //    else
        //    {
        //        return "Tải lên tập tin thất bại";
        //    }

        //    return "sucess";


            //    //string path = "";
            //    //string newPathBig = Server.MapPath(SLIMCONFIG.BIG_PRODUCT_IMG_PATH + "ProductImages");
            //    //WebImage img = _imageServices.reSizeImgBig(imgColor);
            //    //img.FileName = imgColor.FileName;
            //    //img.Save(newPathBig + "/" + img.FileName);
            //    //path = "/BigImages/" + "/Images/" + "ProductImages/" + imgColor.FileName;
            //    //_imageServices.add(colorID, path, productID);
            //    //return RedirectToAction("ProductDetails", new { id = productID });
        //}

        //========================END FUNCTION OF IMAGE SSERVICES=================

        [HttpPost]
        [ValidateInput(false)]
        public string saveSize(string sizeId, string productId)
        {
            int _sizeID = -1;
            int _proID = -1;
            if (sizeId == null || sizeId.Equals(""))
            {
                return "Error: sizeID không hợp lệ!";
            }
            else if (int.TryParse(sizeId, out _sizeID) == false)
            {
                return "Error: Lỗi khi parse sizeID";
            }
            if (productId == null || productId.Equals(""))
            {
                return "Error: sizeID không hợp lệ!";
            }
            else if (int.TryParse(productId, out _proID) == false)
            {
                return "Error: Lỗi khi parse sizeID";
            }
            SizeProductDetail spd = new SizeProductDetail();
            spd.SizeID = _sizeID;
            spd.ProID = _proID;

            _sizeProductDetailsServices.add(spd);
            return "Success";
        }

        [HttpPost]
        public string deleteSize(string sizeId, string productId)
        {
            int _sizeID = -1;
            int _proID = -1;
            if (sizeId == null || sizeId.Equals(""))
            {
                return "Error: sizeID không hợp lệ!";
            }
            else if (int.TryParse(sizeId, out _sizeID) == false)
            {
                return "Error: Lỗi khi parse sizeID";
            }
            if (productId == null || productId.Equals(""))
            {
                return "Error: sizeID không hợp lệ!";
            }
            else if (int.TryParse(productId, out _proID) == false)
            {
                return "Error: Lỗi khi parse sizeID";
            }
            SizeProductDetail delSizeItem = new SizeProductDetail();
            List<SizeProductDetail> listProSize = _sizeProductDetailsServices.getByProductId(_proID);
            foreach (var item in listProSize)
            {
                if(item.SizeID == _sizeID)
                {
                    delSizeItem = _sizeProductDetailsServices.findByID(item.ID);
                    _sizeProductDetailsServices.delete(delSizeItem);
                    return "Success";
                }
            }
            return "Success";
        }

        //======================END FUNCTION OF ORDER=====================


        [HttpPost]
        //[Route("BigImages/Images/ProductImages")]
        public ActionResult UploadPostImage()
        {
            ResultViewModels result = new ResultViewModels();
            string fileName = "";
            string thumbFileName = "";

            if (System.Web.HttpContext.Current.Request.Files.AllKeys.Any())
            {
                var pic = System.Web.HttpContext.Current.Request.Files["image"];
                int width = Int32.Parse(Request.Form["width"]);
                int height = Int32.Parse(Request.Form["height"]);

                int thumbWidth = Int32.Parse(Request.Form["thumbWidth"]);
                int thumbHeight = Int32.Parse(Request.Form["thumbHeight"]);

                if (pic != null)
                {
                    string newPath = Server.MapPath(SLIMCONFIG.PRODUCT_IMG_PATH + "ProductImages");
                    //string newPathBig = Server.MapPath(SLIMCONFIG.BIG_PRODUCT_IMG_PATH + "ProductImages");
                    if (!Directory.Exists(newPath))
                    {
                        System.IO.Directory.CreateDirectory(newPath);
                    }
                    //WebImage imgBig = _imageServices.reSizeImgBig(productImg1);
                    //imgBig.FileName = productImg1.FileName;
                    //imgBig.Save(newPathBig + "/" + imgBig.FileName);


                    //WebImage img = _imageServices.reSizeImg();
                    pic.SaveAs(newPath + "/" + pic.FileName);

                    object obj = new
                    {
                        imageUrl = "/Images/ProductImages/" + pic.FileName,
                        thumbnailUrl = "/Images/ProductImages/" + pic.FileName,
                    };
                    result.data = obj;
                }
                else
                {

                    result.message = "Tải lên tập tin thất bại";
                }
            }
            else
            {
                //response.StatusCode = -1;
                result.message = "Tải lên tập tin thất bại";
            }

            return Json(result);
        }

        [HttpPost]
        public ActionResult loadMultiColorImage(string ID)
        {
            ResultViewModels result = new ResultViewModels();
            int _ID = -1;
           
            if (ID == null || ID.Equals(""))
            {
                result.message = "Error: sizeID không hợp lệ!";
            }
            else if (int.TryParse(ID, out _ID) == false)
            {
                result.message = "Error: Lỗi khi parse sizeID";
            }

            Image i = _imageServices.findByID(_ID);

            object obj = new
            {
                imageURL = i.Path
            };
            result.data = obj;

            return Json(result);
        }

        public void WriteLog(string text)
        {
            StringBuilder sb = new StringBuilder();

            sb.Append(DateTime.Now.ToLongDateString());
            sb.Append(" - ");
            sb.Append(DateTime.Now.ToLongTimeString());
            sb.Append(Environment.NewLine);

            sb.Append(text);
            sb.Append(Environment.NewLine);
            sb.Append(Environment.NewLine);

            string path = Server.MapPath(Url.Content("~/"));
            //string fileName = Server.MapPath("logYourFashion.txt");
            if (!System.IO.File.Exists(path + "/logYourFashion.txt"))
            {
                System.IO.File.Create(path + "/logYourFashion.txt").Close();
            }
            System.IO.File.AppendAllText(path + "/logYourFashion.txt", sb.ToString());

            sb.Clear();
        }
    }
}
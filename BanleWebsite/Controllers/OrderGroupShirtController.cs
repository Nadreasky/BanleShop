using BanleWebsite.Models;
using BanleWebsite.Services;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Helpers;
using System.Web.Mvc;

namespace BanleWebsite.Controllers
{
    public class OrderGroupShirtController : Controller
    {
        // GET: OrderGroupShirt
        BanleShopEntities db;
        //ResultViewModels result;
        ImageServices _imageServices;

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult AddPattern()
        {
            db = new BanleShopEntities();
            List<EventBackToSchool_Pattern> patterns = db.EventBackToSchool_Pattern.ToList();
            ViewBag.patterns = patterns;
            return View();
        }

        public ActionResult Success(int? id)
        {
            db = new BanleShopEntities();
            EventBackToSchool_Order order = db.EventBackToSchool_Order.First(o => o.Id == id.Value);
            ViewBag.order = order;
            return View();
        }

        public Object GetListColor(int id)
        {
            db = new BanleShopEntities();
            List<EventBackToSchool_Color> listColor = db.EventBackToSchool_Color.Where(c => c.ShirtTypeId == id).ToList();

            //List<Color> listColor = db.Colors.Where(c => c.ID == id.Value).ToList();

            List<string> listColorCode = new List<string>();
            foreach (var item in listColor)
            {
                listColorCode.Add(db.Colors.First(c => c.ID==item.ColorId).ColorCode);
            }

            return JsonConvert.SerializeObject(listColorCode);

            //return Json(JsonConvert.SerializeObject(listColorCode));


            //return Json(result);
        }

        public Object GetListSize(int id)
        {
            db = new BanleShopEntities();
            List<EventBackToSchool_Size> listSize = db.EventBackToSchool_Size.Where(s => s.ShirtTypeId == id).ToList();

            List<string> listSizeName = new List<string>();
            foreach (var item in listSize)
            {
                listSizeName.Add(db.Sizes.First(c => c.ID == item.SizeId).Name);
            }

            return JsonConvert.SerializeObject(listSizeName);
        }

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult savePattern(string patternName, HttpPostedFileBase image)
        {
            db = new BanleShopEntities();
            _imageServices = new ImageServices();

            string filePath = "";

            if (image == null)
            {
                ViewBag.Error += "Bạn chưa chọn hình ảnh cho sản phẩm";
            }
            else
            {
                if (image != null && image.FileName != null)
                {
                    string path = Server.MapPath("~/PatternShop");
                    if(!Directory.Exists(path))
                    {
                        System.IO.Directory.CreateDirectory(path);
                    }
                    WebImage img = _imageServices.reSizeImgBig(image);
                    img.FileName = image.FileName;
                    DateTime dateTime = DateTime.Now;
                    string currentDateTime = dateTime.Day.ToString()
                        + "-" + dateTime.Month.ToString()
                        + "-" + dateTime.Year.ToString()
                        + "-" + dateTime.Hour.ToString()
                        + "-" + dateTime.Minute.ToString()
                        + "-" + dateTime.Second.ToString()
                        + "-" + dateTime.Millisecond.ToString();
                    string extension = img.FileName.Split('.').Last();
                    string savePath = path + "\\" + currentDateTime + "." + extension;
                    img.Save(savePath);
                    filePath = "/PatternShop/" + currentDateTime + "." + extension;
                }
            }

            EventBackToSchool_Pattern pattern = new EventBackToSchool_Pattern();

            pattern.Name = patternName;
            pattern.Link = filePath;

            db.EventBackToSchool_Pattern.Add(pattern);

            try
            {
                db.SaveChanges();

            }
            catch (System.Data.Entity.Validation.DbEntityValidationException dbEx)
            {
                Exception raise = dbEx;
                foreach (var validationErrors in dbEx.EntityValidationErrors)
                {
                    foreach (var validationError in validationErrors.ValidationErrors)
                    {
                        string message = string.Format("{0}:{1}",
                            validationErrors.Entry.Entity.ToString(),
                            validationError.ErrorMessage);
                        // raise a new exception nesting
                        // the current instance as InnerException
                        raise = new InvalidOperationException(message, raise);
                    }
                }
                throw raise;
            }

            return RedirectToAction("AddPattern");
        }

        public ActionResult Save(int? shirtTypeId, string colorId, string sizeId, HttpPostedFileBase image, int quantity,
            string customerName, string email, string phone, string description, string address, int pattern)
        {
            db = new BanleShopEntities();
            _imageServices = new ImageServices();

            string filePath = "";

            if (image == null)
            {
                ViewBag.Error += "Bạn chưa chọn hình ảnh cho sản phẩm";
            }
            else
            {

                if (image != null && image.FileName != null)
                {

                    string newPath = Server.MapPath("~/PatternImages");
                    //string newPathBig = Server.MapPath(SLIMCONFIG.BIG_PRODUCT_IMG_PATH + "ProductImages");
                    if (!Directory.Exists(newPath))
                    {
                        System.IO.Directory.CreateDirectory(newPath);
                    }
                    //if (!Directory.Exists(newPathBig))
                    //{
                    //    System.IO.Directory.CreateDirectory(newPathBig);
                    //}
                    WebImage imgBig = _imageServices.reSizeImgBig(image);
                    imgBig.FileName = image.FileName;
                    DateTime dateTime = DateTime.Now;
                    string currentDateTime = dateTime.Day.ToString()
                        + "-" + dateTime.Month.ToString()
                        + "-" + dateTime.Year.ToString()
                        + "-" + dateTime.Hour.ToString()
                        + "-" + dateTime.Minute.ToString()
                        + "-" + dateTime.Second.ToString()
                        + "-" + dateTime.Millisecond.ToString();
                    string extensionBig = imgBig.FileName.Split('.').Last();
                    string savePathBig = newPath + "\\" + shirtTypeId.Value + currentDateTime + "." + extensionBig;
                    //imgBig.Save(newPathBig + "/" + imgBig.FileName);
                    imgBig.Save(savePathBig);


                    //WebImage img = _imageServices.reSizeImg(imgBig);
                    //img.FileName = image.FileName;
                    //string extension = img.FileName.Split('.').Last();
                    //string savePath = newPath + "\\" + shirtTypeId.Value + currentDateTime + "." + extension;
                    ////img.Save(newPath + "/" + img.FileName);
                    //img.Save(savePath);
                    ////productImg1.SaveAs(newPath + "/" + productImg1.FileName);
                    ////filePath1 = "/Images/" + "ProductImages/" + productImg1.FileName;
                    //filePath = "/Images/" + "ProductImages/" + shirtTypeId.Value + currentDateTime + "." + extension;
                    filePath = "/PatternImages/" + shirtTypeId.Value + currentDateTime + "." + extensionBig;
                }
            }

            EventBackToSchool_Order order = new EventBackToSchool_Order();

            order.ShirtTypeId = shirtTypeId.Value;
            order.ColorId = colorId;
            order.SizeId = sizeId;
            order.LinkImage = filePath;
            order.Quantity = quantity;
            order.CustomerName = customerName;
            order.Email = email;
            order.Phone = phone;
            order.Description = description;
            order.Address = address;
            order.CreateDate = DateTime.Now;
            order.Status = SLIMCONFIG.ORDER_STATUS_UNCHECK;
            order.Pattern = pattern;

            db.EventBackToSchool_Order.Add(order);

            try
            {
                db.SaveChanges();

            }
            catch (System.Data.Entity.Validation.DbEntityValidationException dbEx)
            {
                Exception raise = dbEx;
                foreach (var validationErrors in dbEx.EntityValidationErrors)
                {
                    foreach (var validationError in validationErrors.ValidationErrors)
                    {
                        string message = string.Format("{0}:{1}",
                            validationErrors.Entry.Entity.ToString(),
                            validationError.ErrorMessage);
                        // raise a new exception nesting
                        // the current instance as InnerException
                        raise = new InvalidOperationException(message, raise);
                    }
                }
                throw raise;
            }

            //result = new ResultViewModels();
            //result.data = order;

            return RedirectToAction("Success" , new { id = order.Id });
        }
    }
}
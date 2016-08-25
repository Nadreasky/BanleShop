using BanleWebsite.Models;
using BanleWebsite.Services;
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
        ResultViewModels result;
        ImageServices _imageServices;

        public ActionResult OrderGroupShirt()
        {
            return View();
        }

        public ActionResult GetListColor(int? id)
        {
            db = new BanleShopEntities();
            List<EventBackToSchool_Color> listColor = db.EventBackToSchool_Color.Where(c => c.ShirtTypeId == id.Value).ToList();

            result = new ResultViewModels();
            result.data = listColor;

            return Json(result);
        }

        public ActionResult GetListSize(int? id)
        {
            db = new BanleShopEntities();
            List<EventBackToSchool_Size> listSize = db.EventBackToSchool_Size.Where(s => s.ShirtTypeId == id.Value).ToList();

            result = new ResultViewModels();
            result.data = listSize;

            return Json(result);
        }

        public ActionResult Save(int? shirtTypeId, int? colorId, int? sizeId, HttpPostedFileBase image, int quantity,
            string customerName, string email, string phone, string description)
        {
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
                    string savePathBig = newPathBig + "\\" + shirtTypeId.Value + currentDateTime + "." + extensionBig;
                    //imgBig.Save(newPathBig + "/" + imgBig.FileName);
                    imgBig.Save(savePathBig);


                    WebImage img = _imageServices.reSizeImg(imgBig);
                    img.FileName = image.FileName;
                    string extension = img.FileName.Split('.').Last();
                    string savePath = newPath + "\\" + shirtTypeId.Value + currentDateTime + "." + extension;
                    //img.Save(newPath + "/" + img.FileName);
                    img.Save(savePath);
                    //productImg1.SaveAs(newPath + "/" + productImg1.FileName);
                    //filePath1 = "/Images/" + "ProductImages/" + productImg1.FileName;
                    filePath = "/Images/" + "ProductImages/" + shirtTypeId.Value + currentDateTime + "." + extension;
                }
            }

            EventBackToSchool_Order order = new EventBackToSchool_Order();

            order.ShirtTypeId = shirtTypeId.Value;
            order.ColorId = colorId.Value;
            order.SizeId = sizeId.Value;
            order.LinkImage = filePath;
            order.Quantity = quantity;
            order.CustomerName = customerName;
            order.Email = email;
            order.Phone = phone;
            order.Description = description;

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

            result = new ResultViewModels();
            result.data = order;

            return Json(result);
        }
    }
}
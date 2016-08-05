using BanleWebsite.Services;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BanleWebsite.Controllers
{
    public class AgencyController : Controller
    {
        AgencyServices _agencyServices = new AgencyServices();

        // GET: Agency
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult SubmitAgency(string name, string address, string phone, string email, HttpPostedFileBase fileExcel)
        {
            if (fileExcel != null && fileExcel.FileName != null)
            {

                string newPath = Server.MapPath(SLIMCONFIG.AGENCY_ORDER_EXCEL_PATH);


                string extension = fileExcel.FileName.Split('.').Last();
                string withoutExtension = fileExcel.FileName.Substring(0,fileExcel.FileName.Length - extension.Length-1);
                string savePath = newPath + "\\" + withoutExtension + Guid.NewGuid().ToString() + "."+extension;
                if (!Directory.Exists(newPath))
                {
                    System.IO.Directory.CreateDirectory(newPath);
                }
                fileExcel.SaveAs(savePath);

                Agency agency = new Agency();
                agency.Name = name;
                agency.Address = address;
                agency.Phone = phone;
                agency.Email = email;
                agency.ExcelPath = savePath;
                agency.CreateDate = DateTime.Now;

                _agencyServices.add(agency);

                return RedirectToAction("SubmitAgencyCompleted", "Agency");
            }
            else
            {
                return null;
                //ViewBag.Error += "Thiếu hình ảnh 1 <br/>";
            }

            
        }

        public ActionResult SubmitAgencyCompleted()
        {
            //Invoice invoice = new Invoice();

            //ViewBag.invoice = invoice;

            return View();
        }
    }
}
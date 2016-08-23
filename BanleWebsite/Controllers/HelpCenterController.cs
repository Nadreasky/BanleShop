using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Mvc;
using BanleWebsite.Models;

namespace BanleWebsite.Controllers
{
    public class HelpCenterController : Controller
    {
        // GET: HelpCenter

        public ActionResult Index()
        {
            if(Request.Browser.IsMobileDevice)
            {
                return View("IndexMobile");
            }
            else
            {
                return View();
            }
            
        }
        public ActionResult Quytactrahang()
        {
            if (Request.Browser.IsMobileDevice)
            {
                return View("QTTHMobile");
            }
            else
            {
                return View();
            }
        }
        public ActionResult Quytacgiaohang()
        {
            if (Request.Browser.IsMobileDevice)
            {
                return View("QTGHMobile");
            }
            else
            {
                return View();
            }
        }
        public ActionResult IframeIndex()
        {
            return View();
        }
    }
}
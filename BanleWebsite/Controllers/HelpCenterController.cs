using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BanleWebsite.Controllers
{
    public class HelpCenterController : Controller
    {
        // GET: HelpCenter
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Quytactrahang()
        {
            return View();
        }
        public ActionResult Quytacgiaohang()
        {
            return View();
        }
    }
}
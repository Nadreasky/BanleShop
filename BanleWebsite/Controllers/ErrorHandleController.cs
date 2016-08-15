using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BanleWebsite.Controllers
{
    public class ErrorHandleController : Controller
    {
        // GET: ErrorHandle
        public ActionResult Error()
        {
            return View();
        }
    }
}
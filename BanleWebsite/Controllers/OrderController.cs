using BanleWebsite.Services;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BanleWebsite.Controllers
{
    
    public class OrderController : Controller
    {
        OrderServices _orderServices = new OrderServices();

        // GET: Order
        [Authorize(Roles = "Admin, Manager")]
        public ActionResult Index(int? id)
        {
            Order order = _orderServices.findOrderByID(id.Value);
            ViewBag.order = order;

            return View();
        }

        public ActionResult Search()
        {

            //var orders = _orderServices.getOrderFilter("Q",2,null,null);
            //if (string.IsNullOrWhiteSpace(Request.Form["status"]) == false ||
            //    string.IsNullOrWhiteSpace(Request.Form["fromDate"]) == false || string.IsNullOrWhiteSpace(Request.Form["toDate"]) == false)
            {
                //int? status = Int32.Parse(Request.Form["status"]);
                //if (status == -1)
                //{
                //    status = null;
                //}
                //DateTime? fromDate = null;
                //DateTime? toDate = null;
                List<Order> filteredOrders;

                //if (string.IsNullOrWhiteSpace(Request.Form["fromDate"]) == false)
                //{
                //    fromDate = DateTime.ParseExact(Request.Form["fromDate"], "MM/dd/yyyy", CultureInfo.InvariantCulture);
                //}
                //if (string.IsNullOrWhiteSpace(Request.Form["toDate"]) == false)
                //{
                //    toDate = DateTime.ParseExact(Request.Form["toDate"], "MM/dd/yyyy", CultureInfo.InvariantCulture);
                //}


                filteredOrders = _orderServices.getOrderFilterByPhoneNumber(Request.Form["phoneNo"]);
                //ViewBag.status = null;
                ViewBag.orders = filteredOrders;
                return View();

            }
            //else
            //{
            //    List<Order> orders = _orderServices.getAllOrder();
            //    ViewBag.orders = orders;
            //}

            //return View(); // chua co
        }

        public ActionResult Search2()
        {
            List<Order> filteredOrders;

            filteredOrders = _orderServices.getOrderFilterByPhoneNumber(Request.Form["phoneNo"]);
            ViewBag.orders = filteredOrders;
            return View();
        }
    }
}
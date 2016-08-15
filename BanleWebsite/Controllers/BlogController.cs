using BanleWebsite.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BanleWebsite.Controllers
{
    [AuthLog(Roles = "Admin")]
    public class BlogController : Controller
    {
        NewsServices _newsServices = new NewsServices();
        // GET: Blog
        public ActionResult Index(int? id)
        {
            News news = _newsServices.findByID(id.Value);
            ViewBag.news = news;

            List<News> listNews = _newsServices.getAll();
            List<News> listNews5Items = new List<News>();
            int count = 0;
            if (listNews.Count <= 5)
            {
                listNews5Items = listNews.ToList();
            }
            else
            {
                for (int i = listNews.Count -1 ; i >= 0 & count < 5; i--)
                {
                    listNews5Items.Add(listNews[i]);
                    count++;
                }
            }
            ViewBag.listNews5Items = listNews5Items;

            return View();
        }
    }
}
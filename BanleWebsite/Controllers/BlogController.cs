using BanleWebsite.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BanleWebsite.Controllers
{
    public class BlogController : Controller
    {
        NewsServices _newsServices = new NewsServices();
        // GET: Blog
        public ActionResult Index(int? id)
        {
            News news = _newsServices.findByID(id.Value);
            ViewBag.news = news;

            List<News> listNews = _newsServices.getAll().Where(n => n.Popular == 1).Reverse().ToList();
            List<News> listNews5Items = new List<News>();
            if (listNews.Count <= 5)
            {
                listNews5Items = listNews.ToList();
            }
            else
            {
                for (int i = 0; i < 5; i++)
                {
                    listNews5Items.Add(listNews[i]);
                }
            }
            ViewBag.listNews5Items = listNews5Items;

            return View();
        }
    }
}
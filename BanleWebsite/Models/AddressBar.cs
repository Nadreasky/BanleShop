using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BanleWebsite.Models
{
    public class AddressBar
    {
        public void UpdateLinkBackToShopping()
        {
            string link = HttpContext.Current.Request.Url.AbsoluteUri;
            HttpContext.Current.Session.Add("BackToShopping", link);
        }

        public string GetLinkBackToShopping()
        {
            if (HttpContext.Current.Session["BackToShopping"] == null)
            {
                return "/";
            }
            string link = HttpContext.Current.Session["BackToShopping"].ToString();
            return link;
        }
    }
}
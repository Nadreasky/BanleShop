using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace BanleWebsite
{
    public class SeoFriendlyRoute : Route
    {
        public SeoFriendlyRoute(string url, RouteValueDictionary defaults, IRouteHandler routeHandler) : base(url, defaults, routeHandler)
        {
        }

        public override RouteData GetRouteData(HttpContextBase httpContext)
        {
            var routeData = base.GetRouteData(httpContext);

            if (routeData != null)
            {
                if (routeData.Values.ContainsKey("id"))
                    routeData.Values["id"] = GetIdValue(routeData.Values["id"]);
            }

            return routeData;
        }

        private object GetIdValue(object id)
        {
            if (id != null)
            {
                string idValue = id.ToString();
                //var regex = new Regex(@"^(?<id>\d+).*$");
                var regex = new Regex(@"^*.(?<id>\d+)$");
                var match = regex.Match(idValue);

                if (match.Success)
                {
                    return match.Groups["id"].Value;
                }
            }

            return id;
        }
    }
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapRoute(
                name: "ProductDetails",
                url: "Quanli/ProductDetails/{id}",
                defaults: new { controller = "Quanli", action = "ProductDetails" }
            );

            //routes.MapRoute(
            //    name: "DanhMuc",
            //    url: "DanhMuc/{id}",
            //    defaults: new { controller = "DanhMuc", action = "Index" }
            //);
            //routes.Add("ProductMange", new SeoFriendlyRoute("Quanli/ProductDetails/{id}",
            //    new RouteValueDictionary(new { controller = "Quanli", action = "ProductDetails" }),
            //    new MvcRouteHandler()));

            routes.Add("DanhMuc", new SeoFriendlyRoute("DanhMuc/{id}",
                new RouteValueDictionary(new { controller = "DanhMuc", action = "Index" }),
                new MvcRouteHandler()));

            //routes.MapRoute(
            //    name: "SanPhamDetail",
            //    url: "Sanpham/{id}",
            //    defaults: new { controller = "Sanpham", action = "Index" }
            //);

            routes.Add("SanPhamDetail", new SeoFriendlyRoute("Sanpham/{id}",
                new RouteValueDictionary(new { controller = "Sanpham", action = "Index" }),
                new MvcRouteHandler()));

            routes.Add("Blog", new SeoFriendlyRoute("Blog/{id}",
                new RouteValueDictionary(new { controller = "Blog", action = "Index" }),
                new MvcRouteHandler()));

            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional }
            );
            
        }
    }
}

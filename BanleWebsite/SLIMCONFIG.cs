﻿using BanleWebsite.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;

namespace BanleWebsite
{
    public class SLIMCONFIG
    {
        public static int NONE_PRE_CATEGORY = -1;
        public static string PRODUCT_IMG_PATH = "~/Images/";
        public static string BIG_PRODUCT_IMG_PATH = "~/BigImages/Images/";
        public static string BIG_PRODUCT_IMG_PATH_WEB = "/BigImages";
        public static string AGENCY_ORDER_EXCEL_PATH = "~/AgencyOrder";
        public static int PRODUCT_IMG_WIDTH = 300;
        public static int PRODUCT_IMG_HEIGHT = 100000;
        public static int BIG_PRODUCT_IMG_WIDTH = 900;
        public static int BIG_PRODUCT_IMG_HEIGHT = 100000;
        public static int ORDER_STATUS_UNCHECK = 1; // dang xu li
        public static int ORDER_STATUS_CHECKED = 2; // dang giao hang
        public static int ORDER_STATUS_PAID = 3; // da xong
        public static int ORDER_STATUS_CANCEL = 4;
        public static bool PRODUCT_IS_ACTIVED = true;
        public static bool PRODUCT_FEATURED_TRUE = true;
        public static bool PRODUCT_FEATURED_FALSE = false;
        public static int POPULAR_NEWS = 1;
        public static List<string> FASHION_PRODUCT_CATEGORIES = new List<string>(new string[] { "Áo thun in hình", "Áo thun cung hoàng đạo", "Áo thun đôi", "Áo thun nhóm", "Áo thun gia đình",
            "Hàng thiết kế", "Hàng xuất khẩu" });
        //public static List<string> HOMEPAGE_SHOW_CATEGORIES = new List<string>(new string[] { "Áo thun đơn", "Áo thun cặp đôi / nhóm", "Áo thun cung hoàng đạo", "Hàng xuất khẩu", "Tai nghe Yison" });
        public static List<CateAndShowNumber> CATE_AND_SHOW_ITEM = new List<CateAndShowNumber>()
        {
            new CateAndShowNumber() {name = "Áo thun in hình", noOfItem = 8 },
            new CateAndShowNumber() {name = "Áo thun cung hoàng đạo", noOfItem = 12 },
            new CateAndShowNumber() {name = "Áo thun đôi", noOfItem = 8 },
            new CateAndShowNumber() {name = "Áo thun nhóm", noOfItem = 8 },
            new CateAndShowNumber() {name = "Áo thun gia đình", noOfItem = 8 },
            new CateAndShowNumber() {name = "Hàng thiết kế", noOfItem = 12 },
            new CateAndShowNumber() {name = "Hàng xuất khẩu", noOfItem = 12 },
            new CateAndShowNumber() {name = "Tai nghe Yison", noOfItem = 4 }
        };
        public static string GenerateSlug(int ID, string Name)
        {
            VietnameseSymbol vs = new VietnameseSymbol();
            string phrase = string.Format("{0}-{1}", vs.ClearSymbol(Name), ID);

            string str = RemoveAccent(phrase).ToLower();
            str = Regex.Replace(str, @"[^a-z0-9\s-]", "");
            str = Regex.Replace(str, @"\s+", " ").Trim();
            str = str.Substring(0, str.Length <= 200 ? str.Length : 200).Trim();
            str = Regex.Replace(str, @"\s", "-");
            return str;
        }

        private static string RemoveAccent(string text)
        {
            byte[] bytes = System.Text.Encoding.GetEncoding("Cyrillic").GetBytes(text);
            return System.Text.Encoding.ASCII.GetString(bytes);
        }

        
    }
}
﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BanleWebsite
{
    public class SLIMCONFIG
    {
        public static int NONE_PRE_CATEGORY = -1;
        public static string PRODUCT_IMG_PATH = "~/Images/";
        public static string BIG_PRODUCT_IMG_PATH = "~/BigImages/Images/";
        public static string BIG_PRODUCT_IMG_PATH_WEB = "/BigImages";
        public static string AGENCY_ORDER_EXCEL_PATH = "~/AgencyOrder/";
        public static int PRODUCT_IMG_WIDTH = 300;
        public static int PRODUCT_IMG_HEIGHT = 100000;
        public static int BIG_PRODUCT_IMG_WIDTH = 900;
        public static int BIG_PRODUCT_IMG_HEIGHT = 100000;
        public static int ORDER_STATUS_UNCHECK = 1;
        public static int ORDER_STATUS_CHECKED = 2;
        public static int ORDER_STATUS_PAID = 3;
        public static int ORDER_STATUS_CANCEL = 4;
        public static bool PRODUCT_IS_ACTIVED = true;
        public static bool PRODUCT_FEATURED_TRUE = true;
        public static bool PRODUCT_FEATURED_FALSE = false;
    }
}
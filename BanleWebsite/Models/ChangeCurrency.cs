using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;

namespace BanleWebsite.Models
{
    public class ChangeCurrency
    {
        public static string NayThiCurrency(string money)
        {
            int len = money.Length;
            for (int i = len - 1; i > 0; i--)
            {
                if (((len - i) % 3) == 0)
                {
                    money = money.Insert(i, ".");
                }
            }
            return money;
        }
    
    }
}
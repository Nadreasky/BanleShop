//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace BanleWebsite
{
    using Models;
    using System;
    using System.Collections.Generic;
    using System.Text.RegularExpressions;

    public partial class News
    {
        public int ID { get; set; }
        public string Title { get; set; }
        public string ShortDes { get; set; }
        public string Content { get; set; }
        public string MainImage { get; set; }
        public Nullable<int> Popular { get; set; }
        public Nullable<System.DateTime> CreateDate { get; set; }

        public string GenerateSlug()
        {
            VietnameseSymbol vs = new VietnameseSymbol();
            string phrase = string.Format("{0}-{1}", vs.ClearSymbol(Title), ID);
            string str = RemoveAccent(phrase).ToLower();
            str = Regex.Replace(str, @"[^a-z0-9\s-]", "");
            str = Regex.Replace(str, @"\s+", " ").Trim();
            str = str.Substring(0, str.Length <= 200 ? str.Length : 200).Trim();
            str = Regex.Replace(str, @"\s", "-");
            return str;
        }
        private string RemoveAccent(string text)
        {
            byte[] bytes = System.Text.Encoding.GetEncoding("Cyrillic").GetBytes(text);
            return System.Text.Encoding.ASCII.GetString(bytes);
        }
    }
}

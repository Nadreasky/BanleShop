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
    using System;
    using System.Collections.Generic;
    
    public partial class EventBackToSchool_Order
    {
        public int Id { get; set; }
        public int ShirtTypeId { get; set; }
        public string ColorId { get; set; }
        public string SizeId { get; set; }
        public string LinkImage { get; set; }
        public int Quantity { get; set; }
        public string CustomerName { get; set; }
        public string Email { get; set; }
        public string Phone { get; set; }
        public string Description { get; set; }
        public Nullable<System.DateTime> CreateDate { get; set; }
        public string Address { get; set; }
        public Nullable<int> Status { get; set; }
        public Nullable<int> Pattern { get; set; }
    }
}

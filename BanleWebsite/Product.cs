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
    
    public partial class Product
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Product()
        {
            this.ColorProductDetails = new HashSet<ColorProductDetail>();
            this.Images = new HashSet<Image>();
            this.OrderDetails = new HashSet<OrderDetail>();
            this.SizeProductDetails = new HashSet<SizeProductDetail>();
        }
    
        public int ID { get; set; }
        public string Name { get; set; }
        public int CateID { get; set; }
        public Nullable<double> Price { get; set; }
        public string Descriptions { get; set; }
        public Nullable<int> Quantity { get; set; }
        public string Img1 { get; set; }
        public string Img2 { get; set; }
        public string Img3 { get; set; }
        public Nullable<double> OldPrice { get; set; }
        public Nullable<bool> isActived { get; set; }
        public Nullable<bool> Featured { get; set; }
        public Nullable<double> SalePercent { get; set; }
        public string Promotion { get; set; }
        public Nullable<bool> isPromoted { get; set; }
        public Nullable<System.DateTime> ExpiredDate { get; set; }
    
        public virtual Category Category { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ColorProductDetail> ColorProductDetails { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Image> Images { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<OrderDetail> OrderDetails { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SizeProductDetail> SizeProductDetails { get; set; }
    }
}

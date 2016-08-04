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
    using Newtonsoft.Json;
    using System;
    using System.Collections.Generic;
    using System.Runtime.Serialization;

    [JsonObject(IsReference = true)]
    public partial class Color
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Color()
        {
            this.ColorProductDetails = new HashSet<ColorProductDetail>();
            this.Images = new HashSet<Image>();
            this.OrderDetails = new HashSet<OrderDetail>();
        }
    
        public int ID { get; set; }
        public string Name { get; set; }
        public string ColorCode { get; set; }


        //[JsonIgnore]
        //[IgnoreDataMember]
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ColorProductDetail> ColorProductDetails { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Image> Images { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<OrderDetail> OrderDetails { get; set; }
    }
}

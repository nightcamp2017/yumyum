//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace YumYum
{
    using System;
    using System.Collections.Generic;
    
    public partial class OrderDetail
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public OrderDetail()
        {
            this.OnlineOrderings = new HashSet<OnlineOrdering>();
        }
    
        public int OrderDetailId { get; set; }
        public int FoodItemId { get; set; }
        public int MeatTypeId { get; set; }
        public int SpicinessLevelId { get; set; }
        public int PriceId { get; set; }
        public int Quantity { get; set; }
    
        public virtual FoodItem FoodItem { get; set; }
        public virtual MeatType MeatType { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<OnlineOrdering> OnlineOrderings { get; set; }
        public virtual PriceList PriceList { get; set; }
        public virtual SpicinessLevel SpicinessLevel { get; set; }
    }
}

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
    
    public partial class OnlineOrdering
    {
        public int OnlineOrderId { get; set; }
        public int LoginId { get; set; }
        public int CustomerId { get; set; }
        public int OrderDetailId { get; set; }
        public System.DateTime OrderedDate { get; set; }
        public System.TimeSpan EstimatedPickupTime { get; set; }
        public decimal TotalPrice { get; set; }
    
        public virtual Customer Customer { get; set; }
        public virtual LogInDetail LogInDetail { get; set; }
        public virtual OrderDetail OrderDetail { get; set; }
    }
}

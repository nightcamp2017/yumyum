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
    
    public partial class OnlineBooking
    {
        public int OnlineBookingId { get; set; }
        public int PersonId { get; set; }
        public Nullable<int> LoginId { get; set; }
        public System.DateTime BookingDate { get; set; }
        public System.TimeSpan BookingTime { get; set; }
        public int NumberOfPeople { get; set; }
        public string Note { get; set; }
    
        public virtual LogInDetail LogInDetail { get; set; }
        public virtual Person Person { get; set; }
    }
}

//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Data.DB
{
    using System;
    using System.Collections.Generic;
    
    public partial class Order
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Order()
        {
            this.MembersPointHistories = new HashSet<MembersPointHistory>();
            this.Notifications = new HashSet<Notification>();
            this.OrderItems = new HashSet<OrderItem>();
        }
    
        public int ID { get; set; }
        public string Code { get; set; }
        public Nullable<int> CustomerID { get; set; }
        public Nullable<double> Distance { get; set; }
        public long Discount { get; set; }
        public long TotalPrice { get; set; }
        public int Status { get; set; }
        public System.DateTime CreateDate { get; set; }
        public int IsActive { get; set; }
        public string BuyerName { get; set; }
        public string BuyerPhone { get; set; }
        public string BuyerAddress { get; set; }
        public string Note { get; set; }
        public Nullable<int> PointAdd { get; set; }
        public Nullable<int> Agent_id { get; set; }
        public Nullable<System.DateTime> ConfirmDate { get; set; }
        public Nullable<System.DateTime> CompletionDate { get; set; }
        public Nullable<double> lon { get; set; }
        public Nullable<double> lat { get; set; }
        public string listCustomer { get; set; }
        public Nullable<int> LastPushAt { get; set; }
        public string DeviceID { get; set; }
    
        public virtual Customer Customer { get; set; }
        public virtual Customer Customer1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<MembersPointHistory> MembersPointHistories { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Notification> Notifications { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<OrderItem> OrderItems { get; set; }
    }
}

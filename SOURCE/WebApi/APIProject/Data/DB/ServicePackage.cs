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
    
    public partial class ServicePackage
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ServicePackage()
        {
            this.BuyPackageHistories = new HashSet<BuyPackageHistory>();
        }
    
        public int ID { get; set; }
        public string PackageName { get; set; }
        public int Point { get; set; }
        public long Price { get; set; }
        public int IsActive { get; set; }
        public System.DateTime CraeteDate { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<BuyPackageHistory> BuyPackageHistories { get; set; }
    }
}

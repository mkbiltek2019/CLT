//------------------------------------------------------------------------------
// <auto-generated>
//     此代码已从模板生成。
//
//     手动更改此文件可能导致应用程序出现意外的行为。
//     如果重新生成代码，将覆盖对此文件的手动更改。
// </auto-generated>
//------------------------------------------------------------------------------

namespace ChuangLitouP2P.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class hx_Channel
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public hx_Channel()
        {
            this.hx_Channel_AdminUser = new HashSet<hx_Channel_AdminUser>();
        }
    
        public int ChannelID { get; set; }
        public string ChannelName { get; set; }
        public string Invitedcode { get; set; }
        public string Creator { get; set; }
        public System.DateTime CreateTime { get; set; }
        public System.DateTime UpdateTime { get; set; }
        public byte Status { get; set; }
        public string type { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<hx_Channel_AdminUser> hx_Channel_AdminUser { get; set; }
    }
}

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
    
    public partial class V_DepUserLimitInfo
    {
        public int id { get; set; }
        public int ParentId { get; set; }
        public string ControllerName { get; set; }
        public string ActionName { get; set; }
        public Nullable<int> level { get; set; }
        public Nullable<int> SortId { get; set; }
        public Nullable<int> isDel { get; set; }
        public string lastOper { get; set; }
        public Nullable<System.DateTime> lastTime { get; set; }
        public Nullable<System.DateTime> CreatTime { get; set; }
        public Nullable<int> limitType { get; set; }
        public Nullable<int> departmentId { get; set; }
        public Nullable<int> adminUserId { get; set; }
        public int relationId { get; set; }
        public string title { get; set; }
    }
}

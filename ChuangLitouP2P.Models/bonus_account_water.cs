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
    
    public partial class bonus_account_water
    {
        public int account_water_id { get; set; }
        public Nullable<int> bonus_account_id { get; set; }
        public Nullable<int> membertable_registerid { get; set; }
        public Nullable<decimal> income { get; set; }
        public Nullable<decimal> expenditure { get; set; }
        public Nullable<System.DateTime> time_of_occurrence { get; set; }
        public Nullable<decimal> reward_balance { get; set; }
        public string award_description { get; set; }
        public Nullable<int> water_type { get; set; }
        public Nullable<System.DateTime> Createtime { get; set; }
    }
}

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
    
    public partial class hx_td_SMS_record
    {
        public int sms_record_id { get; set; }
        public Nullable<int> senduserid { get; set; }
        public string phone_number { get; set; }
        public string smscontext { get; set; }
        public Nullable<int> smstype { get; set; }
        public Nullable<System.DateTime> sendtime { get; set; }
        public Nullable<decimal> orderid { get; set; }
        public string vcode { get; set; }
        public Nullable<int> hits { get; set; }
        public string ip { get; set; }
    }
}
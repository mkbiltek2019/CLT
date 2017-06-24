﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ChuanglitouP2P.Model.chinapnr.QueryBalance
{
    public class M_QueryBalance
    {
        /// <summary>
        /// 版本号
        /// </summary>
        public string Version { get; set; }

        /// <summary>
        /// 消息类型
        /// </summary>
        public string CmdId{get;set;}

        /// <summary>
        /// 商户客户号
        /// </summary>
        public string MerCustId { get; set; }

        /// <summary>
        /// 用户客户号
        /// </summary>
        public string UsrCustId { get; set; }

        /// <summary>
        /// 签名
        /// </summary>
        public string ChkValue { get; set; }



    }
}

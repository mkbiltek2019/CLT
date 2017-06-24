﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ChuanglitouP2P.Model.chinapnr.FssTrans
{
    public class ReFssTrans
    {
        /// <summary>
        /// 消息类型
        /// </summary>
        public string CmdId { set; get; }

        /// <summary>
        /// 应签返回码
        /// </summary>
        public string RespCode { set; get; }

        /// <summary>
        /// 应答描述
        /// </summary>
        public string RespDesc { set; get; }
        /// <summary>
        /// 商户客户号
        /// </summary>
        public string MerCustId { set; get; }
        /// <summary>
        /// 用户客户号
        /// </summary>
        public string UsrCustId { set; get; }

        /// <summary>
        /// 订单号
        /// </summary>
        public string OrdId { set; get; }

        /// <summary>
        /// 订单日期
        /// </summary>
        public string OrdDate { set; get; }
        /// <summary>
        /// 生利宝交易类型
        /// </summary>
        public string TransType { set; get; }
        /// <summary>
        /// 交易金额
        /// </summary>
        public string TransAmt { set; get; }

        /// <summary>
        /// 页面返回URL
        /// </summary>
        public string RetUrl { set; get; }

        /// <summary>
        /// 商户后台应答地址
        /// </summary>
        public string BgRetUrl { set; get; }

        /// <summary>
        /// 商户私有域
        /// </summary>
        public string MerPriv { set; get; }

        /// <summary>
        /// 返参扩展域
        /// </summary>
        public string RespExt { set; get; }
        /// <summary>
        /// 签名
        /// </summary>
        public string ChkValue { set; get; }


    }
}

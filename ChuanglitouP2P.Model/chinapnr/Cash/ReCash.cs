﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ChuanglitouP2P.Model.chinapnr.Cash
{
    public class ReCash
    {
        /// <summary>
        /// 消息类型
        /// </summary>
        public string CmdId { set; get; }
        /// <summary>
        /// 应答返回码
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
        /// 订单号
        /// </summary>
        public string OrdId { set; get; }
        /// <summary>
        /// 用户客户号
        /// </summary>
        public string UsrCustId { set; get; }
        /// <summary>
        /// 交易金额
        /// </summary>
        public string TransAmt { set; get; }
        /// <summary>
        /// 实际到账金额
        /// </summary>
        public string RealTransAmt{ get; set; }
        /// <summary>
        /// 开户银行账号
        /// </summary>
        public string OpenAcctId { set; get; }
        /// <summary>
        /// 开户银行代号
        /// </summary>
        public string OpenBankId { set; get; }
        /// <summary>
        /// 手续费金额
        /// </summary>
        public string FeeAmt { set; get; }
        /// <summary>
        /// 手续费扣款客户号
        /// </summary>
        public string FeeCustId { set; get; }
        /// <summary>
        /// 手续费扣款子账户号
        /// </summary>
        public string FeeAcctId { set; get; }
        /// <summary>
        /// 商户收取服务费金额
        /// </summary>
        public string ServFee { set; get; }
        /// <summary>
        /// 商户子账户号
        /// </summary>
        public string ServFeeAcctId { set; get; }
        /// <summary>
        /// 页面返回URL
        /// </summary>
        public string RetUrl { set; get; }
        /// <summary>
        ///商户后台应答地址 
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

    //public class MerPrivC {
    //    //[{\"FeeObjFlag\":\"U\",\"FeeAcctId\":\"MDT000001\",\"CashChl\":\"IMMEDIATE\"}]
    //    /// <summary>
    //    /// 手续费付款方（商家：M，用户：U）
    //    /// </summary>
    //    public string FeeObjFlag{get;set;}
    //    public string FeeAcctId { get; set; }
    //    /// <summary>
    //    /// 提现方式，GENERAL:一般提现  FAST:快速取现  IMMEDIATE:即时取现
    //    /// </summary>
    //    public string CashChl { get; set; }
    //}
}
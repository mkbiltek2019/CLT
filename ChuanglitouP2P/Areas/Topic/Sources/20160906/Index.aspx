﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="ChuanglitouP2P.topic._20160906.Index" %>

<%@ Register Src="/WebUserControl/head.ascx" TagName="head" TagPrefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>创利投邀请好友_成功注册送50元现金_好友投资领0.5%现金奖励-创利投
    </title>
    <meta name="description" content="创利投邀请好友来赚钱，邀请好友送50元现金，更能坐享好友前三次投资额的0.5%现金奖励，邀请越多，奖励越多，挂牌上市企业创利投等您呼朋唤友来赚钱！" />
    <meta name="keywords" content="创利投邀请好友,创利投返现金,p2p网贷邀请活动,创利投邀请奖励,创利投活动" />
    <link href="/topic/20160906/css/newStyle2.css" rel="stylesheet" />
    <script src="/topic/20160906/js/jquery-1.9.1.min.js"></script>
    <script src="/topic/20160906/js/Validform_v5.3.2_min.js"></script>
    <script src="/topic/20160906/js/layer.min.js"></script>
    <script src="/topic/20160906/js/countUp.js"></script>
</head>

<body>
    
    <script type="text/javascript">
        var _oztime = (new Date()).getTime();
    </script>

    <link rel="stylesheet" href="css/style.css?v=2" />
    <link rel="stylesheet" href="css/common.css" />
    <script type="text/javascript" src="js/index.js"></script>
    <script charset="utf-8" src="http://wpa.b.qq.com/cgi/wpa.php"></script>
    <script type="text/javascript">
        BizQQWPA.addCustom({ aty: '0', a: '0', nameAccount: 4008902226, selector: 'BizQQWPA' });
        BizQQWPA.addCustom({ aty: '0', a: '0', nameAccount: 4008902226, selector: 'BizQQWPA1' });
        BizQQWPA.addCustom({ aty: '0', a: '0', nameAccount: 4008902226, selector: 'BizQQWPA2' });
    </script>


    <script type="text/javascript">
        var _adwq = _adwq || [];
        _adwq.push(['_setAccount', 'xfowj']);
        _adwq.push(['_setDomainName', '.chuanglitou.com']);
        _adwq.push(['_trackPageview']);

        (function () {
            var adw = document.createElement('script');
            adw.type = 'text/javascript';
            adw.async = true;
            adw.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://s') + '.emarbox.com/js/adw.js';
            var s = document.getElementsByTagName('script')[0];
            s.parentNode.insertBefore(adw, s);
        })();
    </script>


    <script type="text/javascript">
        var editwindow;
        $(function () {

            document.getElementById("ttzcode").value = GetQueryString("ttzcode");
            document.getElementById("regid").value = GetQueryString("regid");

            $(".registerform").Validform({
                tiptype: 4,
                ajaxPost: true,

                callback: function (data) {
                    if (data.rs == "y") {
                        layer.msg("注册成功，正在转向第三方托管账户...", 3, 1);
                        location.href = data.url;
                    }
                    else {
                        layer.msg("" + data.error + "", 1, 5);
                    }
                }
            });

            $.extend($.Datatype, {
                "z2-4": /^[\u4E00-\u9FA5\uf900-\ufa2d]{2,4}$/,
                "d": /^(\d{4})\-(\d{2})\-(\d{2})$/,
                "day1": /^[1-2]\d{0,1}$|^28$/,
                "mobile": /^0?(13[0-9]|15[012356789]|18[0123456789]|17[0123456789]|14[57])[0-9]{8}$/,
                "regex": /^[^\u4E00-\u9FA5]{3,20}$/,
                "regex1": /^[0-9A-Za-z]{6,25}$/

            });

            $(document).keyup(function (event) {
                if (event.keyCode == 13) {
                    $("#butreg").trigger("click");
                }
            });






            $("#smscode").click(function () {
                var mobile = $("#mobile").val();

                if (mobile == null || mobile.length <= 0) {
                    layer.alert("手机号不能为空");
                    return false;
                }
                else {
                    var re = /^0?(13[0-9]|15[012356789]|18[0123456789]|17[0-9]|14[57])[0-9]{8}$/;
                    if (re.test(mobile) == false) {
                        layer.alert("手机号格式不对!");
                        $("#mobile").val("");
                        return false;
                    }
                }
                $.post("checkregister.html?action=mobile&method=post", { "param": mobile }, function (msg) {

                    if (msg == "手机号已被注册!") {

                        layer.alert(msg);
                    }
                    else {

                        $.post("/usercenter/usercenter.html?action=Regsmscode&method=post", { "mobile": mobile }, function (msg) {
                            var data = JSON.parse(msg);
                            if (data.rs == "y") {
                                settime();
                                layer.msg("" + data.info + "", 2, 1);
                            }
                            else {
                                if (data.info == "v") {
                                    df("sms");
                                } else {
                                    layer.msg("" + data.info + "", 2, 5);
                                    $("#mobile").val("");
                                }
                            }
                        });
                    }
                }
                );
            });
           
            $("#vcodec").click(function () {
                var mobilec = $("#mobile").val();
              
                var urlc = "checkregister.html?action=vcodec&mobile=" + mobilec;
                $("#vcodec").attr("ajaxurl", urlc);
            });
        });
      

        function changeImg() {
            $("#image1").attr("src", "Validate.html?a=" + Math.random());
        }

         function df(sms) {        
         var pageii = $.layer({
             type: 1,
             title: false,
             area: ['700px', '460px'],
             border: [0],
             closeBtn: [0, false],
             shift: 'top',
             bgcolor: '',
             page: {
                 //html: '<div class="reg_pop_wrap"  id="vcodet" >    <div class="reg_pop_box" style=" width:480px; height:220px; background:#fff; position:fixed; left:50%; top:50%; z-index:99; margin:-160px 0 0 -290px; padding:50px;">    	<div style="font-size:14px; font-weight:bold;">填写验证码完成短信发送</div>        <div style="width:100%; float:left; margin:30px 0 0 0;"><span style="float:left; margin:0 20px 0 0;">验证码：<input  id="Validatecode"  name="" type="text" style="width:160px; height:42px; line-height:42px; border:1px solid #d6d6d6; color:#333; text-indent:5px;" /></span><span><img id="image1" src="Validate.html?a=" style="cursor:pointer;width:104px;height:43px; border:hidden;" onclick="javascript:changeImg();" /></span></div>        <div><input  id="codebtn" name="" value="发送短信" type="button" style="width:162px; height:45px; line-height:45px; font-size:18px; color:#fff; text-align:center; background:#f76b1e; border:none; cursor:pointer; margin:25px 0 0 48px;font-family:microsoft YaHei;" />    <input id = "pagebtn"  name="" value="关闭窗口" type="button" style="width:162px; height:45px; line-height:45px; font-size:18px; color:#fff; text-align:center; background:#00af96; border:none; cursor:pointer; margin:25px 0 0 48px;font-family:microsoft YaHei;" /></div>    </div></div>'

             }
         });
         $('#pagebtn').on('click', function () {
             layer.close(pageii);
         });
         $('#codebtn').on('click',function()
         {    
             var validvcode = $('#Validatecode').val()

             var mobile = $("#mobile").val();

             if (validvcode == null || validvcode.length <= 0)
             {
                 layer.alert("验证码不能为空");
                 return false;
             }
             if (mobile == null || mobile.length <= 0) {
                 layer.alert("手机号不能为空");
                 return false;
             }
             else {
                 var re = /^0?(13[0-9]|15[012356789]|18[0123456789]|17[0-9]|14[57])[0-9]{8}$/;
                 if (re.test(mobile) == false) {
                     layer.alert("手机号格式不对!");
                     $("#mobile").val("");
                     return false;
                 }
             }  
             $.post("checkregister.html?action=mobile&method=post", { "param": mobile, }, function (msg) {

                 if (msg == "手机号已被注册!") {
                     layer.alert(msg);
                 }
                 else {                    
                     if (sms == "ad") {
                         $.post("/usercenter/usercenter.html?action=vsmscode&method=post", { "mobile": mobile, "vcode": validvcode }, function (msg) {
                             var data = JSON.parse(msg);
                             if (data.rs == "y") {
                                 settime1();
                                 layer.close(pageii);
                                 layer.msg("" + data.info + "", 5, 1);
                             }
                             else {
                                     layer.msg("" + data.info + "", 2, 5);
                             }

                         });

                     }
                     else {
                         $.post("/usercenter/usercenter.html?action=Regsmscode&method=post", { "mobile": mobile, "vcode": validvcode }, function (msg) {
                             var data = JSON.parse(msg);
                             if (data.rs == "y") {
                                 settime();
                                 layer.close(pageii);
                                 layer.msg("" + data.info + "", 2, 1);
                             }
                             else {
                                 if (data.info == "v") {
                                     layer.close(pageii);
                                     df("sms");
                                 } else {
                                     layer.msg("" + data.info + "", 2, 5);
                                 }
                             }

                         });
                     }
                 }

             }
             );        
         });

         changeImg();
     }

     function GetQueryString(name) {
         var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
         var r = window.location.search.substr(1).match(reg);
         if (r != null) return unescape(r[2]); return null;
     }

     function changeImg() {
         $("#image1").attr("src", "Validate.html?a=" + Math.random());
     }

        var countdown = 60;
        function settime() {
            if (countdown == 1) {
                $("#smscode").removeAttr("disabled");
                $("#smscode").val("发送验证码");
                $("#yuyin_code").slideDown();
                countdown = 60;
            } else {
                $("#smscode").attr("disabled", true);
                $("#smscode").val("" + countdown + "秒后可重发");
                countdown--;
                if (countdown > 0) {
                    setTimeout(function () {
                        settime()
                    }, 1000)
                }
            }
        }

       

    </script>
    <script type="text/javascript">
        var _oztime = (new Date()).getTime();
    </script>




    <script type="text/javascript">
        var _adwq = _adwq || [];
        _adwq.push(['_setAccount', 'xfowj']);
        _adwq.push(['_setDomainName', '.chuanglitou.com']);
        _adwq.push(['_trackPageview']);

        (function () {
            var adw = document.createElement('script');
            adw.type = 'text/javascript';
            adw.async = true;
            adw.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://s') + '.emarbox.com/js/adw.js';
            var s = document.getElementsByTagName('script')[0];
            s.parentNode.insertBefore(adw, s);
        })();
    </script>
    <!--头部-->

    <div class="w_logo">
        <div class="w_logo1">
            <a id="w_logo1_index" href="/"></a>
            <div class="dengluBox">
                <span>已有账户？  </span>
                <a href="http://www.chuanglitou.com/login.html">立即登录</a>
                <span class="tel">热线电话：400-890-2226</span>
            </div>
        </div>
    </div>

    <style>
        .zc_register {
            padding-top: 15px;
        }

            .zc_register ul {
                margin-top: 0;
            }

        .Validform_checktip {
            display: block;
            width: 100%;
        }
    </style>
    <div class="zc_n_body">

        <div class="zc_n_top">
            <div class="zc_n_banner">
                <!--<div class="zc_n_box">            
                
                <div class="ban_xf2">安全、权威、专业</div>
                <div class="ban_xf3">年化收益率&nbsp;<span>8%~12%</span></div>
                <a class="ban_xf_input" href="/register.html">注册领50元红包</a>
                <div class="ban_xf4">已有账号？<a href="/usercenter/index.html" class="ban_xf_a">马上登录</a></div>
            </div>-->
                <form id="form1" class="registerform" action="checkregister.html" method="post">
                    <div class="zc_register">
                        <div class="ban_xf1">收益稳健<span>8%-12%</span></div>
                        <div class="login_info_box">
                            <input type="hidden" id="register" name="action" value="register" />
                            <input type="hidden" id="ttzcode" name="ttzcode" value="" />
                            <input type="hidden" id="regid" name="regid" value="" />
                            <ul>
                                <li class="login_left"><span class="color_red">*</span>手机号</li>
                                <li>
                                    <input name="mobile" type="text" id="mobile" class="login_txt" ajaxurl="checkregister.html?action=mobile" datatype="mobile" nullmsg="请填写手机号！" errormsg="手机号格式不对！" /><span class="reg_icon phone_icon"></span><span class="Validform_checktip"></span></li>
                            </ul>
                            <ul>
                                <li class="login_left"><span class="color_red">*</span>验证码</li>
                                <li>
                                    <input name="vcodec" id="vcodec" type="text" ajaxurl="checkregister.html?action=vcodec" datatype="*" nullmsg="请填写验证码！" class="login_txt yzm_txt" /><span><input name="smscode" id="smscode" value="获取短信验证码" class="obtain_btn" type="button" /></span><span class="reg_icon plane_icon"></span></li>
                            </ul>
                            <ul id="yuyin_code" style="display: none;">
                                <li class="login_left">&nbsp;</li>
                                <li><span style="float: left; margin: 0 10px 0 0;"><b>如您无法收到短信验证码</b>，请</span><a href="javascript:void(0)" id="vsmscode" class="color_orange">获取语音验证码</a></li>
                            </ul>
                            <ul>
                                <li class="login_left"><span class="color_red">*</span>密码</li>
                                <li>
                                    <input name="userpassword" type="password" id="userpassword" class="login_txt" datatype="*6-16" nullmsg="请设置密码！" errormsg="密码范围在6~16位之间！" /><span class="reg_icon password_icon"></span></li>
                            </ul>
                            <ul>
                                <li class="login_left"><span class="color_red">*</span>确认密码</li>
                                <li>
                                    <input name="reuserpassword" type="password" id="reuserpassword" class="login_txt" datatype="*" recheck="userpassword" nullmsg="请再输入一次密码！" errormsg="您两次输入的账号密码不一致！" /><span class="reg_icon passwordc_icon"></span></li>
                            </ul>

                            <div class="clear"></div>
                            <div class="login_xy">
                                <label>
                                    <input name="services" type="checkbox" id="services" value="1" checked="checked" />我已阅读并接受《<a href="/chuanglitou.pdf" target="_blank"> 创利投注册协议 </a>》
                                </label>
                            </div>
                            <div>
                                <input type="submit" name="butreg" id="butreg" value="注册领188元" class="login_btn" />
                            </div>
                            <div class="login_anquan">您的信息已通过SSL加密保护，数据传输安全！</div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <div class="shouyiBox">
            <h2>截至目前已为小伙伴赚取收益（元）</h2>
            <%--<asp:Literal runat="server" ID="ltrIncome"></asp:Literal>--%>
            <%--<p><span>1</span>,<span>2</span><span>3</span><span>4</span>,<span>5</span><span>6</span><span>7</span>,<span>8</span><span>9</span><span>4</span>.<span>0</span><span>0</span></p>--%>
            <%--<p id="tg-pank" data-spark="<%=GetTmpData() %>">
            </p>--%>
            <script type="text/javascript">
                $(function () {
                    var options = {
                        useEasing: true,
                        useGrouping: true,
                        separator: ',',
                        decimal: '.',
                        prefix: '<span>',
                        suffix: '</span>'
                    };
                    var demo = new CountUp("tg-pank", 0, parseFloat($("#tg-pank").data("spark")), 2, 2.5, options);
                    demo.start();
                });
            </script>
        </div>
        <div class="zc_n_02 zc_n_h2">
            <h2>新人见面礼</h2>
            <div class="zc_n_cont2 zc_n_cont21">
                <dl class="list-libao">
                    <dt class="libao1"></dt>

                    <dd><a href="#" target="_self" class="zc_n_link1"></a></dd>
                </dl>

                <dl class="list-libao">
                    <dt class="libao2"></dt>

                    <dd><a href="#" target="_self" class="zc_n_link2"></a></dd>
                </dl>
            </div>
        </div>
        <div class="zc_n_05 zc_n_h5">
            <h2>高息福利项目</h2>
            <div class="zc_n_cont5 zc_n_cont51">
                <%--<dl class="list-libao">
            	<a href="#">
                    <dt class="libao1">
                        <div class="libao1_jindu">
                            <div>
                                <p style="width:50%;"></p>
                            </div>
                            <span>50%</span>   
                        </div>  
                        <div class="libao1_main">
                            <div class="libao1_main_1">
                                <p class="libao1_main_1_biaoti">创业贷-clt2016IC148</p>
                            </div>
                            <div class="libao1_main_2 libao1_diyi">
                                <h3>12.00</h3>
                                <small>%</small>
                            </div>
                            <div class="libao1_main_3">
                                <p><span>6</span>个月</p>
                            </div>
                        </div>                                                  
                    </dt>
                </a>
            </dl>
            
            <dl class="list-libao">
            	<a href="#">
                    <dt class="libao2">
                        <div class="libao2_jindu">
                            <div>
                                <p style="width:63%;"></p>
                            </div>
                            <span>63%</span>   
                        </div>
                        <div class="libao1_main">
                            <div class="libao1_main_1">
                                <p class="libao1_main_1_biaoti">投房贷-clt2016HT125</p>
                            </div>
                            <div class="libao1_main_2 libao1_dier">
                                <h3>10.00</h3>
                                <small>%</small>
                            </div>
                            <div class="libao1_main_3">
                                <p><span>3</span>个月</p>
                            </div>
                        </div>                                                  
                    </dt>
                </a>
            </dl>

            <dl class="list-libao">
            	<a href="#">
                    <dt class="libao3">
                        <div class="libao3_jindu">
                            <div>
                                <p style="width:47%;"></p>
                            </div>
                            <span>47%</span>   
                        </div>
                        <div class="libao1_main">
                            <div class="libao1_main_1">
                                <p class="libao1_main_1_biaoti">投房贷-clt2016HT144</p>
                            </div>
                            <div class="libao1_main_2 libao1_disan">
                                <h3>8.00</h3>
                                <small>%</small>
                            </div>
                            <div class="libao1_main_3">
                                <p><span>1</span>个月</p>
                            </div>
                        </div>                                                   
                    </dt>
                </a>
            </dl>--%>
                <asp:Literal runat="server" ID="ltrBorrowintTargets"></asp:Literal>
            </div>
        </div>
        <div class="zc_n_01 zc_n_h2">
            <h2>创利投平台优势</h2>
            <div class="zc_n_cont1">
                <dl class="zc_n_dl01">
                    <dt>交易监管</dt>
                    <dd>北京股权交易所挂牌上市<br>
                        代码：ZS1380</dd>
                </dl>
                <dl class="zc_n_dl02">
                    <dt>严谨风控</dt>
                    <dd>八重风控体系<br>
                        项目规范透明</dd>
                </dl>
                <dl class="zc_n_dl03">
                    <dt>资金安全</dt>
                    <dd>第三方资金存管<br>
                        银行级风控监管</dd>
                </dl>
                <div class="zc_n_cont1_bottom">
                    <h3>只需5步，轻松理财</h3>
                    <p>
                        <img src="/topic/20160906/images/touziliucheng.png">
                    </p>
                    <a href="#">我要赚钱</a>
                </div>
            </div>

        </div>


    </div>
    <div class="reg_pop_wrap" id="vcodet" style="display: none">
        <div class="reg_pop_bglayer"></div>
        <div class="reg_pop_box">
            <div class="reg_pop_tit">填写验证码完成短信发送</div>
            <div class="reg_pop_item"><span style="float: left; margin: 0 20px 0 0;">验证码：<input name="" type="text" class="yzm_txt" /></span><span><img src="http://www.chuanglitou.com/Validate.html?a=5260713079" /></span></div>
            <div>
                <input name="" value="发送短信" type="button" class="yz_btn" />
            </div>
        </div>
    </div>
    <script src="/topic/20160906/js/o_code.js"></script>
</body>
</html>

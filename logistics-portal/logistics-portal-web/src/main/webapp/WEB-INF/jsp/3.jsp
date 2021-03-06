<%--
  Created by IntelliJ IDEA.
  User: 123
  Date: 2018/9/13
  Time: 21:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head><title>火箭快递 -网上寄件 </title>
    <meta name="keywords" content="火箭,快递, 火箭快递,速递">
    <meta name="description" content="火箭快递是火箭集团旗下专业快递品牌，以“精彩生活，快递欢乐”为理念，为用户提供“年轻、快乐”的快递服务">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
    <meta http-equiv="Pragma" content="no-cache"/>
    <meta http-equiv="Cache-Control" content="no-cache"/>
    <meta http-equiv="Expires" content="0"/>
    <link rel="shortcut icon" type="image/x-icon"
          href="${pageContext.request.contextPath}/static/picture/logo_index.png"/>
    <link href="${pageContext.request.contextPath}/static/css/34569ca159a5425d9e005f44c29de30f.css" rel="stylesheet"/>

    <link href="${pageContext.request.contextPath}/static/css/a3540cf49de74b5991b92af9f638acfa.css" rel="stylesheet"/>

    <link href="${pageContext.request.contextPath}/static/css/88fdca44dd2c4197a4c5a6e5d89ad4e8.css" rel="stylesheet"/>


    <link href="${pageContext.request.contextPath}/static/css/671df183b46e4449aba533898b6ada9c.css" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/lib/layui/css/layui.css"/>

    <style>
        .onlineSever {
            position: fixed;
            top: 240px;
            left: 50%;
            margin-left: -680px;
        }

        .seviceSize {
            display: block;
            width: 220px;
            height: 180px;
            z-index: 10;
        }

        .seviceSizeR {
            display: block;
            width: 180px;
            height: 180px;
            z-index: 10;
        }

        .seviceSizeSubR {
            display: block;
            width: 160px;
            height: 60px;
            z-index: 10;
        }

        .seviceSizeSub {
            display: block;
            width: 160px;
            height: 60px;
            margin-left: 25px;
            z-index: 10;
        }
    </style>
    <script src="${pageContext.request.contextPath}/static/js/38780ed6f8824109983931d9fa32da20.js"></script>
    <script>
        var urlConfig = {
            web: "",
            api: "/htwebapi",
            q9api: "/q9api",
            wx: "/wxapi",
            wxplatform: "http://psapi.appl.800best.com/",
            weixinappid: "wx61af89c230ee8c23",
            wxVerificationCodePath: "/security/sendsms"
        };
        var appConfig = {
            appId: "HTWeb",
            userId: "",
            userName: ""
        }
        var app = {}
        $(function () {
            $(':text, textarea').placeholder();
        });
    </script>
</head>
<body>
<div class="topnav">
    <div class="container clearfix">
        <img onclick="window.open('http://webcs.800best.com/smWeb.html', 'webcs', 'width=750,height=600,toolbar=no, menubar=no, scrollbars=no, resizable=yes,location=no, status=no,center=yes');"
             src="${pageContext.request.contextPath}/static/picture/minionlinesevice.png"
             style="position:absolute;right:0;top:0;cursor:pointer"/>
        <span class="pull-left">
            <a href="http://www.800best.com" target="_blank">火箭集团官网</a> |
            <a href="javascript:void(0);" class="addFavorite">加入收藏</a> |
            <a href="javascript:void(0);" class="follow-wx">关注微信</a> |
            <a href="javascript:void(0);" class="follow-wxxcx">使用微信小程序</a> |
            <a href="javascript:void(0);" class="follow-alipay">关注支付宝服务窗</a> |
        </span>
    </div>
</div>
<div class="modal hide fade wx-box p20" id="wx-box" style="text-align: center; width: 360px; margin-left: -180px;">
    <%--<img src="picture/wx.jpg"/>--%>
    <div class="text-center" style="background: #ff3d3b">
        <p class="font14 font-white">用微信扫一扫</p>

        <p class="font12 font-white">关注火箭快递官方微信</p>
    </div>
</div>
<div class="modal hide fade wxxcx-box p20" id="wxxcx-box"
     style="text-align: center; width: 360px; margin-left: -210px;">
    <%--<img src="picture/wxxcx.jpg"/>--%>
    <!--<div class="text-center" style="background: #ff3d3b">
        <p class="font14 font-white">用微信扫一扫</p>
        <p class="font12 font-white">关注火箭快递官方微信</p>
    </div>-->
</div>
<div class="modal hide fade alipay-box p20" id="alipay-box" style="text-align: center;width:360px;margin-left:-240px;">
    <%--<img src="picture/alipay_qr.jpg"/>--%>

    <div class="text-center" style="background:#ff3d3b">
        <p class="font14 font-white">用支付宝扫一扫</p>

        <p class="font12 font-white">关注火箭快递服务窗</p>
    </div>
</div>
<script>
    $(document).ready(function () {
        $(".follow-wx").popover({
            html: true,
            trigger: 'hover',
            content: $('#wx-box').html(),
            placement: 'bottom'
        });
        $(".follow-alipay").popover({
            html: true,
            trigger: 'hover',
            content: $('#alipay-box').html(),
            placement: 'bottom'
        })
        $(".follow-wxxcx").popover({
            html: true,
            trigger: 'hover',
            content: $('#wxxcx-box').html(),
            placement: 'bottom'
        })
        // $(".follow-wx").bind("click", function () {
        //     var detail = $('#wx-box')

        //     detail.modal('show')
        // })

    })
</script>
<div class="nav main-nav" id="main-nav">
    <div class="container">
        <div class="border-line hide"></div>
        <div class="logo pull-left">
            <a href="/" title="火箭快递">
                <img src="${pageContext.request.contextPath}/static/picture/logo_index.png" alt="火箭快递">
            </a>
        </div>
        <ul id="main-nav-wrap" class="unstyled inline clearfix pull-right">
            <li><a href="/">首 页</a></li>
            <li><a href="/Bill/Track">查 件</a></li>
            <li><a href="/Order/Create">寄 件</a></li>
            <li><a href="javascript:void(0);">网 点</a>
                <ul class="unstyled hide" style="position: absolute;left : -20px;width : 85px;">
                    <li><a href="/Site/Query">火箭快递站点</a></li>
                    <li><a href="/Site/ServiceQuery">火箭快递服务点</a></li>
                </ul>
            </li>
            <li>
                <a href="javascript:void(0);">产品服务</a>
                <ul class="unstyled hide">
                    <li><a href="/Best/Products">快递</a></li>
                    <li><a href="http://www.800best.com/freight/" target="_blank">快运</a></li>
                    <li><a href="http://www.800best.com/supply-chain/" target="_blank">云仓</a></li>
                </ul>
            </li>
            <li><a href="/News/List">新闻中心</a></li>
            <li><a href="javascript:void(0);">企业服务</a>
                <ul class="unstyled hide">
                    <li><a href="http://www.800best.com/express/partner/" target="_blank">加盟合作</a></li>
                    <li><a href="/static/Index/70EBB44ADC5E52ED" target="_blank">采购招标</a></li>
                </ul>
            </li>
            <li><a href="/Help" style="padding-right:0;">帮助中心</a></li>
        </ul>
    </div>
</div>
<div class="flexslider slide   orderslide" id="slide">
</div>
<div class="main">
    <div class="container">
        <h2 class="title">
            <i class="icon icon-s1 icon-send"></i>
            寄件
        </h2>

        <div class="box send-box row">
            <div class="span span9 web-order">
                <h3> ◆ 网上寄件 ◆
                    <small>上门取件时间以客服电话确认为准。</small>
                </h3>
                <form action="/Order/Result" class="form-horizontal mt10 layui-form layui-form-pane" id="send-form"
                      method="post">
                    <fieldset class="send-container layui-elem-field">
                        <input type="hidden" id="fromaid" name="fromaid">
                        <input type="hidden" id="fromprov" name="fromprov">
                        <input type="hidden" id="fromcity" name="fromcity">
                        <input type="hidden" id="fromcounty" name="fromcounty">
                        <strong>寄件人信息</strong>
                        <hr/>
                        <div class="control-group">

                            <label class="control-label" for="name"><span class="font-red">*</span> 姓名</label>

                            <div class="controls">
                                <input type="text" class="input-medium name-input" id="name" name="fromname">
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="fromphone"><span class="font-red">*</span> 手机/固话</label>

                            <div class="controls">
                                <input type="text" class="input-medium name-input" id="fromphone" name="fromphone">
                            </div>
                        </div>
                        <div class="control-group layui-form-item">
                            <label class="control-label">
                                <span class="font-red">*</span> 省</label>

                            <div class="controls">
                                <div class="layui-input-inline">
                                    <select id="P1" name="sp" lay-filter="province" class="layui-input-inline P1">
                                        <option></option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="control-group layui-form-item">
                            <label class="control-label">
                                <span class="font-red">*</span> 市(区)</label>

                            <div class="controls">
                                <div class="layui-input-inline">
                                    <select id="C1" name="sc" lay-filter="city" class="layui-input-inline C1">
                                        <option></option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="control-group layui-form-item">
                            <label class="control-label">
                                <span class="font-red">*</span> 县</label>

                            <div class="controls">
                                <div class="layui-input-inline">
                                    <select id="A1" name="sa" lay-filter="area" class="layui-input-inline A1">
                                        <option></option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label"></label>
                            <div class="controls">
                                <input type="text" class="input-xlarge span5" name="fromaddress"
                                       placeholder="详细地址（街道门牌信息）">
                            </div>
                        </div>
                    </fieldset>
                    <fieldset class="receive-container">
                        <input type="hidden" name="toaid" id="toaid">
                        <input type="hidden" name="toprov" id="toprov">
                        <input type="hidden" name="tocity" id="tocity">
                        <input type="hidden" name="tocounty" id="tocounty">
                        <strong>收件人信息</strong>
                        <hr style="margin-left: 15px"/>
                        <div class="control-group">
                            <label class="control-label">姓名</label>
                            <div class="controls">
                                <input type="text" class="input-medium name-input" name="toname">
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">手机/固话</label>
                            <div class="controls">
                                <input type="text" class="input-medium name-input" name="tophone">
                            </div>
                        </div>
                        <div class="control-group layui-form-item">
                            <label class="control-label">
                                <span class="font-red">*</span> 省</label>
                            <div class="controls">
                                <div class="layui-input-inline">
                                    <select name="tp" lay-filter="province" class="layui-input-inline P1">
                                        <option></option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="control-group layui-form-item">
                            <label class="control-label">
                                <span class="font-red">*</span> 市(区)</label>
                            <div class="controls">
                                <div class="layui-input-inline">
                                    <select name="tc" lay-filter="city" class="layui-input-inline C1">
                                        <option></option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="control-group layui-form-item">
                            <label class="control-label">
                                <span class="font-red">*</span> 县</label>
                            <div class="controls">
                                <div class="layui-input-inline">
                                    <select name="ta" lay-filter="area" class="layui-input-inline A1">
                                        <option></option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label"></label>
                            <div class="controls">
                                <input type="text" class="input-xlarge span5" name="toaddress"
                                       placeholder="详细地址（街道门牌信息）">
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
                        <strong style="padding-left: 16px;">物品信息</strong>
                        <hr/>
                        <div class="control-group">
                            <!-- Select Basic -->
                            <label class="control-label">请选择重量</label>

                            <div class="controls input-medium">
                                <select class="input-medium name-input " name="weight">
                                    <option> 1公斤以下</option>
                                    <option> 1-5公斤</option>
                                    <option> 5公斤以上</option>
                                </select>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label"></label>
                            <!-- Multiple Checkboxes -->
                            <div class="controls">
                                <!-- Inline Checkboxes -->
                                <label class="checkbox inline">
                                    <input type="checkbox" value="1" name="isbig">
                                    我的货物不重，但是体积很大
                                </label>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">备注</label>

                            <div class="controls">
                                <input type="text" class="input-xlarge span5" name="remark"
                                       placeholder="易碎品、液体、贵重物品等请特别说明">&nbsp;&nbsp;&nbsp;&nbsp;<a class="font-blue"
                                                                                                  href="/static/Index/28B9E6753B7C2055"
                                                                                                  target="_blank">禁寄须知</a>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">附加服务</label>
                            <!-- Multiple Checkboxes -->
                            <div class="controls">
                                <!-- Inline Checkboxes -->
                                <label class="checkbox inline">
                                    <input type="checkbox" value="1" name="issv" id="issv">
                                    物品保价
                                </label>
                                <label class="checkbox inline">
                                    <input type="checkbox" value="1" name="iscod" id="iscod">
                                    代收货款
                                </label>
                            </div>
                        </div>
                        <div id="sv-detail" class="hide">
                            <div class="control-group">
                                <label class="control-label">保价类型</label>
                                <!-- Multiple Checkboxes -->
                                <div class="controls">
                                    <!-- Inline Checkboxes -->
                                    <label class="radio inline">
                                        <input type="radio" value="1" name="vtype">
                                        文件类不高于2000元
                                    </label>
                                    <label class="radio inline">
                                        <input type="radio" value="1" name="vtype">
                                        非文件类不高于5000
                                    </label>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">声明价值</label>
                                <div class="controls">
                                    <input type="text" class="input-medium" name="sv"> 元
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label"></label>
                                <div class="controls font-red">
                                    说明：保价费用为声明价值的1%，最低收费5元，尾数遵循四舍五入的原则。
                                    <br>1、快件声明价值不得超过快件实际价值，文件类最高声明价值不超过2000元，非文件类最高声明价值不超过5000元；
                                    <br>2、若未选择保价，火箭快递对月结客户在不超过运费五倍的限额内，非月结客户在不超过运费三倍的限额内赔偿托寄物损失的实际价值。若选择保价，火箭快递按托寄物的声明价值和损失比例赔偿，托寄物声明价值高于实际价值的，按实际价值赔偿。
                                </div>
                            </div>
                        </div>
                        <div id="cod-detail" class="hide">
                            <div class="control-group">
                                <label class="control-label">代收货款备注</label>
                                <div class="controls">
                                    <div class="textarea">
                                        <textarea class="span5" name="cod"
                                                  placeholder="请简单描述需求，下单之后等待工作人员的联系哦~"></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label"></label>

                                <div class="controls font-red">
                                    说明：当前只在上海、杭州两个城市提供代收货款服务
                                    <br>物品范围：符合快件承运范围，同时代收货款金额在2500元（含）内的货物。
                                    <br>需提供的资料：需与此货物相符的收款凭证，如货物发票或收据的原件。如寄方客户与收件人约定无须收款凭证，则以运单为收款依据。
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <div class="control-group text-center">
                        <button type="button" id="send-btn" class="btn blue high wide">确认下单</button>
                    </div>
                    <div class="alert alert-info hide" id="alert">
                    </div>
                </form>
            </div>
            <!--在线客服-->
            <div class="onlineSever seviceSize">
                <a class="seviceSize" href="javascript:void(0);"
                   onclick="window.open('#', 'webcs', 'width=750,height=600,toolbar=no, menubar=no, scrollbars=no, resizable=yes,location=no, status=no,center=yes');">
                    <img src="${pageContext.request.contextPath}/static/picture/onlinesevice.png" alt=""/>
                </a>
            </div>
            <div class="span span3">
                <div class="order-divider" style="display:none">
                    <h3 class="bg-white">◆费用时效参考◆</h3>
                </div>
                <div class="calculator">
                    <div class="tabs1" id="tabSelect">
                        <span class="tab1 bk-select" id="in">国内件</span>
                        <span class="tab1 bk-noselect" id="out">国际件</span>
                    </div>
                    <div class="calculator-wrap">
                        <div class="calculator-item">
                            <label style="padding-top:5px;">
                                始发地
                            </label>
                            <select id="from">
                                <option>北京</option>
                            </select>
                        </div>
                        <div class="calculator-item">
                            <label style="padding-top:5px;">
                                目的地
                            </label>
                            <select id="to">
                                <option>北京</option>
                            </select>
                        </div>
                        <div style="border-bottom:1px solid #ccc;margin-bottom:20px;"></div>
                        <div class="calculator-item">
                            <label>
                                首重
                            </label>

                            <small>元/kg</small>
                            <span id="first"></span>
                        </div>
                        <div class="calculator-item">
                            <label>
                                续重
                            </label>
                            <small>元/kg</small>
                            <span id="added"></span>
                        </div>
                        <div class="calculator-item" style="display:none">
                            <label>
                                时效
                            </label>

                            <small>天</small>
                            <span id="days"></span>

                        </div>
                        <div style="margin-top : 20px;color:#999;">
                            <small>注：线上下单以官网价格为准；线下通知站点收取件，在官网价格的基础上浮动30%左右，具体的以站点收取为准。</small>
                        </div>
                    </div>
                    <div class="calculator-wrap" style="display:none;">
                        <div class="calculator-item">
                            <label style="padding-top:5px;">
                                物品类型
                            </label>
                            <select id="goodsType">
                                <option>文件</option>
                            </select>
                        </div>
                        <div class="calculator-item">
                            <label style="padding-top:5px;">
                                目的地
                            </label>
                            <select id="foreignCountry" title="吉尔吉斯斯坦（肯尼西亚Kirghizia）">
                                <option>北京</option>
                            </select>
                        </div>
                        <div style="border-bottom:1px solid #ccc;margin-bottom:20px;"></div>
                        <div class="calculator-item">
                            <label>
                                首重
                            </label>
                            <small class="unit">元/kg</small>
                            <span id="firstInternation"></span>
                        </div>
                        <div class="calculator-item">
                            <label>
                                续重
                            </label>

                            <small class="unit">元/kg</small>
                            <span id="addedInternation"></span>

                        </div>
                        <div class="calculator-item" style="display:none">
                            <label>
                                时效
                            </label>

                            <small>天</small>
                            <span id="days"></span>

                        </div>
                        <div style="margin-top : 20px;color:#999;">
                            <small>注：燃油附加费按每月实际产生计算；如是泡货按站点换算为准；偏远超区费按实际产生为准；本价格默认始发地为中国，与实际收件价格有50%上下的浮动。</small>
                        </div>
                    </div>
                </div>

                <div class="order-divider">

                    <h3 class="bg-white">◆手机寄件◆</h3>
                </div>

                <p class="text-center">
                    <img style="margin-top: 15px" src="${pageContext.request.contextPath}/static/picture/alipay_qr.jpg"
                         alt="支付宝二维码">
                    <br>
                    <span class="font16">支付宝扫一扫</span>
                    <br>
                    <br>
                    就能立即下单<br>
                    还能随时掌握快件动态
                </p>

                <div class="order-divider">
                    <h3 class="bg-white">◆其他寄件方式◆</h3>
                </div>
                <div class="text-center">
                    <a class="seviceSizeR" href="javascript:void(0);"
                       onclick="window.open('#', 'webcs', 'width=750,height=600,toolbar=no, menubar=no, scrollbars=no, resizable=yes,location=no, status=no,center=yes');">
                        <img src="${pageContext.request.contextPath}/static/picture/onlinesevice.png"/>
                    </a>
                </div>


                <p style="border:0"></p>
            </div>
        </div>


    </div>
</div>

<div class="footer">
    <div class="container">
        <div class="row">
            <div class="span span2">
                <dl>
                    <dt class="foot-blue">企业服务</dt>
                    <dd><a class="foot-blue" href="http://www.800best.com/express/partner/" target="_blank">加盟合作</a>
                    </dd>
                    <dd><a class="foot-blue" href="/static/Index/70EBB44ADC5E52ED" target="_blank">采购招标</a></dd>
                    <dd><a class="foot-blue" href="http://inner.800bestex.com:8090/" target="_blank">站点登录入口</a></dd>
                </dl>
            </div>
            <div class="span span2">
                <dl>
                    <dt>查询·寄件</dt>
                    <dd><a href="/bill/track">运单追踪</a></dd>
                    <dd><a href="/order/create">寄件</a></dd>
                    <dd><a href="/Site/Query">网点</a></dd>
                    <dd><a href="/Best/Products">产品服务</a></dd>
                    <dd><a class="foot-red" href="/static/Index/28B9E6753B7C2055" target="_blank">禁寄须知</a></dd>
                </dl>
            </div>

            <div class="span span2">
                <dl>
                    <dt>关于我们</dt>
                    <dd><a href="/news/list">新闻中心</a></dd>
                    <dd><a target="_blank" href="http://www.800best.com/hr">人才招聘</a></dd>
                    <!-- <dd><a href="#">关于火箭快递</a></dd> -->
                    <dd><a href="/home/About">关于火箭快递</a></dd>
                    <dd><a target="_blank" href="http://www.800best.com ">火箭物流</a></dd>
                </dl>
            </div>
            <div class="span span2">
                <dl>
                    <dt>帮助中心</dt>

                    <dd class="">95320</dd>
                    <dd><a href="javascript:void(0);"
                           onclick="window.open('http://webcs.800best.com/smWeb.html', 'webcs', 'width=750,height=600,toolbar=no, menubar=no, scrollbars=no, resizable=yes,location=no, status=no,center=yes');">在线客服</a>
                    </dd>
                    <dd><a href="javascript:void(0);"
                           onclick="window.open('http://webcs.800best.com/smWeb.html', 'webcs', 'width=750,height=600,toolbar=no, menubar=no, scrollbars=no, resizable=yes,location=no, status=no,center=yes');">投诉与建议</a>
                    </dd>
                    <dd></dd>
                    <dd><a href="/static/Index/BB4318709137ED52">各地客服电话</a></dd>
                </dl>
            </div>
            <div class="span wx-span" style="float:right">
                <div class="divider">
                    <div>微信公众号</div>
                </div>
                <div class="row mt30">
                    <div class="span text-center">
                        <div>
                            <img src="${pageContext.request.contextPath}/static/picture/htewm.png" alt="访问火箭快递官方微博">
                        </div>
                        <div class="mt10 pt5">火箭快递</div>
                    </div>
                    <div class="span text-center" style="float: right">
                        <div>
                            <img src="${pageContext.request.contextPath}/static/picture/rcewm.png" alt="火箭招聘">
                        </div>
                        <div class="mt10 pt5">火箭招聘</div>
                    </div>
                </div>

            </div>
        </div>
        <div class="copy row">
            <div class="span span1">
                <a href="http://www.spb.gov.cn" target="_blank" title="中华人民共和国国家邮政局">
                    <img src="${pageContext.request.contextPath}/static/picture/f1.png" alt="中华人民共和国国家邮政局">
                </a>
                <a href="http://www.cea.org.cn" target="_blank" title="中国快递协会">
                    <img src="${pageContext.request.contextPath}/static/picture/f2.png" alt="中国快递协会">
                </a>


            </div>
            <div class="span span8">
                火箭网络 版权所有 Copyright 2014 800bestex.com Inc. All rights reserved. <a href="http://www.miibeian.gov.cn"
                                                                                    target="_blank"
                                                                                    style="text-decoration: underline;">沪ICP备11045012号</a>


            </div>
            <div class="span span3 text-right">
                火箭快递微博：<a href="http://e.weibo.com/bestexpress" target="_blank" title="访问火箭快递官方微博"><img
                    src="${pageContext.request.contextPath}/static/picture/f3.png" alt="访问火箭快递官方微博"></a>
            </div>
        </div>
        <div class="text-center">
            <a style="color:#939393;" target="_blank"
               href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=31011802001068">
                <img src="${pageContext.request.contextPath}/static/picture/beian.png"/>沪公网安备 31011802001068号
            </a>
            <a style="color:#939393;text-decoration: underline" target="_blank" href="/Images/yyzz.jpg">企业营业执照</a>
        </div>
    </div>
</div>


</body>
<script src="${pageContext.request.contextPath}/static/js/jquery-1.11.1.js" type="text/javascript"
        charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/lib/layui/layui.all.js" type="text/javascript" charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/static/js/addr2.js" type="text/javascript" charset="utf-8"></script>
<%--<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/addr3.js"  charset="utf-8"/>--%>
<script type="text/javascript">
    pca.init('.P1', '.C1', '.A1', '北京', '北京', '朝阳区');

</script>
<script type="text/javascript">

</script>
<script type="text/javascript" charset="utf-8">
    $(function () {
        $("#send-btn").click(function () {
            $.ajax({
                url: "../up",
                type: "get",
                data: $("form").serialize(),
                success: function (src) {

                }
            });
        });
    });
</script>
</html>
<script src="${pageContext.request.contextPath}/static/js/b6a9c89465704190a49933ff9b5add02.js"></script>
<script src="${pageContext.request.contextPath}/static/js/fe5dcb849c2546689bdc2cc058084e6a.js"></script>
<script src="${pageContext.request.contextPath}/static/js/31e8bb5b8d0a43b89add39e6d3c9e347.js"></script>


<%--<div class="hide">--%>
<%--<script type="text/javascript">--%>
<%--var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");--%>
<%--document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F8fd193f17ae8acf2be1a1cfc65323057' type='text/javascript'%3E%3C/script%3E"));--%>
<%--</script>--%>
<%--<script src="${pageContext.request.contextPath}/static/js/stat.js" language="JavaScript"></script>--%>
<%--</div>--%>



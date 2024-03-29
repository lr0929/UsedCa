<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/10/19
  Time: 10:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>龙城二手车</title>
    <link rel="stylesheet" type="text/css" href="css/base.css"/>
    <link rel="stylesheet" type="text/css" href="css/home.css"/>
    <link rel="stylesheet" type="text/css" href="city/city.css">
    <script type="text/javascript" src="script/jquery-1.8.0.min.js"></script>
    <script type="text/javascript" src="script/home_ban.js"></script>
    <script type="text/javascript" src="script/eg_top_search.js"></script>
    <script type="text/javascript" src="script/city.js"></script>
    <script type="text/javascript" src="script/snncar.js"></script>
    <script type="text/javascript" src="script/jquery.SuperSlide.2.1.1.js"></script>
    <!--导航登陆网页版下拉-->
    <script type="text/javascript">
        $(function () {
            var setTime;
            $(".egc-top .nav-cent .operate").hover(function () {
                var _this = $(this);
                setTime = setTimeout(function () {
                    _this.find(".sec-version").slideDown(200);
                    _this.find("i").removeClass("icon-angle-down").addClass("icon-angle-up");
                }, 200);
            }, function () {
                if (setTime) {
                    clearTimeout(setTime);
                }
                $(".egc-top .nav-cent .sec-version").slideUp(200);
                $(".egc-top .nav-cent .operate i").removeClass("icon-angle-up").addClass("icon-angle-down");
            });
        });
    </script>

    <!--下拉导航关闭-->
    <script type="text/javascript">
        $(function () {
            $('.menu-mb i').click(function() {
                $(".navigation-mb-list").slideDown(300);
            });
            $('.navigation-mb-list .list-close-btn').click(function() {
                $(".navigation-mb-list").slideUp(300);
            });
        });
    </script>

    <script type="text/javascript">
        $(function () {
            var scroll_heitht = $('body').offset().top;
            var isShow = true;
            $(window).scroll(function () {
                if ($(window).scrollTop() > scroll_heitht && isShow) {
                    $('.stress-search-box').slideDown(200);
                }else{
                    $('.stress-search-box').slideUp(200);
                }
            });
            $('.stress-close a').click(function(){
                isShow=false;
                $('.stress-search-box').slideUp(200).unbind(window,aa);
            });
        });
    </script>
</head>
<body>
<div class="egc-top">
    <div class="nav-cent">
        <div class="top-r"> <a href="#" id="b-regist">注册</a>|<a href="#" id="b-login" class="b-login">登陆</a> </div>
        <div class="top-l">全国统一客服热线：400-877-9288</div>
        <div class="clear_fix"></div>
    </div>
</div>
<div class="navigation">
    <div class="nav-cent">
        <div class="logo"><a href="index.html"><img src="images/logo.png" width="240" /></a></div>
        <div class="city"> <span id="DY_site_name" class="red city-name Left">太原</span>
            <div id="JS_hide_city_menu_11" class="city-select cut_handdler Left"> <a href="javascript:void(0);" class="common-bg selector">切换城市</a>
                <div id="JS_header_city_bar_box" class="hide_city_group">
                    <div class="hideMap">
                        <div class="showPanel clearfix">
                            <div class="Left mycity">
                                <div id="JS_current_city_box"> 当前城市：<strong id="JS_city_current_city">太原</strong> </div>
                                <div id="JS_default_city_delete" style="display: none;"></div>
                            </div>
                        </div>
                        <div class="showPanel showPanel2 clearfix">
                            <div class="hot_city" id="JS_header_city_hot"> </div>
                            <div class="city_words mt10" id="JS_header_city_char"> </div>
                        </div>
                        <div class="scrollBody">
                            <div class="cityMap clearfix">
                                <table id="JS_header_city_list" class="city_list" style="margin-top: 0px;">
                                    <tbody>
                                    </tbody>
                                </table>
                            </div>
                            <div class="scrollBar"> <span id="JS_header_city_bar" style="margin-top: 0px;"></span> </div>
                        </div>
                    </div>
                </div>
            </div>
            <span class="common-bg city-logo"></span> </div>
        <div class="sea">
            <div class="egc-sea-box">
                <input type="text" class="sea-ipt-txt" placeholder="搜索您想要的车" />
                <a href="#" class="search-btn">搜索</a> </div>
        </div>
        <div class="hot-phone"> <i></i> <span class="js-change-phone">400-877-9288</span> </div>
    </div>
</div>
<ul class="navmenu">
    <li class="active"><a href="index.html">首页</a><span></span></li>
    <li><a href="list.html">我要买车</a><span></span></li>
    <li><a href="wymc.html">我要卖车</a><span></span></li>
    <li><a href="#">龙城联盟</a><span></span></li>
    <li><a href="#">我要加盟</a><span></span></li>
</ul>
<div class="clear_fix"></div>
<div class="stress-search-box row">
    <div class="stress-close"><a href="javascript:;"></a></div>
    <div class="nav-cents">
        <ul>
            <li class="logo"><a href="index.html"><img src="images/logo.png"  width="180"/></a></li>
            <li><a href="index.html">首页</a></li>
            <li><a href="list.html">我要买车</a></li>
            <li><a href="wymc.html">我要卖车</a></li>
            <li><a href="#">龙城联盟</a></li>
            <li><a href="#">我要加盟</a></li>
        </ul>
        <div class="seas">
            <div class="egc-sea-box">
                <input type="text" class="sea-ipt-txt" placeholder="搜索您想要的车">
                <a href="#" class="search-btn">搜索</a> </div>
        </div>
    </div>
</div>
<!--banner广告-->
<div class="banner">
    <!--左侧买卖车-->
    <div class="mainmenu">
        <div class="sel-area">
            <div class="buy-tit">我要卖车</div>
            <div class="all-sort-list">
                <div class="item">
                    <h3>
                        <div class="border"><a href="">品牌</a></div>
                        <ul>
                            <li><a href="#">大众</a></li>
                            <li><a href="#">宝马</a></li>
                            <li><a href="#">奥迪</a></li>
                            <li><a href="#">丰田</a></li>
                            <li><a href="#">日产</a></li>
                            <li><a href="#">奔驰</a></li>
                            <li><a href="#">本田</a></li>
                            <li><a href="#">别克</a></li>
                            <li><a href="#">福特</a></li>
                        </ul>
                    </h3>
                    <div class="item-list clearfix" style="top: 0px; display: none;">
                        <div class="close">x</div>
                        <div class="subitem">
                            <dl class="fore1">
                                <dt><a href="#">A</a></dt>
                                <dd><em><a href="#">Alpina</a></em><em><a href="#">阿斯顿马丁</a></em><em><a href="#">奥迪</a></em></dd>
                            </dl>
                            <dl class="fore2">
                                <dt><a href="#">B</a></dt>
                                <dd><em><a href="#">巴博斯</a></em><em><a href="#">宝骏</a></em><em><a href="#">宝马</a></em><em><a href="#">保时捷</a></em><em><a href="#">北京</a></em><em><a href="#">北汽</a></em><em><a href="#">奔驰</a></em><em><a href="#">奔腾</a></em><em><a href="#">本田</a></em><em><a href="#">比亚迪</a></em><em><a href="#">标致</a></em><em><a href="#">别克</a></em><em><a href="#">宾利</a></em><em><a href="#">宝沃</a></em></dd>
                            </dl>
                            <dl class="fore3">
                                <dt><a href="#">C</a></dt>
                                <dd><em><a href="#">昌河</a></em><em><a href="#">传祺</a></em><em><a href="#">长安</a></em><em><a href="#">长安商用</a></em><em><a href="#">长城</a></em><em><a href="#">长丰</a></em></dd>
                            </dl>
                            <dl class="fore4">
                                <dt><a href="#">D</a></dt>
                                <dd><em><a href="#">DS</a></em><em><a href="#">大发</a></em><em><a href="#">大通</a></em><em><a href="#">大众</a></em><em><a href="#">道奇</a></em><em><a href="#">帝豪</a></em><em><a href="#">东风</a></em><em><a href="#">东风风度</a></em><em><a href="#">东风小康</a></em><em><a href="#">东南</a></em></dd>
                            </dl>
                        </div>
                    </div>
                </div>
                <div class="items">
                    <h3>
                        <div class="border"><a href="">价格</a></div>
                        <ul>
                            <li><a href="#">5万以下</a></li>
                            <li><a href="#">5-10万</a></li>
                            <li><a href="#">10-15万</a></li>
                            <li><a href="#">15-20万</a></li>
                            <li><a href="#">20-25万</a></li>
                            <li><a href="#">25-40万</a></li>
                            <li><a href="#">40万以上</a></li>
                        </ul>
                    </h3>
                </div>
                <div class="items">
                    <h3 style="border-bottom:0px;">
                        <div class="border"><a href="">车型</a></div>
                        <ul>
                            <li><a href="#">SUV</a></li>
                            <li><a href="#">商务车</a></li>
                            <li><a href="#">跑车</a></li>
                            <li><a href="#">急售</a></li>
                            <li><a href="#">准新车</a></li>
                            <li><a href="#">超值</a></li>
                            <li><a href="#">直销车</a></li>
                        </ul>
                    </h3>
                </div>
            </div>
            <div class="clear_fix"></div>
            <script type="text/javascript">
                $('.all-sort-list > .item').hover(function(){
                    var eq = $('.all-sort-list >.item').index(this),				//获取当前滑过是第几个元素
                        h = $('.all-sort-list').offset().top,						//获取当前下拉菜单距离窗口多少像素
                        s = $(window).scrollTop(),									//获取游览器滚动了多少高度
                        i = $(this).offset().top,									//当前元素滑过距离窗口多少像素
                        item = $(this).children('.item-list').height(),				//下拉菜单子类内容容器的高度
                        sort = $('.all-sort-list').height();						//父类分类列表容器的高度

                    if ( item < sort ){												//如果子类的高度小于父类的高度
                        if ( eq == 0 ){
                            $(this).children('.item-list').css('top', (i-h));
                        } else {
                            $(this).children('.item-list').css('top', (i-h));
                        }
                    } else {
                        if ( s > h ) {												//判断子类的显示位置，如果滚动的高度大于所有分类列表容器的高度
                            if ( i-s > 0 ){											//则 继续判断当前滑过容器的位置 是否有一半超出窗口一半在窗口内显示的Bug,
                                $(this).children('.item-list').css('top', (s-h)+2 );
                            } else {
                                $(this).children('.item-list').css('top', (s-h)-(-(i-s))+2 );
                            }
                        } else {
                            $(this).children('.item-list').css('top', 0);
                        }
                    }

                    $(this).addClass('hover');
                    $(this).children('.item-list').css('display','block');
                },function(){
                    $(this).removeClass('hover');
                    $(this).children('.item-list').css('display','none');
                });

                $('.item > .item-list > .close').click(function(){
                    $(this).parent().parent().removeClass('hover');
                    $(this).parent().hide();
                });
            </script>
            <!--我要买车-->
            <div class="buy-tit">我要买车</div>
            <div class="sell-car-box">
                <form action="" class="clearfix">
                    <input type="text" class="sell-phone-input" data-role="sellPhone" placeholder="请输入手机号码">
                    <button class="sell-phone-submit">我要卖车</button>
                </form>
                <!--提交失败-->
                <p class="sell-phone-error" style="display:block;">请填写正确的手机号码</p>
                <!--提交成功-->
                <div class="submit-suc" style="display:none"><i></i>提交成功！ <a href="javascript:void(0)" data-role="go_back">返回</a> </div>
            </div>
        </div>
    </div>
    <div class="menu_r">
        <div class="flexslider">
            <ul class="slides">
                <li style="background-image:url(images/1.jsp);"></li>
                <li style="background-image:url(images/2.jpg);"></li>
                <li style="background-image:url(images/3.jpg);"></li>
                <li style="background-image:url(images/4.jpg);"></li>
            </ul>
        </div>
        <div class="clear_fix"></div>
        <div class="purpose">
            <div class="ind-dz-lc">
                <ul>
                    <li>
                        <div class="circle radius"> <i class="lc-01"></i> </div>
                        <div class="txt">
                            <h4>一年/两万公里质保</h4>
                        </div>
                    </li>
                    <li>
                        <div class="circle radius"> <i class="lc-02"></i> </div>
                        <div class="txt">
                            <h4>全面检测</h4>
                        </div>
                    </li>
                    <li>
                        <div class="circle radius"> <i class="lc-03"></i> </div>
                        <div class="txt">
                            <h4>14天可退</h4>
                        </div>
                    </li>
                    <li>
                        <div class="circle radius"> <i class="lc-04"></i> </div>
                        <div class="txt">
                            <h4>100%个人车源</h4>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    $(document).ready(function(){
        $('.flexslider').flexslider({
            directionNav: true,
            pauseOnAction: false
        });
        $('.flexslider').hover(function(){
            $('.flex-direction-nav').fadeIn();
        },function(){
            $('.flex-direction-nav').fadeOut();
        })
    });
</script>
<!--特色频道-->
<div class="clear_fix"></div>
<div class="special_sun">
    <div class="block-description"> <span class="title">龙城特色</span> </div>
    <div class="active-banner fl"> <a href="#">
        <h2><font color="#f79630">259项</font>全面检测</h2>
        <p>严苛检测标准，无事故</p>
        <img src="images/sun_banner.jpg"> </a> </div>
    <div class="active-blocks fr">
        <ul>
            <li class="li_01"><a href="list.html" title="实用代步车" target="_blank">
                <p class="title">实用代步车</p>
                <p class="content">驾驭想象 聆听声音</p>
                <div class="pic"><img src="images/car1.jpg" alt="保值车型"></div>
            </a></li>
            <li class="li_02"><a href="list.html" title="5-8万能买啥" target="_blank">
                <p class="title">5-8万能买啥</p>
                <p class="content">驾有所值，动气强劲</p>
                <div class="pic"><img src="images/201601221218531455.jpg" alt="5-8万能买啥"></div>
            </a></li>
            <li class="li_03"><a href="list.html" title="12-16万能买啥" target="_blank">
                <p class="title">12-16万能买啥</p>
                <p class="content">风范，与自由同行</p>
                <div class="pic"><img src="images/201601221218599350.jpg" alt="12-16万能买啥"></div>
            </a></li>
            <li class="li_04"><a href="list.html" title="奥迪车库" target="_blank">
                <p class="title">奥迪车库</p>
                <p class="content">奥迪—— Audi</p>
                <div class="pic"><img src="images/201601221432247622.jpg" alt="奥迪车库"></div>
            </a></li>
            <li class="li_05"><a href="list.html" title="大众车库" target="_blank">
                <p class="title">大众车库</p>
                <p class="content">大众 — Volkswagen</p>
                <div class="pic"><img src="images/201601221219156607.jpg" alt="大众车库"></div>
            </a></li>
            <li class="li_06"><a href="list.html" title="岂止于大" target="_blank">
                <p class="title">岂止于大</p>
                <p class="content">我所钟爱的7座SUV</p>
                <div class="pic"><img src="images/201601221219239104.jpg" alt="岂止于大"></div>
            </a></li>
        </ul>
    </div>
</div>
<!--车类列表-->
<div class="car_feature">
    <div class="menucar">
        <div class="more" id="11"><a href="list.html">查看全部>></a></div>
        <ul>
            <li class="hover" id="tabs2_0" onmousemove="isShow4('tabs2_0','divs2_0','block','<a href=list.html>查看全部>></a>');">热卖好车</li>
            <li id="tabs2_1" onmousemove="isShow4('tabs2_1','divs2_1','block','<a href=list.html>查看全部>></a>');">最新上架</li>
            <li id="tabs2_2" onmousemove="isShow4('tabs2_2','divs2_2','block','<a href=list.html>查看全部>></a>');">降价急售</li>
            <li id="tabs2_3" onmousemove="isShow4('tabs2_3','divs2_3','block','<a href=list.html>查看全部>></a>');">准新车</li>
            <li id="tabs2_4" onmousemove="isShow4('tabs2_4','divs2_4','block','<a href=list.html>查看全部>></a>');">SUV</li>
        </ul>
    </div>
    <div class="clear_fix"></div>
    <div class="joinsnncar fl">
        <form class="dForm" method="post">
            <h2>我要加盟</h2>
            <div class="mod-form">
                <div class="mod-form-item">
                    <input class="input1" placeholder="请填写您的姓名" value="">
                </div>
                <div class="mod-form-item ">
                    <input class="input1 tipinput" name="mobile" id="mobile" placeholder="请填写您的手机号码" >
                    <i class="i-must"></i> </div>
                <div class="mod-form-item mod-form-item-ex">
                    <input class="input1 input-short tipinput" name="msg_code" id="msg_code" placeholder="请输入短信验证码" >
                    <i class="i-must"></i><a id="countdown" href="javascript:;" class="get-code2">发送短信</a> </div>
                <div class="mod-form-item mod-form-item-choose clearfix dropdown-group" style="position: relative; z-index: 1">
                    <div class="m_zlxg" id="shenfen">
                        <p title="">选择省份</p>
                        <div class="m_zlxg2">
                            <ul>
                            </ul>
                        </div>
                    </div>
                    <div class="m_zlxg" id="chengshi">
                        <p title="">选择城市</p>
                        <div class="m_zlxg2">
                            <ul>
                            </ul>
                        </div>
                    </div>
                    <input id="sfdq_num" type="hidden" value="" />
                    <input id="csdq_num" type="hidden" value="" />
                    <input id="sfdq_tj" type="hidden" value="" />
                    <input id="csdq_tj" type="hidden" value="" />
                    <input id="qydq_tj" type="hidden" value="" />
                </div>
                <div class="mod-form-item">
                    <input class="input1 tipinput" name="email" id="email" placeholder="电子邮箱" >
                </div>
                <div class="mod-form-item">
                    <textarea id="suggest" name="suggest" placeholder="留言" class="textarea1"></textarea>
                </div>
                <div class="mod-form-item">
                    <div class="btn-box">
                        <button type="submit" value="submit" class="b-r orange">提交</button>
                    </div>
                </div>
                <!---校验-->
                <p class="sell-phone-error" style="display:block;">请填写正确的手机号码</p>
            </div>
        </form>
    </div>
    <div class="menucarlist fr">
        <div id="divs2_0">
            <ul class="carList">
                <li>
                    <div class="list-infoBox"> <a title="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版" target="_blank" class="imgtype" href="infor.html"> <img width="290" height="194" src="images/carimg.jpg" alt="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版"> </a>
                        <p class="infoBox"> <a  title="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版" href="infor.html" target="_blank" class="info-title">奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版</a> </p>
                        <p class="fc-gray"> <span class="tag-gray">石家庄</span> <span class="">2014年11月上牌</span> <em class="shuxian">|</em> 行驶2.4万公里 </p>
                        <p class="priType-s"> <span> <i class="fc-org priType"> 2.10万 </i> </span> <s>3.40万</s> </p>
                    </div>
                </li>
                <li>
                    <div class="list-infoBox"> <a title="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版" target="_blank" class="imgtype" href="infor.html"> <img width="290" height="194" src="images/carimg.jpg" alt="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版"> </a>
                        <p class="infoBox"> <a  title="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版" href="infor.html" target="_blank" class="info-title">奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版</a> </p>
                        <p class="fc-gray"> <span class="tag-gray">石家庄</span> <span class="">2014年11月上牌</span> <em class="shuxian">|</em> 行驶2.4万公里 </p>
                        <p class="priType-s"> <span> <i class="fc-org priType"> 2.10万 </i> </span> <s>3.40万</s> </p>
                    </div>
                </li>
                <li>
                    <div class="list-infoBox"> <a title="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版" target="_blank" class="imgtype" href="infor.html"> <img width="290" height="194" src="images/carimg.jpg" alt="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版"> </a>
                        <p class="infoBox"> <a  title="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版" href="infor.html" target="_blank" class="info-title">奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版</a> </p>
                        <p class="fc-gray"> <span class="tag-gray">石家庄</span> <span class="">2014年11月上牌</span> <em class="shuxian">|</em> 行驶2.4万公里 </p>
                        <p class="priType-s"> <span> <i class="fc-org priType"> 2.10万 </i> </span> <s>3.40万</s> </p>
                    </div>
                </li>
                <li>
                    <div class="list-infoBox"> <a title="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版" target="_blank" class="imgtype" href="infor.html"> <img width="290" height="194" src="images/carimg.jpg" alt="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版"> </a>
                        <p class="infoBox"> <a  title="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版" href="infor.html" target="_blank" class="info-title">奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版</a> </p>
                        <p class="fc-gray"> <span class="tag-gray">石家庄</span> <span class="">2014年11月上牌</span> <em class="shuxian">|</em> 行驶2.4万公里 </p>
                        <p class="priType-s"> <span> <i class="fc-org priType"> 2.10万 </i> </span> <s>3.40万</s> </p>
                    </div>
                </li>
                <li>
                    <div class="list-infoBox"> <a title="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版" target="_blank" class="imgtype" href="infor.html"> <img width="290" height="194" src="images/carimg.jpg" alt="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版"> </a>
                        <p class="infoBox"> <a  title="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版" href="infor.html" target="_blank" class="info-title">奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版</a> </p>
                        <p class="fc-gray"> <span class="tag-gray">石家庄</span> <span class="">2014年11月上牌</span> <em class="shuxian">|</em> 行驶2.4万公里 </p>
                        <p class="priType-s"> <span> <i class="fc-org priType"> 2.10万 </i> </span> <s>3.40万</s> </p>
                    </div>
                </li>
                <li>
                    <div class="list-infoBox"> <a title="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版" target="_blank" class="imgtype" href="infor.html"> <img width="290" height="194" src="images/carimg.jpg" alt="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版"> </a>
                        <p class="infoBox"> <a  title="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版" href="infor.html" target="_blank" class="info-title">奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版</a> </p>
                        <p class="fc-gray"> <span class="tag-gray">石家庄</span> <span class="">2014年11月上牌</span> <em class="shuxian">|</em> 行驶2.4万公里 </p>
                        <p class="priType-s"> <span> <i class="fc-org priType"> 2.10万 </i> </span> <s>3.40万</s> </p>
                    </div>
                </li>
            </ul>
        </div>
        <div id="divs2_1" style="display: none;">
            <ul class="carList">
                <li>
                    <div class="list-infoBox"> <a title="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版" target="_blank" class="imgtype" href="infor.html"> <img width="290" height="194" src="images/carimg.jpg" alt="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版"> </a>
                        <p class="infoBox"> <a  title="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版" href="infor.html" target="_blank" class="info-title">奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版</a> </p>
                        <p class="fc-gray"> <span class="tag-gray">石家庄</span> <span class="">2014年11月上牌</span> <em class="shuxian">|</em> 行驶2.4万公里 </p>
                        <p class="priType-s"> <span> <i class="fc-org priType"> 2.10万 </i> </span> <s>3.40万</s> </p>
                    </div>
                </li>
                <li>
                    <div class="list-infoBox"> <a title="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版" target="_blank" class="imgtype" href="infor.html"> <img width="290" height="194" src="images/carimg.jpg" alt="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版"> </a>
                        <p class="infoBox"> <a  title="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版" href="infor.html" target="_blank" class="info-title">奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版</a> </p>
                        <p class="fc-gray"> <span class="tag-gray">石家庄</span> <span class="">2014年11月上牌</span> <em class="shuxian">|</em> 行驶2.4万公里 </p>
                        <p class="priType-s"> <span> <i class="fc-org priType"> 2.10万 </i> </span> <s>3.40万</s> </p>
                    </div>
                </li>
                <li>
                    <div class="list-infoBox"> <a title="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版" target="_blank" class="imgtype" href="infor.html"> <img width="290" height="194" src="images/carimg.jpg" alt="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版"> </a>
                        <p class="infoBox"> <a  title="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版" href="#" target="_blank" class="info-title">奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版</a> </p>
                        <p class="fc-gray"> <span class="tag-gray">石家庄</span> <span class="">2014年11月上牌</span> <em class="shuxian">|</em> 行驶2.4万公里 </p>
                        <p class="priType-s"> <span> <i class="fc-org priType"> 2.10万 </i> </span> <s>3.40万</s> </p>
                    </div>
                </li>
                <li>
                    <div class="list-infoBox"> <a title="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版" target="_blank" class="imgtype" href="infor.html"> <img width="290" height="194" src="images/carimg.jpg" alt="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版"> </a>
                        <p class="infoBox"> <a  title="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版" href="infor.html" target="_blank" class="info-title">奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版</a> </p>
                        <p class="fc-gray"> <span class="tag-gray">石家庄</span> <span class="">2014年11月上牌</span> <em class="shuxian">|</em> 行驶2.4万公里 </p>
                        <p class="priType-s"> <span> <i class="fc-org priType"> 2.10万 </i> </span> <s>3.40万</s> </p>
                    </div>
                </li>
                <li>
                    <div class="list-infoBox"> <a title="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版" target="_blank" class="imgtype" href="infor.html"> <img width="290" height="194" src="images/carimg.jpg" alt="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版"> </a>
                        <p class="infoBox"> <a  title="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版" href="infor.html" target="_blank" class="info-title">奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版</a> </p>
                        <p class="fc-gray"> <span class="tag-gray">石家庄</span> <span class="">2014年11月上牌</span> <em class="shuxian">|</em> 行驶2.4万公里 </p>
                        <p class="priType-s"> <span> <i class="fc-org priType"> 2.10万 </i> </span> <s>3.40万</s> </p>
                    </div>
                </li>
                <li>
                    <div class="list-infoBox"> <a title="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版" target="_blank" class="imgtype" href="infor.html"> <img width="290" height="194" src="images/carimg.jpg" alt="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版"> </a>
                        <p class="infoBox"> <a  title="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版" href="infor.html" target="_blank" class="info-title">奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版</a> </p>
                        <p class="fc-gray"> <span class="tag-gray">石家庄</span> <span class="">2014年11月上牌</span> <em class="shuxian">|</em> 行驶2.4万公里 </p>
                        <p class="priType-s"> <span> <i class="fc-org priType"> 2.10万 </i> </span> <s>3.40万</s> </p>
                    </div>
                </li>
            </ul>
        </div>
        <div id="divs2_2" style="display: none;">
            <ul class="carList">
                <li>
                    <div class="list-infoBox"> <a title="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版" target="_blank" class="imgtype" href="infor.html"> <img width="290" height="194" src="images/carimg.jpg" alt="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版"> </a>
                        <p class="infoBox"> <a  title="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版" href="#" target="_blank" class="info-title">奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版</a> </p>
                        <p class="fc-gray"> <span class="tag-gray">石家庄</span> <span class="">2014年11月上牌</span> <em class="shuxian">|</em> 行驶2.4万公里 </p>
                        <p class="priType-s"> <span> <i class="fc-org priType"> 2.10万 </i> </span> <s>3.40万</s> </p>
                    </div>
                </li>
                <li>
                    <div class="list-infoBox"> <a title="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版" target="_blank" class="imgtype" href="infor.html"> <img width="290" height="194" src="images/carimg.jpg" alt="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版"> </a>
                        <p class="infoBox"> <a  title="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版" href="infor.html" target="_blank" class="info-title">奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版</a> </p>
                        <p class="fc-gray"> <span class="tag-gray">石家庄</span> <span class="">2014年11月上牌</span> <em class="shuxian">|</em> 行驶2.4万公里 </p>
                        <p class="priType-s"> <span> <i class="fc-org priType"> 2.10万 </i> </span> <s>3.40万</s> </p>
                    </div>
                </li>
                <li>
                    <div class="list-infoBox"> <a title="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版" target="_blank" class="imgtype" href="infor.html"> <img width="290" height="194" src="images/carimg.jpg" alt="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版"> </a>
                        <p class="infoBox"> <a  title="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版" href="infor.html" target="_blank" class="info-title">奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版</a> </p>
                        <p class="fc-gray"> <span class="tag-gray">石家庄</span> <span class="">2014年11月上牌</span> <em class="shuxian">|</em> 行驶2.4万公里 </p>
                        <p class="priType-s"> <span> <i class="fc-org priType"> 2.10万 </i> </span> <s>3.40万</s> </p>
                    </div>
                </li>
                <li>
                    <div class="list-infoBox"> <a title="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版" target="_blank" class="imgtype" href="infor.html"> <img width="290" height="194" src="images/carimg.jpg" alt="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版"> </a>
                        <p class="infoBox"> <a  title="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版" href="infor.html" target="_blank" class="info-title">奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版</a> </p>
                        <p class="fc-gray"> <span class="tag-gray">石家庄</span> <span class="">2014年11月上牌</span> <em class="shuxian">|</em> 行驶2.4万公里 </p>
                        <p class="priType-s"> <span> <i class="fc-org priType"> 2.10万 </i> </span> <s>3.40万</s> </p>
                    </div>
                </li>
                <li>
                    <div class="list-infoBox"> <a title="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版" target="_blank" class="imgtype" href="infor.html"> <img width="290" height="194" src="images/carimg.jpg" alt="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版"> </a>
                        <p class="infoBox"> <a  title="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版" href="infor.html" target="_blank" class="info-title">奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版</a> </p>
                        <p class="fc-gray"> <span class="tag-gray">石家庄</span> <span class="">2014年11月上牌</span> <em class="shuxian">|</em> 行驶2.4万公里 </p>
                        <p class="priType-s"> <span> <i class="fc-org priType"> 2.10万 </i> </span> <s>3.40万</s> </p>
                    </div>
                </li>
                <li>
                    <div class="list-infoBox"> <a title="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版" target="_blank" class="imgtype" href="infor.html"> <img width="290" height="194" src="images/carimg.jpg" alt="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版"> </a>
                        <p class="infoBox"> <a  title="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版" href="infor.html" target="_blank" class="info-title">奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版</a> </p>
                        <p class="fc-gray"> <span class="tag-gray">石家庄</span> <span class="">2014年11月上牌</span> <em class="shuxian">|</em> 行驶2.4万公里 </p>
                        <p class="priType-s"> <span> <i class="fc-org priType"> 2.10万 </i> </span> <s>3.40万</s> </p>
                    </div>
                </li>
            </ul>
        </div>
        <div id="divs2_3" style="display: none;">
            <ul class="carList">
                <li>
                    <div class="list-infoBox"> <a title="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版" target="_blank" class="imgtype" href="infor.html"> <img width="290" height="194" src="images/carimg.jpg" alt="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版"> </a>
                        <p class="infoBox"> <a  title="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版" href="infor.html" target="_blank" class="info-title">奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版</a> </p>
                        <p class="fc-gray"> <span class="tag-gray">石家庄</span> <span class="">2014年11月上牌</span> <em class="shuxian">|</em> 行驶2.4万公里 </p>
                        <p class="priType-s"> <span> <i class="fc-org priType"> 2.10万 </i> </span> <s>3.40万</s> </p>
                    </div>
                </li>
                <li>
                    <div class="list-infoBox"> <a title="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版" target="_blank" class="imgtype" href="infor.html"> <img width="290" height="194" src="images/carimg.jpg" alt="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版"> </a>
                        <p class="infoBox"> <a  title="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版" href="infor.html" target="_blank" class="info-title">奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版</a> </p>
                        <p class="fc-gray"> <span class="tag-gray">石家庄</span> <span class="">2014年11月上牌</span> <em class="shuxian">|</em> 行驶2.4万公里 </p>
                        <p class="priType-s"> <span> <i class="fc-org priType"> 2.10万 </i> </span> <s>3.40万</s> </p>
                    </div>
                </li>
                <li>
                    <div class="list-infoBox"> <a title="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版" target="_blank" class="imgtype" href="infor.html"> <img width="290" height="194" src="images/carimg.jpg" alt="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版"> </a>
                        <p class="infoBox"> <a  title="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版" href="infor.html" target="_blank" class="info-title">奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版</a> </p>
                        <p class="fc-gray"> <span class="tag-gray">石家庄</span> <span class="">2014年11月上牌</span> <em class="shuxian">|</em> 行驶2.4万公里 </p>
                        <p class="priType-s"> <span> <i class="fc-org priType"> 2.10万 </i> </span> <s>3.40万</s> </p>
                    </div>
                </li>
                <li>
                    <div class="list-infoBox"> <a title="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版" target="_blank" class="imgtype" href="infor.html"> <img width="290" height="194" src="images/carimg.jpg" alt="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版"> </a>
                        <p class="infoBox"> <a  title="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版" href="infor.html" target="_blank" class="info-title">奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版</a> </p>
                        <p class="fc-gray"> <span class="tag-gray">石家庄</span> <span class="">2014年11月上牌</span> <em class="shuxian">|</em> 行驶2.4万公里 </p>
                        <p class="priType-s"> <span> <i class="fc-org priType"> 2.10万 </i> </span> <s>3.40万</s> </p>
                    </div>
                </li>
                <li>
                    <div class="list-infoBox"> <a title="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版" target="_blank" class="imgtype" href="infor.html"> <img width="290" height="194" src="images/carimg.jpg" alt="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版"> </a>
                        <p class="infoBox"> <a  title="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版" href="infor.html" target="_blank" class="info-title">奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版</a> </p>
                        <p class="fc-gray"> <span class="tag-gray">石家庄</span> <span class="">2014年11月上牌</span> <em class="shuxian">|</em> 行驶2.4万公里 </p>
                        <p class="priType-s"> <span> <i class="fc-org priType"> 2.10万 </i> </span> <s>3.40万</s> </p>
                    </div>
                </li>
                <li>
                    <div class="list-infoBox"> <a title="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版" target="_blank" class="imgtype" href="infor.html"> <img width="290" height="194" src="images/carimg.jpg" alt="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版"> </a>
                        <p class="infoBox"> <a  title="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版" href="#" target="_blank" class="info-title">奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版</a> </p>
                        <p class="fc-gray"> <span class="tag-gray">石家庄</span> <span class="">2014年11月上牌</span> <em class="shuxian">|</em> 行驶2.4万公里 </p>
                        <p class="priType-s"> <span> <i class="fc-org priType"> 2.10万 </i> </span> <s>3.40万</s> </p>
                    </div>
                </li>
            </ul>
        </div>
        <div id="divs2_4" style="display: none;">
            <ul class="carList">
                <li>
                    <div class="list-infoBox"> <a title="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版" target="_blank" class="imgtype" href="infor.html"> <img width="290" height="194" src="images/carimg.jpg" alt="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版"> </a>
                        <p class="infoBox"> <a  title="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版" href="infor.html" target="_blank" class="info-title">奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版</a> </p>
                        <p class="fc-gray"> <span class="tag-gray">石家庄</span> <span class="">2014年11月上牌</span> <em class="shuxian">|</em> 行驶2.4万公里 </p>
                        <p class="priType-s"> <span> <i class="fc-org priType"> 2.10万 </i> </span> <s>3.40万</s> </p>
                    </div>
                </li>
                <li>
                    <div class="list-infoBox"> <a title="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版" target="_blank" class="imgtype" href="infor.html"> <img width="290" height="194" src="images/carimg.jpg" alt="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版"> </a>
                        <p class="infoBox"> <a  title="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版" href="infor.html" target="_blank" class="info-title">奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版</a> </p>
                        <p class="fc-gray"> <span class="tag-gray">石家庄</span> <span class="">2014年11月上牌</span> <em class="shuxian">|</em> 行驶2.4万公里 </p>
                        <p class="priType-s"> <span> <i class="fc-org priType"> 2.10万 </i> </span> <s>3.40万</s> </p>
                    </div>
                </li>
                <li>
                    <div class="list-infoBox"> <a title="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版" target="_blank" class="imgtype" href="infor.html"> <img width="290" height="194" src="images/carimg.jpg" alt="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版"> </a>
                        <p class="infoBox"> <a  title="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版" href="infor.html" target="_blank" class="info-title">奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版</a> </p>
                        <p class="fc-gray"> <span class="tag-gray">石家庄</span> <span class="">2014年11月上牌</span> <em class="shuxian">|</em> 行驶2.4万公里 </p>
                        <p class="priType-s"> <span> <i class="fc-org priType"> 2.10万 </i> </span> <s>3.40万</s> </p>
                    </div>
                </li>
                <li>
                    <div class="list-infoBox"> <a title="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版" target="_blank" class="imgtype" href="infor.html"> <img width="290" height="194" src="images/carimg.jpg" alt="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版"> </a>
                        <p class="infoBox"> <a  title="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版" href="infor.html" target="_blank" class="info-title">奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版</a> </p>
                        <p class="fc-gray"> <span class="tag-gray">石家庄</span> <span class="">2014年11月上牌</span> <em class="shuxian">|</em> 行驶2.4万公里 </p>
                        <p class="priType-s"> <span> <i class="fc-org priType"> 2.10万 </i> </span> <s>3.40万</s> </p>
                    </div>
                </li>
                <li>
                    <div class="list-infoBox"> <a title="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版" target="_blank" class="imgtype" href="infor.html"> <img width="290" height="194" src="images/carimg.jpg" alt="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版"> </a>
                        <p class="infoBox"> <a  title="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版" href="infor.html" target="_blank" class="info-title">奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版</a> </p>
                        <p class="fc-gray"> <span class="tag-gray">石家庄</span> <span class="">2014年11月上牌</span> <em class="shuxian">|</em> 行驶2.4万公里 </p>
                        <p class="priType-s"> <span> <i class="fc-org priType"> 2.10万 </i> </span> <s>3.40万</s> </p>
                    </div>
                </li>
                <li>
                    <div class="list-infoBox"> <a title="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版" target="_blank" class="imgtype" href="infor.html"> <img width="290" height="194" src="images/carimg.jpg" alt="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版"> </a>
                        <p class="infoBox"> <a  title="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版" href="infor.html" target="_blank" class="info-title">奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版</a> </p>
                        <p class="fc-gray"> <span class="tag-gray">石家庄</span> <span class="">2014年11月上牌</span> <em class="shuxian">|</em> 行驶2.4万公里 </p>
                        <p class="priType-s"> <span> <i class="fc-org priType"> 2.10万 </i> </span> <s>3.40万</s> </p>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</div>
<!--新闻资讯-->
<div class="newscon">
    <div class="block-description"> <span class="title">龙城新闻</span> </div>
    <div class="newslist">
        <div class="nKe">
            <div class="kTit">
                <h2>加盟故事</h2>
            </div>
            <div class="slide">
                <div class="hd"> <a class="prev"><img src="images/in_l.png"/></a>
                    <ul>
                        <li>1</li>
                        <li>2</li>
                        <li>3</li>
                    </ul>
                    <a class="next"><img src="images/in_r.png"/></a></div>
                <div class="bd">
                    <ul>
                        <li >
                            <div class="bd-dl"> <a href="newsinfor.html" class="aImg"> <img src="images/car2.jpg" /> </a>
                                <div class="joininfor">
                                    <h4>当漂移车手  遇见限量A8</h4>
                                    <p>今年的明星车辆、全省唯一一辆橙色奥迪A8L，他的买家是一位身份特殊的勇士，一位知名的...</p>
                                    <div align="right"> <a href="#" class="cMore">查看详情</a> </div>
                                </div>
                            </div>
                            <div class="bd-dl"> <a href="newsinfor.html" class="aImg"> <img src="images/car2.jpg" /> </a>
                                <div class="joininfor">
                                    <h4>青藏川藏   曲水流觞</h4>
                                    <p>在2年的发展历程中，与很多朋友结下了缘分，这些朋友大多成为了我们的车主和会员，他们有着不...</p>
                                    <div align="right"> <a href="newsinfor.html" class="cMore">查看详情</a> </div>
                                </div>
                            </div>
                        </li>
                        <li >
                            <div class="bd-dl"> <a href="newsinfor.html" class="aImg"> <img src="images/car2.jpg" /> </a>
                                <div class="joininfor">
                                    <h4>当漂移车手  遇见限量A8</h4>
                                    <p>今年的明星车辆、全省唯一一辆橙色奥迪A8L，他的买家是一位身份特殊的勇士，一位知名的...</p>
                                    <div align="right"> <a href="newsinfor.html" class="cMore">查看详情</a> </div>
                                </div>
                            </div>
                            <div class="bd-dl"> <a href="newsinfor.html" class="aImg"> <img src="images/car2.jpg" /> </a>
                                <div class="joininfor">
                                    <h4>青藏川藏   曲水流觞</h4>
                                    <p>在2年的发展历程中，与很多朋友结下了缘分，这些朋友大多成为了我们的车主和会员，他们有...</p>
                                    <div align="right"> <a href="newsinfor.html" class="cMore">查看详情</a> </div>
                                </div>
                            </div>
                        </li>
                        <li >
                            <div class="bd-dl"> <a href="newsinfor.html" class="aImg"> <img src="images/car2.jpg" /> </a>
                                <div class="joininfor">
                                    <h4>当漂移车手  遇见限量A8</h4>
                                    <p>今年的明星车辆、全省唯一一辆橙色奥迪A8L，他的买家是一位身份特殊的勇士，一位知名的专业...</p>
                                    <div align="right"> <a href="newsinfor.html" class="cMore">查看详情</a> </div>
                                </div>
                            </div>
                            <div class="bd-dl"> <a href="newsinfor.html" class="aImg"> <img src="images/car2.jpg" /> </a>
                                <div class="joininfor">
                                    <h4>青藏川藏   曲水流觞</h4>
                                    <p>在2年的发展历程中，与很多朋友结下了缘分，这些朋友大多成为了我们的车主和会员，他们...</p>
                                    <div align="right"> <a href="newsinfor.html" class="cMore">查看详情</a> </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <!--媒体报道-->
        <div class="r-news">
            <div class="kTit">
                <h2>加盟故事</h2>
                <a href="medialist.html" class="newsmore">更多</a> </div>
            <div class="r-news-list">
                <ul>
                    <li><span class="date">11月02日</span><i class="icon "></i><a href="newsinfor.html" title="龙城易贷网贷10月份月报"> 龙城易贷网贷10月份月报 </a> </li>
                    <li><span class="date">10月10日</span><i class="icon "></i><a href="newsinfor.html" title="龙城易贷网贷9月份月报"> 龙城易贷网贷9月份月报 </a> </li>
                    <li><span class="date">09月28日</span><i class="icon "></i><a href="newsinfor.html" title="关于2016年国庆节放假工作安排的通知"> 关于2016年国庆节放假工作安... </a> </li>
                    <li><span class="date">09月13日</span><i class="icon "></i><a href="newsinfor.html" title="关于2016年中秋节放假工作安排的通知"> 关于2016年中秋节放假工作安... </a> </li>
                    <li><span class="date">09月13日</span><i class="icon "></i><a href="newsinfor.html" title="关于2016年中秋节放假工作安排的通知"> 关于2016年中秋节放假工作安... </a> </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<div class="clear_fix"></div>
<!--底部-->
<div class="ftWrap">
    <div class="foot">
        <div class="cent">
            <div class="relate">
                <div class="items">
                    <div class="tit"><i class="icon-angle-right"></i>交易帮助</div>
                    <div class="con"> <a href="#">买车帮助</a> <a href="#">卖车帮助</a> <a href="#">过户帮助</a> </div>
                </div>
                <div class="items">
                    <div class="tit"><i class="icon-angle-right"></i>客服中心</div>
                    <div class="con"> <a href="abut.html">网站合作</a> <a href="about.html">关于我们</a> <a href="contact.html">联系我们</a> </div>
                </div>
                <div class="items">
                    <div class="tit"><i class="icon-angle-right"></i>购车指南</div>
                    <div class="con"> <a href="#">购车帮助</a></div>
                </div>
                <div class="app-section"> <img class="js-delayed-img"  src="images/f_wx.jpg">
                    <div class="title">扫码关注微信</div>
                    <p> 随时随地，秒杀好车<br />
                        优质个人二手车 </p>
                </div>
                <div class="items last">
                    <div class="tel">
                        <h1>400-877-9288</h1>
                        <p>周一至周日 8:00-18:00</p>
                        <p>免费咨询(咨询、建议、投诉)</p>
                        <a href="#" class="kf"><i class="kf-icon"></i>在线客服</a> </div>
                    <div class="tel-mb">
                        <p><span>400-710-8886</span>周一至周日 8:00-18:00(仅收市话费)</p>
                        <a href="#" class="kf"><i class="kf-icon"></i>在线客服</a> </div>
                </div>
            </div>
        </div>
    </div>
    <div class="copyright">
        <div class="cent"> Copyright © 2016-2017, snncar.com,All Rights Reserved 皖ICP备16022456号-1</div>
    </div>
</div>
<script type="text/javascript">
    $(function(){
        $('.navmenu li').hover(function(){
            $('span',this).stop().css('height','2px');
            $('span',this).animate({
                left:'0',
                width:'100%',
                right:'0'
            },200);
        },function(){
            $('span',this).stop().animate({
                left:'50%',
                width:'0'
            },200);
        });
    });
</script>
<script type="text/javascript" src="script/3c-menu.js"></script>

<script type="text/javascript" src="script/index.js"></script>
<script type="text/javascript" src="script/address.js"></script>
<script type="text/javascript" src="script/lg_reg.js"></script>
<script type="text/javascript">
    $(function(){

        $("#sjld").sjld("#shenfen","#chengshi");

    });
</script>
<!--会员登录和注册弹出框开始-->
<div id="popBox">
    <div class="popCont"> <a class="p_closed">关闭</a>
        <div class="p-tab"> <a>会员登录<i></i></a><a>会员注册<i></i></a> </div>
        <div class="p-detail">
            <div class="p-dl">
                <form onsubmit="return check();" enctype="multipart/form-data" method="post" name="form" id="form">
                    <ul class="login-items">
                        <li>
                            <label>用户名(手机号)</label>
                            <input class="input" type="text" value="" maxlength="32"  name="username" placeholder="请输入您的手机号">
                        </li>
                        <li>
                            <label>密码</label>
                            <input class="input" type="password" value="" maxlength="16"  name="password">
                        </li>
                    </ul>
                    <div class="login-check">
                        <input type="checkbox" name="checkbox" style=" width:auto;" />
                        <label>记住我</label>
                        <a href="Meet/editPass">忘记登录密码？</a> </div>
                    <div class="login-button">
                        <input type="hidden" value="" name="carid" class="ordercarid" />
                        <input type="hidden" value="" name="carstatus" class="orderstatus" />
                        <input type="button"  value="登&nbsp;&nbsp;&nbsp;&nbsp;陆" class="fM" onclick="$('#form').submit()" />
                    </div>
                    <!---校验-->
                    <p class="sell-phone-error" style="display:block;">请填写正确的手机号码</p>
                </form>
            </div>
            <div class="p-dl">
                <form class="registForm" onsubmit="return regcheck();" enctype="multipart/form-data" method="post" name="reg" id="reg">
                    <ul class="login-items">
                        <li class="clearfix">
                            <input class="input" name="mobile" id="mobile" type="text" value="" placeholder="手机号码（登录帐号）">
                        </li>
                        <li class="clearfix">
                            <input class="input left" type="text" value=""  name="verify" placeholder="输入验证码" style="width:100px;" />
                            <div id="send"><a href="#" class="send_code right">获取验证码</a></div>
                        </li>
                        <li class="clearfix">
                            <input class="input" type="text" value=""  name="realname" placeholder="姓名">
                        </li>
                        <li class="clearfix sex">
                            <input type="radio" checked="" name="gender" value="M" />
                            男&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="radio" name="gender" value="F" />
                            女 </li>
                        <li class="clearfix">
                            <input id="" class="input" type="password" name="password" value="" placeholder="输入密码（六位字符）">
                        </li>
                    </ul>
                    <div class="login-button">
                        <input type="hidden" value="" name="carid" class="ordercarid" />
                        <input type="hidden" value="" name="carstatus" class="orderstatus" />
                        <input type="button"  value="立即注册" class="fM" onclick="$('#reg').submit()" />
                    </div>
                    <!---校验-->
                    <p class="sell-phone-error" style="display:block;">请填写正确的手机号码</p>
                </form>
            </div>
        </div>
    </div>
</div>
<!--会员登录和注册弹出框结束-->
<div id="leftsead">
    <ul>
        <li>
            <a id="top_btn">
                <img src="images/foot03/ll06.png" width="47" height="49" class="hides"/>
                <img src="images/foot03/l06.png" width="47" height="49" class="shows" />
            </a>
        </li>

        <li>
            <a href="">
                <img src="images/foot03/ll03.png"  width="47" height="49" class="hides"/>
                <img src="images/foot03/l03.png" width="47" height="49" class="shows" />
            </a>
        </li>

        <li>
            <a href="">
                <img src="images/foot03/ll02.png" width="166" height="49" class="hides"/>
                <img src="images/foot03/l04.png" width="47" height="49" class="shows" />
            </a>
        </li>

        <li>
            <a class="youhui">
                <img src="images/foot03/l02.png" width="47" height="49" class="shows" />
                <img src="images/foot03/zfew.jpg" width="196" height="205" class="hides" usemap="#taklhtml"/>
            </a>
        </li>



    </ul>
</div>
<!--leftsead end-->

<script type="text/javascript">
    $(document).ready(function(){

        $("#leftsead a").hover(function(){
            if($(this).prop("className")=="youhui"){
                $(this).children("img.hides").show();
            }else{
                $(this).children("img.hides").show();
                $(this).children("img.shows").hide();
                $(this).children("img.hides").animate({marginRight:'0px'},'slow');
            }
        },function(){
            if($(this).prop("className")=="youhui"){
                $(this).children("img.hides").hide('slow');
            }else{
                $(this).children("img.hides").animate({marginRight:'-143px'},'slow',function(){$(this).hide();$(this).next("img.shows").show();});
            }
        });

        $("#top_btn").click(function(){if(scroll=="off") return;$("html,body").animate({scrollTop: 0}, 600);});

    });
</script>
</body>
</html>

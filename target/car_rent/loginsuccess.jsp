<%--
  Created by IntelliJ IDEA.
  User: AKUITLI
  Date: 2020/11/23
  Time: 14:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>车速递租车首页</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="layui/css/layui.css" media="all">
    <link rel="stylesheet" href="css/pagehome.index.css">
    <script type="application/javascript" src="js/jquery-3.3.1.js"></script>
    <script type="application/javascript" src="js/bootstrap.min.js"></script>
    <script type="application/javascript" src="layui/layui.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/vue"></script>

</head>
<body>
<script type="text/javascript">
    $(function () {
        $("#logout").click(function () {
            location.href="user/logout";
        });
    });
</script>
<div id="app">
    <div data-v-67ef3a4a class="csdheader">
        <div data-v-67ef3a4a class="layout clear">
            <div data-v-67ef3a4a class="left csdnav">
                <label data-v-67ef3a4a>
                    <a data-v-67ef3a4a href="#">你好,${sessionScope.tel.tel}</a>
                    <a data-v-67ef3a4a href="javascript:void" class="colorRed">/</a>
                    <a data-v-67ef3a4a id="logout" class="colorRed" style="margin-right: 10px;">[退出]</a>
                </label>


                <a data-v-67ef3a4a="" href="#mobileZuChe">手机租车</a>
                <a data-v-67ef3a4a="" href="helpCenter.html">帮助中心</a>
            </div>
            <div data-v-67ef3a4a="" class="right phone">
                <div data-v-67ef3a4a="" class="typeTab">
                    <a data-v-67ef3a4a="" href="../index.html" style="color: rgb(199, 0, 11);">中文</a>&nbsp;/&nbsp;
                    <a data-v-67ef3a4a="" href="../en/index.html">English</a>
                </div>
                <div data-v-67ef3a4a="" class="menu">
                    <a data-v-67ef3a4a="" href="mymain/mymain.html">我的车速递</a>
                </div>
                <div data-v-67ef3a4a="">
                    <i class="layui-icon layui-icon-cellphone" style="font-size:14px;  color:#c6000f;"></i>
                    <span data-v-67ef3a4a="">400-919-8000</span>
                </div>
            </div>

        </div>
    </div>

    <div data-v-39f7f629 class="csdnav">
        <div data-v-39f7f629="" class="layout clear">
            <div data-v-39f7f629="" class="left logo">
                <a data-v-39f7f629="" href="../index.html">
                    <img data-v-39f7f629="" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAKYAAAAqCAYAAAA5+iDUAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA3FpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNS1jMDE0IDc5LjE1MTQ4MSwgMjAxMy8wMy8xMy0xMjowOToxNSAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDo1NWY1ODZmZS0yNGNjLTg2NGMtODFmMi0yNjYzODhhNjczYTMiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6QjgwRkFGQ0U4MzFDMTFFNzkzM0FCMEZGM0ZFMDMzQ0UiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6QjgwRkFGQ0Q4MzFDMTFFNzkzM0FCMEZGM0ZFMDMzQ0UiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIChXaW5kb3dzKSI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSJ4bXAuaWlkOmU1YTliNDEzLTU2NDEtMDc0MS05OTA2LTZhNDg5YjU1NzNlYyIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDo1NWY1ODZmZS0yNGNjLTg2NGMtODFmMi0yNjYzODhhNjczYTMiLz4gPC9y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">
                </a>
            </div>
            <div data-v-39f7f629="" class="left navCom">
                <ul data-v-39f7f629="">
                    <li data-v-39f7f629="" >

                        <a data-v-39f7f629="" href="https://www.chesudi.com/module/activity.html" target="_self" >优惠活动</a>
                    </li>

                    <li data-v-39f7f629="">
                        <a data-v-39f7f629="" href="https://www.chesudi.com/module/joinWork.html" target="_blank" class="">加盟合作</a>
                    </li>
                    <li data-v-39f7f629="">
                        <a data-v-39f7f629="" href="https://www.chesudi.com/module/netCar.html" target="_blank" class="">网约车</a>
                    </li>
                    <li data-v-39f7f629="">
                        <a data-v-39f7f629="" href="https://www.chesudi.com/module/longRent.html" target="_blank" class="">企业长租</a>
                    </li>
                    <li data-v-39f7f629="">
                        <a data-v-39f7f629="" href="shortRent/shortrent.jsp" target="_self" class="">短租自驾</a>
                    </li>
                    <li data-v-39f7f629="">
                        <a data-v-39f7f629="" href="../index.jsp" target="_self" class="colorRed">
                            <span data-v-39f7f629="">首页</span></a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="banner">
        <div class="el_carousel">
            <div class="layui-carousel" id="test1">
                <div carousel-item>
                    <div class="el-carousel__item">
                        <a target="_blank" href="https://www.chesudi.com/activity/dynamic/newUserActivity/index.html" class="banner" style="background: url(&quot;https://web-api.chesudi.com/img/ActivityBanner/b8e51e417ef329a28d1f23dcdbf7ee1.jpg&quot;) center center no-repeat;"><img src="https://web-api.chesudi.com/img/ActivityBanner/b8e51e417ef329a28d1f23dcdbf7ee1.jpg" class="imgs"></a>
                    </div>
                    <div class="el-carousel__item">
                        <a target="_blank" href="https://www.chesudi.com/activity/static/index.html?id=summer&amp;num=2" class="banner" style="background: url(&quot;https://web-api.chesudi.com/img/ActivityBanner/1456f1ebc5f95ffec6e82c268d969a.jpg&quot;) center center no-repeat;"><img src="https://web-api.chesudi.com/img/ActivityBanner/1456f1ebc5f95ffec6e82c268d969a.jpg" class="imgs"></a>
                    </div>
                    <div class="el-carousel__item">
                        <a target="_blank" href="https://www.chesudi.com/activity/static/index.html?id=szSpring&amp;num=3" class="banner" style="background: url(&quot;https://web-api.chesudi.com/img/ActivityBanner/a6c238788168d2b19be377652a64b2.jpg&quot;) center center no-repeat;"><img src="https://web-api.chesudi.com/img/ActivityBanner/a6c238788168d2b19be377652a64b2.jpg" class="imgs"></a>
                    </div>
                    <div class="el-carousel__item">
                        <a target="_blank" href="https://www.chesudi.com/activity/static/index.html?id=cityFolo&amp;num=3" class="banner" style="background: url(&quot;https://web-api.chesudi.com/img/ActivityBanner/85f2b3ee429949f8166a50453baf3821.jpg&quot;) center center no-repeat;"><img src="https://web-api.chesudi.com/img/ActivityBanner/85f2b3ee429949f8166a50453baf3821.jpg" class="imgs"></a>
                    </div>
                    <div class="el-carousel__item">
                        <a target="_blank" href="https://www.chesudi.com/activity/static/index.html?id=rechargeShare&amp;num=4 " class="banner" style="background: url(&quot;https://web-api.chesudi.com/img/ActivityBanner/41e0dcc07c0cc4613493eeaaa4f3818.jpg&quot;) center center no-repeat;"><img src="https://web-api.chesudi.com/img/ActivityBanner/41e0dcc07c0cc4613493eeaaa4f3818.jpg" class="imgs"></a>
                    </div>
                </div>
            </div>
        </div>

        <div class="layout">
            <form class="layui-form" action="">
                <div class="selectCar">
                    <h1 class="carTit">短租自驾</h1>
                    <div class="getCar car">
                        <h3>取车</h3>
                    </div>
                    <div class="carCom clear">
                        <div class="layui-form-item">
                            <div class="layui-input-inline" style="width: 145px">
                                <select name="quiz1">
                                    <option value="">省市</option>
                                    <option value="上海">上海</option>
                                    <option value="广州">广州</option>
                                    <option value="深圳">深圳</option>
                                    <option value="杭州">杭州</option>
                                    <option value="成都">成都</option>
                                    <option value="武汉">武汉</option>
                                    <option value="南京">南京</option>
                                </select>
                            </div>
                            <div class="layui-input-inline" style="width: 145px">
                                <select name="quiz2">
                                    <option value="">门店</option>
                                    <option value="虹桥火车站接送点">虹桥火车站接送点</option>
                                    <option value="虹桥机场服务点">虹桥机场服务点</option>
                                    <option value="虹桥机场T2航站楼店">虹桥机场T2航站楼店</option>
                                    <option value="虹口足球场地铁站店">虹口足球场地铁站店</option>
                                </select>
                            </div>
                            <div class="layui-form-item">
                                <label class="layui-form-label" style="width: 90px">送门上车</label>
                                <div class="layui-input-block">
                                    <input type="checkbox" name="close" lay-skin="switch" lay-text="ON|OFF">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="getCar car">
                        <h3>还车</h3>
                    </div>
                    <div class="carCom clear">
                        <div class="layui-form-item">
                            <div class="layui-input-inline" style="width: 145px">
                                <select name="quiz1">
                                    <option value="">省市</option>
                                    <option value="上海">上海</option>
                                    <option value="广州">广州</option>
                                    <option value="深圳">深圳</option>
                                    <option value="杭州">杭州</option>
                                    <option value="成都">成都</option>
                                    <option value="武汉">武汉</option>
                                    <option value="南京">南京</option>
                                </select>
                            </div>
                            <div class="layui-input-inline" style="width: 145px">
                                <select name="quiz2">
                                    <option value="">门店</option>
                                    <option value="虹桥火车站接送点">虹桥火车站接送点</option>
                                    <option value="虹桥机场服务点">虹桥机场服务点</option>
                                    <option value="虹桥机场T2航站楼店">虹桥机场T2航站楼店</option>
                                    <option value="虹口足球场地铁站店">虹口足球场地铁站店</option>
                                </select>
                            </div>
                            <div class="layui-form-item">
                                <label class="layui-form-label" style="width: 90px">上门取车</label>
                                <div class="layui-input-block">
                                    <input type="checkbox" name="close" lay-skin="switch" lay-text="ON|OFF">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="goBtn">去选车</div>
                </div>
            </form>
        </div>
    </div>

    <div class="services">
        <div class="layout">
            <div class="title clear">
                <div class="titleBorder titleBorder1 left"></div>
                <div class="tit left">专业服务</div>
                <div class="titleBorder titleBorder2 left"></div>
            </div>
            <div class="serviceCon clear">
                <dl>
                    <dt>
                        <img src="https://www.chesudi.com/static/img/services1.9277539.png" class="imgss">
                    </dt>
                    <dd class="bgRed">
                        <h1>短租自驾</h1>
                        <ul>
                            <li>● &nbsp;全国连锁、数百余种车型满足您出行的需求</li>
                            <li>● &nbsp;手续便捷，安全有保障</li>
                        </ul>
                    </dd>
                </dl>
                <dl>
                    <dt>
                        <img src="https://www.chesudi.com/static/img/services2.9d93747.png" class="imgss">
                    </dt>
                    <dd class="bgBlack">
                        <h1>企业长租</h1>
                        <ul>
                            <li>● &nbsp;专属制定企业用车方案</li>
                            <li>● &nbsp;省去车辆维修管理的繁琐业务，"0"负担用车</li>
                        </ul>
                    </dd>
                </dl>
                <dl>
                    <dt>
                        <img src="https://www.chesudi.com/static/img/services3.9567579.png" class="imgss">
                    </dt>
                    <dd class="bgRed">
                        <h1>网约车</h1>
                        <ul>
                            <li>● &nbsp;合法运营，收入稳定</li>
                            <li>● &nbsp;车源丰富，多种金融方案支持</li>
                        </ul>
                    </dd>
                </dl>
                <dl class="last">
                    <dt>
                        <img src="https://www.chesudi.com/static/img/services4.0a1ca99.png" class="imgss">
                    </dt>
                    <dd class="bgBlack">
                        <h1>我要买车</h1>
                        <ul>
                            <li>● &nbsp;全新车、准新车一站式销售平台</li>
                            <li>● &nbsp;多品牌渠道特供，支持闪电购车</li>
                        </ul>
                    </dd>
                </dl>
            </div>
        </div>
    </div>

    <div class="recomend">
        <div class="layout">
            <div class="title clear">
                <div class="titleBorder titleBorder1 left"></div>
                <div class="tit left">推荐车型</div>
                <div class="titleBorder titleBorder2 left"></div>
            </div>

            <div class="recomendCon clear">
                <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
                    <ul class="layui-tab-title" style="font-size: 20px;">
                        <li class="layui-this" style="font-size: 20px; color: #000;">短租自驾</li>
                        <li style="font-size: 20px; color: #000;">企业长租</li>
                    </ul>
                    <div class="layui-tab-content" style="width:1200px; height:524px;">
                        <div class="layui-tab-item layui-show">
                            <div class="item carItemBig">
                                <img src="https://www.chesudi.com/static/img/ricanxuanyiDZ.5a39d59.png" onMouseOver="this.src='../images/richan.png'" onmouseout="this.src='https://www.chesudi.com/static/img/ricanxuanyiDZ.5a39d59.png'">
                            </div>
                            <div class="item carItemSmall">
                                <img src="https://www.chesudi.com/static/img/bentianDZ.16f9310.png"  onMouseOver="this.src='../images/bentian.png'" onmouseout="this.src='https://www.chesudi.com/static/img/bentianDZ.16f9310.png'">

                            </div>
                            <div class="item carItemSmall">
                                <img src="https://www.chesudi.com/static/img/biekeDZ-L8.573ed0f.png"  onMouseOver="this.src='../images/sma.png'" onmouseout="this.src='https://www.chesudi.com/static/img/biekeDZ-L8.573ed0f.png'">

                            </div>
                            <div class="item carItemSmall">
                                <img src="https://www.chesudi.com/static/img/smartDZ.d4ceb60.png"  onMouseOver="this.src='../images/bieke.png'" onmouseout="this.src='https://www.chesudi.com/static/img/smartDZ.d4ceb60.png'">

                            </div>
                            <div class="item carItemSmall">
                                <img src="https://www.chesudi.com/static/img/biekekaiyueDZ.b38a546.png"  onMouseOver="this.src='../images/kaiyue.png'" onmouseout="this.src='https://www.chesudi.com/static/img/biekekaiyueDZ.b38a546.png'">
                            </div>

                        </div>
                        <div class="layui-tab-item">
                            <div class="item carItemBig">
                                <img src="https://www.chesudi.com/static/img/teshilaCZ.2d7ec0b.png">
                                <div class="carTit">特斯拉</div>
                            </div>
                            <div class="item carItemSmall">
                                <img src="https://www.chesudi.com/static/img/lingteCZ.31f0bf6.png">
                                <div class="carTit">奔驰凌特</div>
                            </div>
                            <div class="item carItemSmall">
                                <img src="https://www.chesudi.com/static/img/beikeGL8shouxiCZ.552c1eb.png">
                                <div class="carTit">别克GL8</div>
                            </div>
                            <div class="item carItemSmall">
                                <img src="https://www.chesudi.com/static/img/A6CZ.1420b27.png">
                                <div class="carTit">奥迪A6</div>
                            </div>
                            <div class="item carItemSmall">
                                <img src="https://www.chesudi.com/static/img/pashateCZ.ed0be37.png">
                                <div class="carTit">大众帕萨特</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="newFlash">
        <div class="layout">
            <div class="title clear">
                <div class="titleBorder titleBorder1 left"></div>
                <div class="tit left">速递快讯</div>
                <div class="titleBorder titleBorder2 left"></div>
            </div>
            <div class="newFlashCon clear">
                <div class="flashItem left">
                    <div class="newImg">
                        <img src="https://www.chesudi.com/static/img/newFlash1.fc678e0.png">
                    </div> <div class="newContent">
                    <div>巴州汽车客运总站送车点、康城建国国际酒店服务点...</div>
                    <a href="news.html?newsId=2550">查看更多</a>
                    <span class="iconfont icon-sanjiaoxing"></span>
                </div>
                    <div class="newPlace">新疆新增门店</div>
                </div><div class="flashItem left">
                <div class="newImg">
                    <img src="https://www.chesudi.com/static/img/newFlash2.ec88fdf.png">
                </div>
                <div class="newContent">
                    <div>新汇嘉时代广场送车点、梨城花园酒店送车点...</div>
                    <a href="news.html?newsId=2549">查看更多</a>
                    <span class="iconfont icon-sanjiaoxing"></span>
                </div>
                <div class="newPlace">新疆新增服务点</div>
            </div>
                <div class="flashItem left">
                    <div class="newImg">
                        <img src="https://www.chesudi.com/static/img/newFlash3.0b6791f.png">
                    </div>
                    <div class="newContent">
                        <div>普宁机场服务点、承德高铁南站服务点...</div>
                        <a href="news.html?newsId=2548">查看更多</a>
                        <span class="iconfont icon-sanjiaoxing"></span>
                    </div>
                    <div class="newPlace">承德新增服务点</div>
                </div>
            </div>
            <div class="flashMore">
                <a href="news.html">更多&nbsp;<span class="iconfont icon-jiantou"></span></a>
            </div>
        </div>
    </div>
    <div data-v-01e628ca="" class="csdfooter">
        <div data-v-01e628ca="" class="foot1">
            <div data-v-01e628ca="" class="layout clear">
                <div data-v-01e628ca="" class="left footLogo">
                    <img data-v-01e628ca="" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAO4AAABACAYAAAAd+Eu8AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA3FpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNS1jMDE0IDc5LjE1MTQ4MSwgMjAxMy8wMy8xMy0xMjowOToxNSAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDo1NWY1ODZmZS0yNGNjLTg2NGMtODFmMi0yNjYzODhhNjczYTMiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6QjcxNjU3Qjk4NjExMTFFN0FDRTJFMTE5N0FCRkM1NzIiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6QjcxNjU3Qjg4NjExMTFFN0FDRTJFMTE5N0FCRkM1NzIiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIChXaW5kb3dzKSI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSJ4bXAuaWlkOmU1YTliNDEzLTU2NDEtMDc0MS05OTA2LTZhNDg5YjU1NzNlYyIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDo1NWY1ODZmZS0yNGNjLTg2NGMtODFmMi0yNjYzODhhNjczYTMiLz4gPC9y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">
                </div>
                <div data-v-01e628ca="" class="left footNav">
                    <ul data-v-01e628ca="" class="left">
                        <li data-v-01e628ca="">
                            <a data-v-01e628ca="" href="helpCenter.html?nav=0&amp;item=0">预定指南</a>
                        </li>
                        <li data-v-01e628ca="">
                            <a data-v-01e628ca="" href="helpCenter.html?nav=0&amp;item=0">模拟租车</a>
                        </li>
                        <li data-v-01e628ca="">
                            <a data-v-01e628ca="" href="helpCenter.html?nav=1&amp;item=6">订单变更</a>
                        </li>
                    </ul>
                    <ul data-v-01e628ca="" class="left">
                        <li data-v-01e628ca="">
                            <a data-v-01e628ca="" href="helpCenter.html?nav=0&amp;item=2">费用说明</a>
                        </li>
                        <li data-v-01e628ca="">
                            <a data-v-01e628ca="" href="helpCenter.html?nav=2&amp;item=8">违章处理</a>
                        </li>
                        <li data-v-01e628ca="">
                            <a data-v-01e628ca="" href="helpCenter.html?nav=2&amp;item=9">车损处理</a>
                        </li>
                    </ul>
                    <ul data-v-01e628ca="" class="left">
                        <li data-v-01e628ca="">
                            <a data-v-01e628ca="" href="helpCenter.html?nav=0&amp;item=3">取车流程</a>
                        </li>
                        <li data-v-01e628ca="">
                            <a data-v-01e628ca="" href="helpCenter.html?nav=0&amp;item=4">还车流程</a>
                        </li>
                        <li data-v-01e628ca="">
                            <a data-v-01e628ca="" href="helpCenter.html?nav=1&amp;item=7">续租/提前还车</a>
                        </li>
                    </ul>
                    <ul data-v-01e628ca="" class="left">
                        <li data-v-01e628ca="">
                            <a data-v-01e628ca="" href="about.html">关于我们</a>
                        </li>
                        <li data-v-01e628ca="">
                            <a data-v-01e628ca="" href="about.html">联系我们</a>
                        </li> <li data-v-01e628ca="">
                        <a data-v-01e628ca="" target="_blank" href="http://search.51job.com/list/co,c,2264765,0000,10,1.html">诚聘英才</a>
                    </li></ul></div> <div data-v-01e628ca="" id="mobileZuChe" class="left footCode">
                <div data-v-01e628ca="" class="left codeItem">
                    <div data-v-01e628ca="">
                        <img data-v-01e628ca="" src="https://www.chesudi.com/static/img/QRcode-Wechat.76b8a01.jpg">
                    </div>
                    <p data-v-01e628ca="">关注微信</p>
                </div>
                <div data-v-01e628ca="" class="left codeItem">
                    <div data-v-01e628ca="">
                        <img data-v-01e628ca="" src="https://www.chesudi.com/static/img/QRcode-Wap.cbba40b.jpg">
                    </div>
                    <p data-v-01e628ca="">手机版预定</p>
                </div>
                <div data-v-01e628ca="" class="left codeItem">
                    <div data-v-01e628ca="">
                        <img data-v-01e628ca="" src="https://www.chesudi.com/static/img/QRcode-app.11111eb.jpg">
                    </div>
                    <p data-v-01e628ca="">APP下载</p>
                </div>
            </div>
            </div>
        </div>
        <div data-v-01e628ca="" class="foot2">
            <div data-v-01e628ca="" class="layout">
                <div data-v-01e628ca="" class="item">上海车速递汽车租赁有限公司（总公司）杭州/深圳/广州/成都/武汉/苏州/佛山（分公司）</div>
                <div data-v-01e628ca="" class="item">©2009-2018 Chesudi.com 上海车速递汽车租赁有限公司 All Rights Reserved. 沪ICP备09082566号  </div>
                <div data-v-01e628ca="" class="item">
                    <a data-v-01e628ca="" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=31010502003185" target="_blank">
                        <img data-v-01e628ca="" src="../static/img/gongan.d0289dc.png">沪公网安备 31010502003185号</a>
                </div>
            </div>
        </div>
    </div>






</div>



<script>
    layui.use(['carousel','form', 'layedit','element'], function(){

        var $ = layui.jquery
            ,element = layui.element;

        var active = {
            tabAdd: function(){
                //新增一个Tab项
                element.tabAdd('demo', {
                    title: '新选项'+ (Math.random()*1000|0) //用于演示
                    ,content: '内容'+ (Math.random()*1000|0)
                    ,id: new Date().getTime() //实际使用一般是规定好的id，这里以时间戳模拟下
                })
            }
            ,tabChange: function(){
                //切换到指定Tab项
                element.tabChange('demo', '22'); //切换到：用户管理
            }
        };

        element.on('tab(test)', function(elem){
            location.hash = 'test='+ $(this).attr('lay-id');
        });

        var form = layui.form
            ,layer = layui.layer
            ,layedit = layui.layedit
            ,laydate = layui.laydate;

        var carousel = layui.carousel;
        //建造实例
        carousel.render({
            elem: '#test1'
            ,width: '100%' //设置容器宽度
            ,height: '620px'
            ,arrow: 'always' //始终显示箭头
            //,anim: 'updown' //切换动画方式
            ,autoplay: true
            ,interval: 2000
        });
        form.on('switch(switchTest)', function(data){
            layer.msg('开关checked：'+ (this.checked ? 'true' : 'false'), {
                offset: '6px'
            });
            layer.tips('温馨提示：请注意开关状态的文字可以随意定义，而不仅仅是ON|OFF', data.othis)
        });


    });



</script>

</body>
</html>

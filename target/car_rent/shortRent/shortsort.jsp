<!DOCTYPE html>
<html lang="en" xmlns:v-bind="http://www.w3.org/1999/xhtml">
<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" %>
<head>
    <meta charset="UTF-8">
    <title>短租排序</title>
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../layui/css/layui.css"  media="all">
    <link rel="stylesheet" href="../css/shortrent.shortrent.css">
    <script type="application/javascript" src="../js/jquery-3.3.1.js"></script>
    <script type="application/javascript" src="../js/bootstrap.min.js"></script>
    <script type="application/javascript" src="../layui/layui.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/vue"></script>
</head>
<body id="app">
<div data-v-67ef3a4a class="csdheader">
    <div data-v-67ef3a4a class="layout clear">
        <div data-v-67ef3a4a class="left csdnav">
            <label data-v-67ef3a4a>
                <a data-v-67ef3a4a href="../pagehome/login.html" class="colorRed">登
                    录</a>
                <a data-v-67ef3a4a href="" class="colorRed">/</a>
                <a data-v-67ef3a4a href="../pagehome/register.html" class="colorRed" style="margin-right: 10px;">注册</a>
            </label>


            <a data-v-67ef3a4a="" href="#mobileZuChe">手机租车</a>
            <a data-v-67ef3a4a="" href="helpCenter.html">帮助中心</a>
        </div>
        <div data-v-67ef3a4a="" class="right phone">
            <div data-v-67ef3a4a="" class="typeTab">
                <a data-v-67ef3a4a="" href="index.html" style="color: rgb(199, 0, 11);">中文</a>&nbsp;/&nbsp;
                <a data-v-67ef3a4a="" href="../en/index.html">English</a>
            </div>
            <div data-v-67ef3a4a="" class="menu">
                <a data-v-67ef3a4a="" href="login.html">我的车速递</a>
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
            <a data-v-39f7f629="" href="index.html">
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
                    <a data-v-39f7f629="" href="shortrent.html" target="_self" class="colorRed">短租自驾</a>
                </li>
                <li data-v-39f7f629="">
                    <a data-v-39f7f629="" href="index.html" target="_self" >
                        <span data-v-39f7f629="">首页</span></a>
                </li>
            </ul>
        </div>
    </div>
</div>

<div class="selCarMsg" >
    <div class="selCarMsgCom">
        <div class="Msg" >取车地址：{{getcitys}}</div>
    </div>

    <div class="selCarMsgCom">
        <div class="Msg">还车地址：{{backcitys}}</div>
    </div>
</div>



<div class="carListTab">
    <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
        <ul class="layui-tab-title">
            <li class="layui-this">按租金排序</li>
            <li>按热度排序</li>
        </ul>
        <div class="layui-tab-content">


            <div class="layui-tab-item layui-show">
                <!--for循环这段代码-->

                <div class="item clear" id="carlist">
                    <div class="thisPlace clear" id="carli" v-for="site in sites">
                        <div class="itemCarImg left">
                            <img :src="site.picture">
                        </div>
                        <div class="itemCarMsg left" >
                            <h1 id="sitename">{{site.name}}</h1>
                            <p id="sitetype">{{site.type}}</p><p id="sitenum">{{site.sitnum}}座</p>
                        </div>
                        <div class="itemPriceMsg left">
                            <div class="itemPriceMsgC left">
                                <p class="p1">
                                    <span id="siteprice">{{site.price}}</span>/日均
                                </p>
                            </div>
                            <div class="carLiBao">5天以上立减 5元/天</div>
                        </div>

                        <div class="itemBtn left">
                            <button class="butt"  @click="selectCar(site.id)">预定</button>
                        </div>
                    </div>
                </div>

            </div>








            <div class="layui-tab-item">


                <div class="item clear" id="carlis">
                    <div class="thisPlace clear" id="carl" v-for="site in cars">
                        <div class="itemCarImg left">
                            <img  :src="site.picture">
                        </div>
                        <div class="itemCarMsg left" >
                            <h1>{{site.name}}</h1>
                            <p>{{site.type}}</p><p>{{site.sitnum}}座</p>
                        </div>
                        <div class="itemPriceMsg left">
                            <div class="itemPriceMsgC left">
                                <p class="p1">
                                    <span>{{site.price}}</span>/日均
                                </p>
                            </div>
                            <div class="carLiBao">5天以上立减 5元/天</div>
                        </div>

                        <div class="itemBtn left">
                            <button class="butt" @click="selectCar(site.id)" >预定</button>
                        </div>
                    </div>
                </div>



            </div>
        </div>
    </div>


</div>


<script type="text/javascript">

    var getid = window.location.search;
    var vm = new Vue({
        el:'.selCarMsg',
        data:{
            getcitys : '',
            backcitys: ''
        },
    });

    var vm2 = new Vue({
        el:'#carlist',
        data:{
            sites : [],
        },
        methods:{
            selectCar:function (id) {
                window.location.href="../order/ordersubmit.jsp"+getid +"&cid=" +id;
            }
        },

    });

    var vm3 = new Vue({
        el:'#carlis',
        data:{
            cars : [],
        },

    });

</script>

<script type="text/javascript">
    $(function(){
        var getid = window.location.search;
        $.ajax({
            type:"get",
            url:"/city/findById"+getid,
            dataType:"json",
            success:function(data){
                if(data.length==1) {
                    vm.getcitys = data[0].name;
                    vm.backcitys = data[0].name;
                }else {
                    vm.getcitys = data[0].name;
                    vm.backcitys = data[1].name;
                }
            },
            error : function(){
                alert("ajax加载失败");
            }

        })
    })

</script>

<script type="text/javascript">
    $(function(){
        var getid = window.location.search;
        $.ajax({
            type:"get",
            url:"/car/findAll"+getid,
            dataType:"json",
            success:function(data){

                vm2.sites = data;

            },
            error : function(){
                alert("ajax加载失败");
            }

        })
    })

</script>

<script type="text/javascript">
    $(function(){
        var getid = window.location.search;
        $.ajax({
            type:"get",
            url:"/car/findNumber"+getid,
            dataType:"json",
            success:function(data){
                vm3.cars = data;
            },
            error : function(){
                alert("ajax加载失败");
            }

        })
    })

</script>


<!--<script type="text/javascript">

    function selectCar(cid) {

        window.location.href="../order/ordersubmit.html?cid="+cid;

    }

</script>-->






<script>
    layui.use('element', function(){
        var $ = layui.jquery
            ,element = layui.element; //Tab的切换功能，切换事件监听等，需要依赖element模块


    });
</script>




</body>
</html>
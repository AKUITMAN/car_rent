<%--
  Created by IntelliJ IDEA.
  User: AKUITLI
  Date: 2020/11/23
  Time: 20:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查询全部用户</title>
    <!DOCTYPE html>
    <html>
    <head>
        <%--<meta charset="utf-8">--%>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <title>layout 后台大布局 - Layui</title>
        <link rel="stylesheet" href="/layui/css/layui.css">
    </head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin" style="background: url(https://g.csdnimg.cn/common/csdn-toolbar/images/toolbar_bg_dark.png) no-repeat center center;background-size: auto;background-size: cover;">
    <div class="layui-header">
        <div class="layui-logo">车速递 后台管理</div>
        <!-- 头部区域（可配合layui已有的水平导航） -->
        <ul class="layui-nav layui-layout-left">
            <li class="layui-nav-item"><a href="">控制台</a></li>
            <li class="layui-nav-item"><a href="/newuser.jsp" target="iframeMain">新增用户</a></li>
            <li class="layui-nav-item"><a href="/userlist.jsp" target="iframeMain">用户</a></li>
            <li class="layui-nav-item">
                <a href="javascript:;">其它系统</a>
                <dl class="layui-nav-child">
                    <dd><a href="">邮件管理</a></dd>
                    <dd><a href="">消息管理</a></dd>
                    <dd><a href="">授权管理</a></dd>
                </dl>
            </li>
        </ul>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="javascript:;">
                    <img src="http://t.cn/RCzsdCq" class="layui-nav-img">
                    ${sessionScope.get("adminTel")}
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="">基本资料</a></dd>
                    <dd><a href="">安全设置</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item"><a href="">退了</a></li>
        </ul>
    </div>

    <div class="layui-side layui-bg-cyan">
        <div class="layui-side-scroll">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree"  lay-filter="test">
                <li class="layui-nav-item layui-nav-itemed">
                    <a class="" href="javascript:;">车辆管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="/newCar.jsp" target="iframeMain">新增车辆</a></dd>
                        <dd><a href="/carlist.jsp" target="iframeMain">车辆管理</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a class="" href="javascript:;">订单管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="/orderlist.jsp" target="iframeMain">订单管理</a></dd>
                        <dd><a href="/neworder.jsp" target="iframeMain">新增订单</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item"><a href="">云市场</a></li>
                <li class="layui-nav-item"><a href="">发布商品</a></li>
            </ul>
        </div>
    </div>

    <div class="layui-body" style="background-image: url(/images/4.jpg);background-size: cover;">
        <!-- 内容主体区域 -->

            <iframe src="" name="iframeMain" style="width: 100%"; height="100%"></iframe>

    </div>

    <div class="layui-footer">
        <!-- 底部固定区域 -->
        layui.com - 底部固定区域
    </div>
</div>
<script src="/layui/layui.js"></script>
<script>
    //JavaScript代码区域
    layui.use('element', function(){
        var element = layui.element;

    });
</script>
</body>
</html>

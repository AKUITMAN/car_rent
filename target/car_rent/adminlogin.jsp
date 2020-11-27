<%--
  Created by IntelliJ IDEA.
  User: AKUITLI
  Date: 2020/11/23
  Time: 17:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>管理员登陆</title>
    <link rel="stylesheet" href="/css/styles.css">
</head>
<body>
<div class="wrapper">

    <div class="container">
        <h1>汽车租赁后台管理系统</h1>
        <form action="/user/adminlogin" method="post">
            <div><input type="text" name="username" placeholder="用户名" ></div>
            <div><input type="password" name="password" placeholder="密码" ></div>
            <div>
                <label class="radio inline">
                    <input id="admin" type="radio" name="type"  checked/> 管理员
                </label>
            </div>

            <button type="submit" id="login-button" style="border: #0b0b0b solid">登录</button><br>
        </form>
    </div>

    <ul class="bg-bubbles">
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
    </ul>

</div>

</body>
</html>

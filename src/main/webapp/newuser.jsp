<%--
  Created by IntelliJ IDEA.
  User: AKUITLI
  Date: 2020/11/24
  Time: 15:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新增用户</title>
</head>
<body>
<form action="/user/newuser" method="post">
    用户名：<input type="text" id="tel" name="tel" value="">
    密码：<input type="password" id="password" name="password" value="">
    电子邮箱：<input type="text" id="email" name="email" value="">
    邀请码：<input type="text" id="invitation" name="invitation" value="">
    权限：<input type="radio" id="apply" name="apply" value="1">管理员
    <input type="radio" id="admin" name="apply" value="0">用户
    <input type="submit" value="提交">
</form>

</body>
</html>

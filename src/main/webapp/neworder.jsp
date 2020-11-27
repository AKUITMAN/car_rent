<%--
  Created by IntelliJ IDEA.
  User: AKUITLI
  Date: 2020/11/25
  Time: 10:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新增订单</title>
</head>
<body>
<form action="/order/addOrder" method="post">
    <input type="hidden" id="id" name="id">
    CID:<input type="text" id="cid" name="cid" value="">
    UID:<input type="text" id="uid" name="uid" value="">
    出发ID:<input type="text" id="getid" name="getid" value="">
    返回ID:<input type="text" id="backid" name="backid">
    订单金额:<input type="text" id="oprice" name="oprice">
    状态：<input type="radio" id="status" name="status" value="已预定">已预定
    <input type="radio" id="bstatus" name="status" value="已归还">已归还
    <input type="submit" value="提交">
</form>


</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: AKUITLI
  Date: 2020/11/26
  Time: 10:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新增车辆</title>
    <script type="application/javascript" src="/js/jquery-3.3.1.js"></script>
    <script type="application/javascript" src="/css/bootstrap.min.css"></script>
    <script type="application/javascript" src="/js/bootstrap.min.js"></script>
</head>
<body>
<!--
 enctype="multipart/form-data"

 图片的上传
 -->
<form action="/car/newCar" method="post" enctype="multipart/form-data">
    汽车名称：<input type="text" id="name" name="name" value=""><br>
    汽车类型：<input type="text" id="type" name="type" value=""><br>
    座位数：<input type="text" id="sitnum" name="sitnum" value=""><br>
    城市ID：<input type="text" id="cid" name="cid" value=""><br>
    每日租金：<input type="text" id="price" name="price" value=""><br>
    汽车数量：<input type="text" id="number" name="number" value=""><br>
    汽车图片：<input type="file" id="file" name="file" value=""><br>
    <input type="submit" value="提交">
</form>

</body>
</html>

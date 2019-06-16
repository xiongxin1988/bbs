<%--
  Created by IntelliJ IDEA.
  User: xiongxin
  Date: 2019/6/15
  Time: 20:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" language="java" %>
<html>
<head>
    <title>添加留言</title>
</head>
<body>
<h2>新增帖子</h2>
<form method="post" action="../topic/save">
    <div>留言者：<input name="name"></div>
    <div>主题：<input name="subject"></div>
    <div>内容：<textarea name="content"></textarea></div>
    <input value="保存" type="submit">
</form>

</body>
</html>

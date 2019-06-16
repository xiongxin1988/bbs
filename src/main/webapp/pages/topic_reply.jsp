<%--
  Created by IntelliJ IDEA.
  User: xiongxin
  Date: 2019/6/15
  Time: 20:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <title>添加回复</title>
</head>
<body>
<h2>回复帖子</h2>

发布者:${topic.name}<br>
主题:${topic.subject}<br>
内容:${topic.content}<br>
<c:forEach items="${replies}" var="r">
    <br>
    回复者： ${r.name}<br>
    回复内容：${r.content}<br>
    回复时间：<fmt:formatDate  type="both" value="${r.createtime}"/><br>
    <br>
    <br>

</c:forEach>
<form action="../topic/reply/save">
    <input type="hidden" name="topic.id" value="${topic.id}">
    <div>回复者：<input name="name"></div>
    <div>内容：<textarea name="content"></textarea></div>
    <input value="保存" type="submit">
</form>

</body>
</html>

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
    <title>首页</title>
</head>
<body>
<h2>传智70期留言板</h2>
【<a href="topic/add">新增帖子</a>】<br>
<c:forEach items="${topics}" var="t" varStatus="i">
    --------------------------------------------------------------------------<br>
    ------------------------ [当前第${i.index+1}帖子]-----------------------------------<br>
    --------------------------------------------------------------------------<br>

    --发布者:${t.name}<br>
    --主题:${t.subject}<br>
    --内容:${t.content}<br>
    --时间:<fmt:formatDate  type="both" value="${t.createtime}"/><br>
    ----------------------<br>
    [以下是回复内容]:【<a href="topic/delete?id=${t.id}">删除帖子</a>】
    <c:forEach items="${t.replies}" var="r" varStatus="i">
       <br>
        [${i.index+1}楼]<br>
       ----回复者： ${r.name}【<a href="topic/reply/delete?id=${r.id}">删除回复</a>】<br>
       ----回复内容：${r.content}<br>
       ----回复时间：<fmt:formatDate  type="both" value="${r.createtime}"/><br>

    </c:forEach><br>
    ---------------<br>
    【<a href="topic/reply?id=${t.id}">回复此帖</a>】<br>
</c:forEach>


</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: fengliu
  Date: 5/6/21
  Time: 8:23 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Profile</title>
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
    <% pageContext.setAttribute("ctp", request.getContextPath()); %>
</head>
<nav>
    <a href="${ctp}/blog">Home</a>
    <a href="${ctp}/logout.do">Logout</a>
    <a href="${ctp}/admin">Admin!</a>
</nav>
<body>


<div id="userDetail-user-information">
    <ul>
        <li>Username : ${userInfo.username}</li>
        <li>Email: ${userInfo.email}</li>
        <li>Role: ${userInfo.role}</li>
    </ul>
</div>
<div id="userDetail-Blogs-List">
    <c:forEach items="${blogs}" var="item">
        <div>
            <a href="${ctp}/blog/${item.id}">${item.title}</a><br/>
            <a href="${ctp}/user/${item.userId}">${item.userName}</a>
            <p>info: ${item.content}</p>
        </div>
    </c:forEach>
</div>

<div id="userDetail-comment-List">
    <c:forEach items="${comments}" var="comment">
        <div>
            <a href="${ctp}/blog/${comment.id}">${comment.content}</a><br/>
<%--            <a href="${ctp}/user/${comment.userId}">${comment.userName}</a>--%>
        </div>
    </c:forEach>
</div>

</body>
</html>

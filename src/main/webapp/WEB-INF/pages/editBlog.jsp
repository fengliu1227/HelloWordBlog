<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: fengliu
  Date: 5/8/21
  Time: 1:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% pageContext.setAttribute("ctp", request.getContextPath()); %>
<html>
<head>
    <title>Edit My Blog</title>
</head>
<body>
private Integer id;
private String title;
private String content;
private Integer userId;
private String userName;
private Date createTime;
private Date updateTime;
<form:form action="${ctp}/blog/${blog.id}" modelAttribute="blog" method="post">
    <input type="hidden" name="_method" value="put">
    Title:<form:input path="title" />
    Content<form:textarea path="content"/>
    <input type="submit" value="submit"/>
</form:form>
</body>
</html>

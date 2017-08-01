<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>View Users</title>
</head>
<body>

<%@page import="com.javatpoint.dao.*,com.javatpoint.bean.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<h1>商品列表</h1>

<%
	List<Article> list=ArticleDao.getAllArticle();
	request.setCharacterEncoding("UTF-8");
	request.setAttribute("list",list);
%>

<table border="1" width="90%">
<tr><th>Id</th><th>商品名稱</th><th>描述</th><th>價格</th><th>庫存</th><th>圖片</th><th>修改</th><th>刪除</th></tr>
<c:forEach items="${list}" var="a">
	<tr><td>${a.getIdArticle()}</td><td>${a.getLibelle()}</td><td>${a.getDesc()}</td><td>${a.getPrix()}</td><td>${a.getQte()}</td><td>${a.getImg()}</td><td><a href="editArticleform.jsp?id=${a.getIdArticle()}">Edit</a></td><td><a href="delArticle.jsp?id=${a.getIdArticle()}">Delete</a></td></tr>
</c:forEach>
</table>
<br/><a href="Fileform.jsp">上架</a>

</body>
</html>
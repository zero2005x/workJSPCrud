<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="css/manager_style.css" rel='stylesheet' type='text/css' />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp" />
<c:if test="${user.isValid() }">
 <div class="col-md-3 col-sm-3 col-xs-6"><p><a class="well top-block" href="viewusers.jsp">會員  <i class="glyphicon glyphicon-star green"></i></a></p></div>
 <div class="col-md-3 col-sm-3 col-xs-6"><p><a class="well top-block" href="ArticleListPage.jsp">商品  <i class="glyphicon glyphicon-star green"></i></a></p></div>
 <div class="col-md-3 col-sm-3 col-xs-6"><p><a class="well top-block" href="MsgListPage.jsp">訊息  <i class="glyphicon glyphicon-star green"></i></a></p></div>
 <div class="col-md-3 col-sm-3 col-xs-6"><p><a class="well top-block" href="addfileform.jsp">上架  <i class="glyphicon glyphicon-star green"></i></a></p></div>
</c:if>

<c:if test="${not user.isValid() }">
<p>請登入會員。</p>
<a href="login.jsp" >會員登入</a>
<a href="adduserform.jsp" >註冊會員</a>
</c:if>
</html>

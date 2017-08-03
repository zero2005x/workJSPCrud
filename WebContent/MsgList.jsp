<%@page import="com.javatpoint.dao.*,com.javatpoint.bean.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>View Message</title>
</head>
<body>
<h1>訊息列表</h1>
<%
	List<Msg> list=MsgDao.getAllMsg();
	request.setCharacterEncoding("UTF-8");
	request.setAttribute("list",list);
%>
<table border="1" width="90%">
<tr><th>Id</th><th>姓名</th><th>電子郵件</th><th>主旨</th><th>訊息</th><th>刪除</th></tr>
<c:forEach items="${list}" var="m">
	<tr><td>${m.getIdMsg()}</td><td>${m.getMsgName()}</td><td>${m.getMsgEmail()}</td><td>${m.getMsgSub()}</td><td>${m.getMessage()}</td><td><a href="delMsg.jsp?idMsg=${m.getIdMsg()}">刪除</a></td></tr>
</c:forEach>
</table>

</body>
</html>
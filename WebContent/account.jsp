<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.javatpoint.dao.*,com.javatpoint.bean.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="user" class="com.javatpoint.bean.User" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="user"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<%
	String name=user.getName();
	User u=UserDao.getRecordByName(name);
%>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="panel panel-default">
  <!-- Default panel contents -->
  <div class="panel-heading">會員資料</div>

  <!-- Table -->
  <table class="table">
    <tr><th>姓名</th><th>密碼</th><th>電子郵件</th><th>性別</th><th>城市</th>
	<tr><td><%=u.getName()%></td><td><%=u.getPassword()%></td><td><%=u.getEmail()%></td><td><%=u.getSex()%></td><td><%=u.getCountry()%></td>
	
  </table>
</div>
<a href="UserEditForm.jsp?id=<%=u.getId() %>" >會員修改</a>
</body>
</html>


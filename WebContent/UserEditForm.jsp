<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.javatpoint.dao.*,com.javatpoint.bean.*"%>
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
<h1>會員修改</h1>
<form action="UserEditUser.jsp" method="post">
<input type="hidden" name="id" value="<%=u.getId() %>"/>
<table>
<tr><td>姓名 :</td><td><input type="text" name="name" value="<%= u.getName()%>"/></td></tr>
<tr><td>密碼 :</td><td><input type="password" name="password" value="<%= u.getPassword()%>"/></td></tr>
<tr><td>電子郵件 :</td><td><input type="email" name="email" value="<%= u.getEmail()%>"/></td></tr>
<tr><td>性別 :</td><td><input type="radio" name="sex" value="male"/>Male <input type="radio" name="sex" value="female"/>Female </td></tr>
<tr><td>城市 :</td><td>
<select name="country">
<option>India</option>
<option>Pakistan</option>
<option>Afghanistan</option>
<option>Berma</option>
<option>Other</option>
</select>
</td></tr>
<tr><td colspan="2"><input type="submit" value="修改"/></td></tr>
</table>
</form>
</body>
</html>
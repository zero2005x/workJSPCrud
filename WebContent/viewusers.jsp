<%@page import="com.javatpoint.dao.UserDao,com.javatpoint.bean.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<%
		int pagenum = 0;
		int pagesize = 0;
		String strPage = "1";
		if(request.getParameter("page") != null)
		{
			strPage = request.getParameter("page");
		}
		if(strPage.length() > 0 && strPage != null)
		{
			if(Integer.valueOf(strPage) == 1)
			{
				pagesize = Integer.valueOf(strPage) * 10;
			}
			else
			{
				pagenum = Integer.valueOf(strPage)*10-10;
				pagesize = Integer.valueOf(strPage)*10-1;
			}
		}
	List<User> list=UserDao.getAllUsersByPage(pagenum, pagesize);
	request.setCharacterEncoding("UTF-8");
	request.setAttribute("list",list);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>View Users</title>
</head>
<body>
<jsp:include page="header.jsp" />
<div class="panel panel-default">
  <!-- Default panel contents -->
  <div class="panel-heading">會員列表</div>

  <!-- Table -->
  <table class="table">
    <tr><th>Id</th><th>姓名</th><th>密碼</th><th>電子郵件</th><th>性別</th><th>城市</th><th>修改</th><th>刪除</th></tr>
	<c:forEach items="${list}" var="u">
	<tr><td>${u.getId()}</td><td>${u.getName()}</td><td>${u.getPassword()}</td><td>${u.getEmail()}</td><td>${u.getSex()}</td><td>${u.getCountry()}</td><td><a href="editform.jsp?id=${u.getId()}">Edit</a></td><td><a href="deleteuser.jsp?id=${u.getId()}">Delete</a></td></tr>
	</c:forEach>
  </table>
</div>
	<div align="center">
	<form action="viewusers.jsp" id="pageform" method="get">
		<select name="page" id="page" onchange="pageform.submit()">
			<%
				for(int i=1;i<5;i++)
				{
					%>
					<option value="<%=i%>" <%if(Integer.valueOf(strPage) == i) out.println("selected"); %>>第<%=i%>頁</option>
					<% 
				}
			%>
		</select>
	</form>
	</div>
	<div align="center">
		<table>
		<tr>
		<%
			for(int j=1;j<=5;j++)
			{
				%>
					<td <%if(j == Integer.valueOf(strPage)){%>bgcolor="#FF3300"<%} %>><a href="viewusers.jsp?page=<%=j %>">&nbsp<%=j %>&nbsp</a></td>
				<% 
			}
		%>
		</tr>
		</table>
	
	</div>
<p><a href="adduserform.jsp">新增會員</a></p>

</body>
</html>
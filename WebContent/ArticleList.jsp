<%@page import="com.javatpoint.dao.*,com.javatpoint.bean.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>View Users</title>
</head>
<body>

<h1>商品列表</h1>

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

	List<Article> list=ArticleDao.getAllArticle();
	request.setCharacterEncoding("UTF-8");
	request.setAttribute("list",list);
	
	int TotalNum = ArticleDao.ArticleSize();
	int TotalPage = (int)Math.ceil(TotalNum / (double)10);
%>

<table border="1" width="90%">
<tr><th>Id</th><th>商品名稱</th><th>描述</th><th>價格</th><th>種類</th><th>庫存</th><th>圖片</th><th>修改</th><th>刪除</th></tr>
<c:forEach items="${list}" var="a">
	<tr><td>${a.getIdArticle()}</td><td>${a.getLibelle()}</td><td>${a.getDesc()}</td><td>${a.getPrix()}</td><td>${a.getCate()}</td><td>${a.getQte()}</td><td><img src="${a.getImg()}"></td><td><a href="editArticleform.jsp?idArticle=${a.getIdArticle()}">Edit</a></td><td><a href="delArticle.jsp?idArticle=${a.getIdArticle()}">Delete</a></td></tr>
</c:forEach>
</table>

<div align="center">
	<form action="viewusers.jsp" id="pageform" method="get">
		<select name="page" id="page" onchange="pageform.submit()">
			<%
				for(int i=1;i<=TotalPage;i++)
				{
					%>
					<option value="<%=i%>" <%if(Integer.valueOf(strPage) == i) out.println("selected"); //當onchange="pageform.submit()"存在才有作用%>>第<%=i%>頁</option>
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
			for(int j=1;j<=TotalPage;j++)
			{
				%>
					<td <%if(j == Integer.valueOf(strPage)){%>bgcolor="#FF3300"<%} %>><a href="viewusers.jsp?page=<%=j %>">&nbsp<%=j %>&nbsp</a></td>
				<% 
			}
		%>
		</tr>
		</table>
	
	</div>

<br/><a href="addfileform.jsp">上架</a>

</body>
</html>
<!DOCTYPE html>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.javatpoint.dao.ArticleDao,com.javatpoint.bean.Article"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit Article Form</title>
</head>
<body>

<%
	String idArticle=request.getParameter("idArticle");
	Article a =ArticleDao.getArticleById(Integer.parseInt(idArticle));
%>

<h1>Edit Article Form</h1>
<form action="editArticle.jsp" method="post" enctype="multipart/form-data">
<input type="hidden" name="idArticle" id="idArticle" value="<%=a.getIdArticle() %>"/>
<table>
<p>產品名稱 :<input type="text" name="libelle" value="<%= a.getLibelle()%>" ></p>
<p>描述 : <input type="desc" name="desc" value="<%= a.getDesc()%>"></p>
<p>價格 : <input type="text" name="prix" id="prix" value="<%= a.getPrix() %>" ></p>
<p>種類 : <select name="category" id="category" style="width:155px" value="<%= a.getCate()%>">
			<option>BOSTON</option>
			<option>TOTE</option>
			<option>MESSENGER</option>
			<option>SHOULDER</option>
			<option>WAIST</option>
			<option>OTHER</option>
</select>
</p>
<p>庫存 : <input type="text" name="qte" id="qte" value="<%= a.getQte()%>"></p>
<p>圖片 : <input type="file" name="file" id="file" value="<%= a.getImg()%>"></p>
<tr><td colspan="2"><input type="submit" value="修改"/></td></tr>
</table>
</form>

</body>
</html>
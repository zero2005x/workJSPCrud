<%@page import="com.javatpoint.dao.ArticleDao"%>
<jsp:useBean id="a" class="com.javatpoint.bean.Article"></jsp:useBean>
<jsp:setProperty property="*" name="a"/>

<%
	ArticleDao.delete(a);
	response.sendRedirect("delArticle-success.jsp");
%>
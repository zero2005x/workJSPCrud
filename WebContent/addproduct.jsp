<%@page import="com.javatpoint.bean.*,com.javatpoint.dao.*,com.oreilly.servlet.MultipartRequest"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="a" class="com.javatpoint.bean.Article" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="a" />
<%
	MultipartRequest multi = new MultipartRequest(request, "C:/Users/T450/eclipse-workspace/JSPCrud/WebContent/images");
    String fname ="images/"+ multi.getFilesystemName("file");
    //fname="images/"+fname;            
	String libelle = new String(multi.getParameter("libelle").getBytes("ISO-8859-1"), "UTF-8");
	String desc = new String(multi.getParameter("desc").getBytes("ISO-8859-1"), "UTF-8");
	Double prix = Double.parseDouble(multi.getParameter("prix"));
	String category = new String(multi.getParameter("category").getBytes("ISO-8859-1"), "UTF-8");
	int qte=Integer.parseInt(multi.getParameter("qte"));
	
	Article act = new Article(libelle, desc, prix, category, qte, fname);
	ArticleDao dao = new ArticleDao();

	if (dao.add(act))
	{ 
		response.sendRedirect("addfile-success.jsp");
	}
	else
	{
		response.sendRedirect("addfile-error.jsp");
	}
%>


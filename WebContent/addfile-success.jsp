<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="a" class="com.javatpoint.bean.Article"></jsp:useBean>
<jsp:setProperty property="*" name="a" />
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

上傳成功。
<jsp:include page="Fileform.jsp"></jsp:include>
</body>
</html>
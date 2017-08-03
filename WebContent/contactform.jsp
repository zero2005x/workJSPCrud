<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="addcontact.jsp" method="post" >
<p>姓名 : <input type="text" name="name" id="name" ></p>
<p>電子郵件 : <input type="email" name="email" id="email" ></p>
<p>主旨 : <input type="text" name="subject" id="subject" ></p>
<p>訊息 : <input type="text" name="message" id="message" ></p>
<p><input type="submit" value="傳送"></p>
</form>
</body>
</html>
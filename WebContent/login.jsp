<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javatpoint.dao.UserDao,com.javatpoint.bean.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
    request.setCharacterEncoding("UTF-8");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login page</title>
</head>
<script type="text/javascript">

function check()
{
	var name = document.getElementById("name");
	var pwd = document.getElementById("password");
	
	if(name.value == "")
	{	
		alert("請填寫帳號。");
		return false;
	}
	else if(pwd.value == "")
    {
    	alert("請填寫密碼。");
    	return false;
    }
	else
		return true;
}

</script>
<body>

<form action="check.jsp" method="post" onsubmit="return check();">
<p>帳號 : <input type="text" name="name" id="name"></p>
<p>密碼 : <input type="password" name="password" id="password"></p>
<p><input type="submit" value="登入"></p>
<a href="adduserform.jsp">註冊會員</a>
</form>
</body>
</html>
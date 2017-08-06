<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javatpoint.dao.UserDao,com.javatpoint.bean.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:useBean id="user" class="com.javatpoint.bean.User" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="user"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
    request.setCharacterEncoding("UTF-8");
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/index_style.css" rel='stylesheet' type='text/css' />
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
<jsp:include page="header.jsp" />
<div class="main">
	<div class="login-form">
	
		<h1>會員登入</h1>
		
			<div class="head">
		<img src="images/user.png" alt=""/>
		</div>
		
	<form action="check.jsp" method="post" onsubmit="return check();">
		<p>帳號 : <input type="text" class="text" value="Username" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'USERNAME';}" name="name" id="name"></p>
		
		<p>密碼 : <input type="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" name="password" id="password"></p>
		
		<div class="submit">
			<p><input type="submit" onclick="myFunction()" value="登入"></p>
		</div>
		
			<p><a href="#">Forgot Password ?</a></p>
				
			<p><a href="adduserform.jsp">註冊會員</a></p>
	
	</form>
</div>
	</div>
	<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='UTF-8'></script></div>
</body>
</html>

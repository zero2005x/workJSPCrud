<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.javatpoint.dao.*,com.javatpoint.bean.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="user" class="com.javatpoint.bean.User" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="user"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

function check()
{
	var name = document.getElementById("name");
	var msex = document.getElementById("msex").checked;
	var fsex = document.getElementById("fsex").checked;
	var pwd1 = document.getElementById("pwd1");
	var pwd2 = document.getElementById("pwd2");
	
	if(pwd1.value != pwd2.value)
		{
			alert("密碼錯誤。");
			return false;
		}
	
	var obj = document.getElementById("name").value;  
    if(/.*[\u4e00-\u9fa5]+.*$/.test(obj))  
    {  
    alert("帳號不可為中文。");  
    return false;  
    }  
	
	if(name.value == "" || (msex == false && fsex == false))
	{
		if(name.value == "")
		{	
			alert("請填寫帳號。");
			return false;
		}
		else if(msex == false && fsex == false)
   		{
    		alert("未選擇性別。");
    		return false;
   		}
		
		
	}
	return true;
}

</script>
</head>
<%
	String name=user.getName();
	User u=UserDao.getRecordByName(name);
%>
<body>
<h1>會員修改</h1>
<form action="UserEditUser.jsp" method="post" onsubmit="return check();">
<input type="hidden" name="id" value="<%=u.getId() %>"/>
<table>
<tr><td>姓名 :</td><td><input type="text" name="name" value="<%= u.getName()%>" id="name"/></td></tr>
<tr><td>密碼 :</td><td><input type="password" name="password" value="<%= u.getPassword()%>" id="pwd1"/></td></tr>
<tr><td>確認密碼:</td><td><input type="password" name="password" id="pwd2"/></td></tr>
<tr><td>電子郵件 :</td><td><input type="email" name="email" value="<%= u.getEmail()%>"/></td></tr>
<tr><td>性別 :</td><td><input type="radio" name="sex" value="male" id="msex"/>Male <input type="radio" name="sex" value="female" id="fsex"/>Female </td></tr>
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
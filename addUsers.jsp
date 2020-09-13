<%@page import="com.UsersDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
   <jsp:useBean id="u" class="com.Users"></jsp:useBean>
   <jsp:setProperty property="*" name="u"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
	int status = UsersDao.add(u);
	if (status > 0)
	{
		out.print("Success");
	}
	else
		out.print("Falied");
%>
	
	<br>
	
	<a href="register.jsp">Register</a>
</body>
</html>
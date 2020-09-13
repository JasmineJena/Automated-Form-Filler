<%@page import="com.UsersDao"%>
<%@page import="com.Users"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>REGISTER HERE</title>
<link href="register123.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<%
		String userid = request.getParameter("userid");
	System.out.println(userid);
		if(userid != null)
		{
			Users u = UsersDao.getDetails(userid);
	%>
		<pre>
		<center><header>REGISTRATION</header></center>
		
	<div id="hi">
			<br>Name : <input class="lel" type="text" name="name" value="<%=u.getName()%>"><br>
			<br>address : <input class="lel" type="text" name="address" value="<%=u.getAddress()%>"><br>
			<br>phone : <input class="lel" type="text" name="phone" value="<%=u.getPhone()%>"><br>
			<br>Gender</br>
			<input class="lel" type="radio" name="gen" male>male
			<input class="lel" type="radio" name="gen" female>female
			<input class="lel" type="radio" name="gen" other>other
			<br>State</br>
			<select class="lel" name="cars">
    <option class="lel" value="Odisha">Odisha</option>
    <option class="lel" value="Maharashtra">Maharashtra</option>
    <option class="lel" value="Goa">Goa</option>
    <option class="lel" value="Gujarat">Gujarat</option>
  </select>
  <br><br>
			<br><input type="submit" value="Submit">
			</div>
	<%
		}
		else
		{
	%>
	</pre>
	<pre>
	<center><header>REGISTRATION</header></center>
	<fieldset>
		<form action="register.jsp">
			Userid : <input class="lel" type="text" name="userid">
			
			<input class="lel" type="submit" value="click">
			</form>
	</fieldset>
	<div id="hi">
			<br>Name : <input class="lel" type="text" name="name" ><br>
			<br>address : <input class="lel" type="text" name="address" ><br>
			<br>phone : <input class="lel" type="text" name="phone" ><br>
			<br>Gender</br>
			<input class="lel" type="radio" name="gen" male>male
			<input class="lel" type="radio" name="gen" female>female
			<input class="lel" type="radio" name="gen" other>other
			<br>State</br>
			<select class="lel" name="cars">
    <option class="lel" value="Odisha">Odisha</option>
    <option class="lel" value="Maharashtra">Maharashtra</option>
    <option class="lel" value="Goa">Goa</option>
    <option class="lel" value="Gujarat">Gujarat</option>
  </select>
			<br><input class="lel" type="submit" value="Submit">
			</div>
	<%
		}
		%>
		</pre>
	
</body>
</html>
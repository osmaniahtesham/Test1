<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.DBUtils"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="LightBlue">
<%
String uname=request.getParameter("uname");
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");

String pass=request.getParameter("pass");
String mail=request.getParameter("mail");
String phone=request.getParameter("phone");
String location=request.getParameter("location");

Connection con=DBUtils.getConnection1();
Statement stmt=DBUtils.getStatement();
String sql="insert into user2 values('"+uname+"','"+pass+"','"+fname+"','"+lname+"','"+mail+"','"+phone+"','"+location+"')";
stmt.executeUpdate(sql);

%>
<h2>Successfully registered Login Now...</h2>
<form action="Login.jsp">
<input type="submit" value="Login..">
</form>

</body>
</html>
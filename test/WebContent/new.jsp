<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.DBUtils"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>


<body bgcolor="LightSkyBlue">
<center>
<form action="user.jsp">
<br><br>
<h2>Registration Form<br></h2>
UerName:<input type="text" name="uname"/><br>
Password:<input type="password" name="pass"/><br>
Confirm Password:<input type="password" name="cpass"/><br>
FirstName:<input type="text" name="fname"/><br>
LastName:<input type="text" name="lname"/><br>
Email:<input type="text" name="mail"/><br>
Phone:<input type="text" name="phone"/><br>
Location:<input type="text" name="location"/><br>


<input type="submit" value="Save"/>
<input type="reset" value="Reset">


</form>
<form action="">
<table border="2">
<tr><td>First Name </td><td> Last Name </td><td> Email </td><td> Phone Number </td><td> Location </td><td>   </td></tr>

<%
//String url="jdbc:sqlserver://localhost:51394;databaseName=ahtesham;integratedSecurity=true;";
try {
	String fname,lname,email,phone,location;
	
	Connection con=DBUtils.getConnection1();
	Statement stmt=DBUtils.getStatement();
	
	ResultSet rs=stmt.executeQuery("select * from user2");
	
			
			while(rs.next())
			{
				fname=rs.getString(3);
				lname=rs.getString(4);
				email=rs.getString(5);
				phone=rs.getString(6);
				location=rs.getString(7);
				System.out.println("Location "+location);
				
				
				%>
		
	<tr><td><%=fname %> </td><td><%=lname %></td><td><%=email %> </td><td><%=phone %> </td><td><%=location %> </td><td><a href="Edit.jsp?id=<%= "Edit"%>"><%="Edit" %></a> <a href="Delete.jsp?id=<%= "Delete"%>"><%="Delete" %></a></td></tr>
	
				
				<% 		
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
%>

    </table>


</form>
</center>
</body>
</html>
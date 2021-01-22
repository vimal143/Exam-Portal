<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="java.sql.*"%>
 <%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">
<title>Students</title>
</head>
<body>
<%@include file="navbar.jsp" %>
<%
String userID=(String)session.getAttribute("userid");
if(userID==null){
	response.sendRedirect("admin.jsp");
}
%>
<%

Class.forName("oracle.jdbc.driver.OracleDriver");
try{
Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","7388");
Statement st=conn.createStatement();
PreparedStatement ps=conn.prepareStatement("select * from examuser");
ResultSet  resultset= ps.executeQuery();
%>
<div class="container mt-3">
<table class="table table-striped table-light mt-3" >
<tr>
<th scope="col">First Name</th>
<th scope="col">Last Name</th>
<th scope="col">Email</th>
<th scope="col">Password</th>
</tr>
<% 
while(resultset.next()){
%>	
<tr>
<td ><%=resultset.getString("Fname") %></td>
<td ><%=resultset.getString("Lname") %></td>
<td ><%=resultset.getString("Email") %></td>
<td ><%=resultset.getString("Password") %></td>
</tr>

<% 
}%>
</table>
</div>
<%
}catch(Exception  e){
	out.println(e);
} %>

<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
		crossorigin="anonymous"></script>
</body>
</html>
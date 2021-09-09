<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<title>Students</title>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<%
		response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");

	//response.setHeader("pragma","no-cache");     //HTTP 1.0
	// response.setHeader("Expires","0")    //proxies
	String userID = (String) session.getAttribute("userid");
	if (userID == null) {
		response.sendRedirect("admin.jsp");
	}
	%>
	<%
		Class.forName("oracle.jdbc.driver.OracleDriver");
	try {
		Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "7388");
		Statement st = conn.createStatement();
		PreparedStatement ps = conn.prepareStatement("select * from examuser");
		ResultSet resultset = ps.executeQuery();
	%>
	<div class="container mt-3">
		<table class="table table-striped table-light mt-3">
			<tr>
				<th scope="col">First Name</th>
				<th scope="col">Last Name</th>
				<th scope="col">Email</th>
				<th scope="col">Password</th>
			</tr>
			<%
				while (resultset.next()) {
			%>
			<tr>
				<td><%=resultset.getString("Fname")%></td>
				<td><%=resultset.getString("Lname")%></td>
				<td><%=resultset.getString("Email")%></td>
				<td><%=resultset.getString("Password")%></td>
			</tr>

			<%
				}
			%>
		</table>
	</div>
	<%
		} catch (Exception e) {
	out.println(e);
	}
	%>

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>
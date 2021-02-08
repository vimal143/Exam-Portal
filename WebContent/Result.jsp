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
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">
<title>Result</title>
<link href="style/index.css" rel="stylesheet">
</head>
<body>
	<%
		response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
	String userID = (String) session.getAttribute("userid");
	if (userID == null) {
		response.sendRedirect("index.jsp");
	}
	%>
	<%
		String userid = (String) request.getAttribute("stdid");
	String exam = (String) request.getAttribute("exname");
	%>

	<nav class="navbar navbar-light   border">
		<div class="container">
			<a class="navbar-brand" href="#"> <img src="assets/Axis_Logo.png"
				alt="" width="55" height="44" class="d-inline-block align-top">
				<span class="site-title text-light">Axis Exam Portal</span>
			</a>

		</div>
	</nav>

	<%
		Class.forName("oracle.jdbc.driver.OracleDriver");
	try {
		Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "7388");
		Statement st = conn.createStatement();
		PreparedStatement ps = conn
		.prepareStatement("select userid,examname,SUM(Marks) from  system.examresult where userid='" + userid
				+ "' and examname='" + exam + "'group by userid,examname");

		ResultSet resultset = ps.executeQuery();
	%>
	<%
		while (resultset.next()) {
	%>


	<div class="container mt-5">
		<div class="card text-center">
			<div
				class="card-header  bg-info text-light text-uppercase ont-weight-bold">
				Result</div>
			<div class="card-body ">
				<h5 class="card-title">Your Exam Result</h5>
				<table borde="1px solid"
					style="border-collapse: collapse; text-align: center"
					align="center" class="mt-4">
					<tr>
						<th>User ID:</th>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td><%=resultset.getString("userid")%></td>
					</tr>
					<tr>
						<th>Exam:</th>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td><%=resultset.getString("examname")%></td>
					</tr>
					<tr>
						<th>Marks:</th>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td><%=resultset.getString("SUM(Marks)")%></td>
					</tr>
				</table>

			</div>

		</div>
	</div>

	<%
		}
	%>
	<%
		} catch (Exception e) {
	out.println(e);
	}
	%>

</body>
</html>
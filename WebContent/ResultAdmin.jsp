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
<title>Result</title>

</head>
<body>
	<%
		response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
	String userID = (String) session.getAttribute("userid");
	if (userID == null) {
		response.sendRedirect("admin.jsp");
	}
	%>
	

	<%@include file="navbar.jsp"%>

	<%
		Class.forName("oracle.jdbc.driver.OracleDriver");
	try {
		Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "7388");
		Statement st = conn.createStatement();
		PreparedStatement ps = conn
		.prepareStatement("select userid,examname,SUM(Marks) from  system.examresult group by userid,examname");

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
				<table border="1px solid"
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
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>
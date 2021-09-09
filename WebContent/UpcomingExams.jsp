<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
    <%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

<title>Upcoming Exam Schedules</title>
<link href="style/index.css" rel="stylesheet">
</head>
<body>
<nav class="navbar navbar-light   border">
		<div class="container-fluid">
			<a class="navbar-brand" href="#"> <img src="assets/Axis_Logo.png"
				alt="" width="55" height="44" class="d-inline-block align-top">
				<span class="site-title text-light">Axis Exam Portal</span>
			</a>
		</div>
	</nav>
	<div>
	  <h2 style="color:white; text-align:center; margin:10px"><u> Exam Schedules</u></h2>
	</div>
	<table class="table table-dark table-hover">
	<thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Exam</th>
      <th scope="col">Date</th>
      <th scope="col">Time</th>
      <th scope="col">Duration</th>
    </tr>
  </thead>
  <%
		Class.forName("oracle.jdbc.driver.OracleDriver");
	try {
		Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "7388");
		Statement st = conn.createStatement();
		PreparedStatement ps = conn.prepareStatement("select * from system.schedule ");

		ResultSet resultset = ps.executeQuery();
	%>
	<%
		while (resultset.next()) {
	%>
	<tr>
      
      <td><%=resultset.getString("examid") %></td>
      <td><%=resultset.getString("examname") %></td>
      <td><%=resultset.getString("examdate") %></td>
      <td><%=resultset.getString("time") %></td>
      <td>90 Min</td>
    </tr>
    <%
		}
	%>
</table>
	
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
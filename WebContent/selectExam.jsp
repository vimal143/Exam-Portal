<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<title>Exam</title>
<link href="style/index.css" rel="stylesheet">
</head>
<body>
<%
		String userID = (String) session.getAttribute("userid");
	if (userID == null ) {
		response.sendRedirect("index.jsp");
	}
	%>
<nav class="navbar navbar-light   border">
		<div class="container-fluid">
			<a class="navbar-brand" href="#"> <img src="assets/Axis_Logo.png"
				alt="" width="55" height="44" class="d-inline-block align-top">
				<span class="site-title">Axis Exam Portal</span>
			</a>
		</div>
	</nav>
	<!--Form Starts Here-->
	<div class="container mt-5 bg-light w-50 border p-5 " align="center">
		<fieldset>
			<legend class="pt-3 pb-3 text-center">
				<span class="h3 text-uppercase "><u>Exam ID</u></span>
				
			</legend>
			<span class="text-info">${message }</span>
		</fieldset>
		<form action="ScheduleCheck" method="post">
			<div class="row mb-3 mt-3">
				<div class="col-sm-13">
					<input type="email" class="form-control" placeholder="ENTER EMAIL"
						name="email" value="${userid }"  disabled>
				</div>
			</div>
			
				<div class="row mb-3">

				<div class="col-sm-13">
					<input type="text" class="form-control"
						placeholder="ENTER EXAM ID" name="examid" required>
				</div>
				</div>
				<div class="row mb-3">
				<div class="col-sm-13  ">
					<input type="submit" class="bg-primary form-control lgnbtn  text-uppercase text-light"
						value="NEXT">
				</div>
				</div>
				
		</form>

		


	</div>
</body>
</html>
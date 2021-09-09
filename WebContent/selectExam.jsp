<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<title>Exam</title>
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
	<nav class="navbar navbar-light   border">
		<div class="container-fluid">
			<a class="navbar-brand" href="#"> <img src="assets/Axis_Logo.png"
				alt="" width="55" height="44" class="d-inline-block align-top">
				<span class="site-title text-light">Axis Exam Portal</span>
			</a>
		</div>
	</nav>
	<!--Form Starts Here-->
	<div class="container mt-5 bg-light w-50 border p-5 forms"
		align="center">
		<fieldset>
			<legend class="pt-3 pb-3 text-center">
				<span class="h3 text-uppercase text-light"><u>Exam ID</u></span>

			</legend>
			<span class="text-danger">${message }</span>
		</fieldset>
		<form action="ScheduleCheck" method="post">
			<div class="row mb-3 mt-3">
				<div class="col-md-12">
					<input type="email" class="form-control" placeholder="ENTER EMAIL"
						name="email" value="${userid }" disabled>
				</div>
			</div>

			<div class="row mb-3">

				<div class="col-md-12">
					<input type="text" class="form-control" placeholder="ENTER EXAM ID"
						name="examid" required>
				</div>
			</div>
			<div class="row mb-3 justify-content-center" >
				<div class="col-md-6   ">
					<input type="submit"
						class="bg-primary form-control lgnbtn  text-uppercase text-light"
						value="NEXT">
				</div>
			</div>

		</form>



<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<title>Schedule Exam</title>
<style type="text/css">
body {
	background-image: url('assets/school.jpg');
}
</style>
</head>
<body>
	<%@include file="navbar.jsp"%>

	<%
		response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
	String userID = (String) session.getAttribute("userid");
	if (userID == null) {
		response.sendRedirect("admin.jsp");
	}
	%>
	<div class="container mt-5 bg-secondary w-50 border p-5  "
		align="center">
		<fieldset>
			<legend class="pt-3 pb-3 text-center">
				<span class="h3 text-uppercase text-light">Schedule Exam</span><br>
				<span class="text-info">${message}</span>
			</legend>
		</fieldset>
		<form action="examSchedule" method="post">
			<div class="row g-3">
				<div class="col-md-6 p-2">
					<input type="text" class="form-control" placeholder="Exam ID"
						name="examID" />
				</div>
				<div class="col-md-6 p-2" >
					<select name="examName" class="form-select" style="width:auto"
						aria-label="Default select example" required>
						<option selected>Choose Exam</option>
						<option value="Java">Java</option>
						<option value="DBMS">DBMS</option>
						<option value="Computer Network">Computer Network</option>
						<option value="Numerical Methods">Numerical Methods</option>
					</select>
				</div>
				<div class="col-md-6 p-2">
					<input name="examDate" type="text" class="form-control"
						placeholder="DD-MMM-YY" />
				</div>
				<div class="col-md-6 p-2">
					<input name="examTime" type="text" class="form-control"
						placeholder="HH:MM:AM/PM" />
				</div>
				<div class="col-md-6 p-2">
					<input name="examDuration" type="text" class="form-control"
						placeholder="Duration in minutes" />
				</div>
				<div class="col-md-12 p-2  ">
					<input type="submit"
						class="bg-primary form-control lgnbtn text-light"
						value="Schedule Exam">
				</div>
			</div>
		</form>
	</div>
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>
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
<title>Schedule Exam</title>
<style type="text/css">
   body{
       background-image: url('assets/school.jpg');
        
   }
</style>
</head>
<body>
<%@include file="navbar.jsp" %>

<%
String userID=(String)session.getAttribute("userid");
if(userID==null){
	response.sendRedirect("admin.jsp");
}
%>
<div class="container mt-5 bg-secondary w-50 border p-5  " align="center">
<fieldset>
			<legend class="pt-3 pb-3 text-center">
				<span class="h3 text-uppercase text-light">Schedule Exam</span><br>
				<span class="text-info">${message}</span>
			</legend>
	</fieldset>
	<form action="examSchedule" method="post">
<div class="row g-3">
  <div class="col-md-6">
    <input type="text" class="form-control" placeholder="Exam ID" name="examID" />
  </div>
  <div class="col-md-6">
    <select name="examName" class="form-select" aria-label="Default select example" required>
  <option selected >Choose Exam</option>
  <option value="java">Java</option>
  <option value="dbms">DBMS</option>
  <option value="computerNetwork">Computer Network</option>
  <option value="numericalMethods">Numerical Methods</option>
</select>
  </div>
  <div class="col-md-6">
    <input name="examDate" type="text" class="form-control" placeholder="DD-MMM-YY" />
  </div>
  <div class="col-md-6">
    <input name="examTime" type="text" class="form-control" placeholder="HH:MM:AM/PM" />
  </div>
  <div class="col-md-6">
    <input name="examDuration" type="text" class="form-control" placeholder="Duration in minutes" />
  </div>
  <div class="col-sm-13  ">
					<input type="submit" class="bg-primary form-control lgnbtn text-light"
						value="Schedule Exam">
				</div>
</div>
</form>
</div>
</body>
</html>
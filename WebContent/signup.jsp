<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://www.google.com/recaptcha/api.js" async defer></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">
<meta charset="ISO-8859-1">
<link href="style/index.css" rel="stylesheet">
<title>Axis Online Exam Portal</title>
</head>
<body>
	<!-- Image and text -->
	<nav class="navbar navbar-light border">
		<div class="container-fluid">
			<a class="navbar-brand" href="#"> <img src="assets/Axis_Logo.png"
				alt="" width="40" height="34" class="d-inline-block align-top">
				<span class="site-title">Axis Exam Portal</span>
			</a>
		</div>
	</nav>


	<!--Form Starts Here-->
	<div class="container mt-5 bg-light w-50 border p-5 " align="center">

		<fieldset>
			<legend class="pt-3 pb-3 text-center">
				<span class="h3 text-uppercase">Sign Up</span><br> <span
					style="color: red; font-size: 14px">${message }</span>
				<div class="flex mx-auto clearboth mt-2">
					<div
						class="border bg-light position-relative top4 width100 float-left"></div>
					<div
						class="width180 float-left text-center position-relative top-10 mt-sm font14">Create
						a new account</div>
					<div
						class="border bg-light position-relative top4 width100 float-left"></div>
				</div>
			</legend>
		</fieldset>
		<form class="row g-3" action="regsiter" method="post">
			<div class="col-md-6">

				<input type="text" class="form-control" id="inputname1" name="fname"
					placeholder="FIRST NAME" required>
			</div>
			<div class="col-md-6">

				<input type="text" class="form-control" id="inputname2" name="lname"
					placeholder="LAST NAME" required>
			</div>
			<div class="col-12">

				<input type="email" class="form-control" id="inputEmail"
					name="email" placeholder="ENTER YOUR EMAIL" required>
			</div>
			<div class="col-12">

				<input type="password" class="form-control" name="password1"
					placeholder="ENTER YOUR PASSWORD" required>
			</div>
			<div class="col-12">

				<input type="password" class="form-control" name="password2"
					placeholder="RE-ENTER YOUR PASSWORD" required>
			</div>
			<div class="col-md-6">
				<div class="g-recaptcha"
					data-sitekey="6LcrgRoaAAAAAF6XyqGklV7dJOIFEvzw_ss3Q1Gd"></div>
			</div>

			<input type="submit"
				class="bg-primary form-control lgnbtn text-uppercase"
				value="Sign Up">

			<div class="mt-3">
				<p class="presignup-text">
					Already have an account ? <span class="signupNow "><a
						href="index.jsp">Sign In</a></span>
				</p>
			</div>
		</form>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
		crossorigin="anonymous"></script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="style/index.css">
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
			<legend class="pt-4 pb-3 text-center">
				<span class="h3 text-uppercase">Sign Up</span><br> <span
					style="color: red; font-size: 14px">${message }</span>
				<div class="flex mx-auto clearboth mt-2">
					<div
						class="border bg-light position-relative top4 width100 float-left"></div>
					<div
						class="width180  text-center position-relative top-10  font14 justify-content-center">Create
						a new account</div>
					<div
						class="border bg-light position-relative top4 width100 float-left"></div>
				</div>
			</legend>
		</fieldset>
		<form class="row g-3 " action="regsiter" method="post">
			<div class="col-md-6 p-2">

				<input type="text" class="form-control" id="inputname1" name="fname"
					placeholder="FIRST NAME" required>
			</div>
			<div class="col-md-6 p-2" >

				<input type="text" class="form-control" id="inputname2" name="lname"
					placeholder="LAST NAME" required>
			</div>
			<div class="col-12 p-2">

				<input type="email" class="form-control" id="inputEmail"
					name="email" placeholder="ENTER YOUR EMAIL" required>
			</div>
			<div class="col-12 p-2">

				<input type="password" class="form-control" name="password1"
					placeholder="ENTER YOUR PASSWORD" required>
			</div>
			<div class="col-12 p-2">

				<input type="password" class="form-control" name="password2"
					placeholder="RE-ENTER YOUR PASSWORD" required>
			</div>
			<div class="col-md-6 p-2">
				<div class="g-recaptcha"
					data-sitekey="6LcrgRoaAAAAAF6XyqGklV7dJOIFEvzw_ss3Q1Gd"></div>
			</div>

			<input type="submit"
				class="bg-primary form-control lgnbtn text-uppercase"
				value="Sign Up">

			<div class="mt-3 ml-6">
				<p class="presignup-text">
					Already have an account ? <span class="signupNow "><a
						href="index.jsp">Sign In</a></span>
				</p>
			</div>
		</form>
	</div>
	 <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
	
</body>
</html>
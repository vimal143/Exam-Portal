<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
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
				<span class="h3 text-uppercase text-light">Sign In</span>

			</legend>
			<span class="text-danger">${message }</span>
		</fieldset>
		<form action="login" method="post">
			<div class="row mb-3 mt-3">
				<div class="col-sm-13">
					<input type="email" class="form-control" placeholder="ENTER EMAIL"
						name="email" required>
				</div>
			</div>
			<div class="row mb-3">

				<div class="col-sm-13">
					<input type="password" class="form-control"
						placeholder="ENTER PASSWORD" name="password" required>
				</div>
			</div>
			<div class="row mb-3">
				<div class="col-sm-13  ">
					<input type="submit"
						class="bg-primary form-control lgnbtn  text-uppercase"
						value="Sign In">
				</div>
			</div>
		</form>

		<div class="flex mx-auto  mt-2">
			<div
				class="border bg-light position-relative top4 width100 float-left"></div>
			<div
				class="width120 float-left text-center position-relative top-10 mt-sm font14 ">or
				login with</div>
			<div
				class="border bg-light position-relative top4 width100 float-left"></div>
		</div>



		<button type="button" class="btn btn-info  btn-lg mt-3 ">
			<i class="fa fa-google"></i> &nbsp; <span class="gbtn lgn">Sign
				In With Google</span>
		</button>
		<div class="mt-3">
			<p class="presignup-text ">
				Don't have an account ? <span class="signupNow"><a
					href="signup.jsp">Sign Up</a></span>
			</p>
		</div>

	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
		crossorigin="anonymous"></script>
</body>
</html>
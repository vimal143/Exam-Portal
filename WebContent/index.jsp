<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
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
				<div class="col-md-12">
					<input type="email" class="form-control" placeholder="ENTER EMAIL"
						name="email" required>
				</div>
			</div>
			<div class="row mb-3">

				<div class="col-md-12">
					<input type="password" class="form-control"
						placeholder="ENTER PASSWORD" name="password" required>
				</div>
			</div>
			<div class="row mb-3">
				<div class="col-md-12  ">
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
				class="width120  text-center position-relative top-10 mt-sm font14 ">or
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
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>
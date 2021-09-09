<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Axis Exam Portal</title>
<link rel="stylesheet" type="text/css" href="style/Home.css">

<link href='https://fonts.googleapis.com/css?family=Bad+Script'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Lobster'
	rel='stylesheet' type='text/css'>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
</head>
<body>
	<header class="site-header clearfix">
		<nav>
			<div class="logo">
				<h1>Axis Exam Portal</h1>
			</div>
			<div class="menu">
				<ul>
					<li><a href="#">Home</a></li>
					<li><a href="#About">About</a></li>
					<li><a href="http://localhost:8081/ExamPortal/UpcomingExams.jsp">Exam Schedule</a></li>
					<li><a href="#team">Team</a></li>
					<li><a href="#contact">Contact</a></li>
					<li><a href="http://localhost:8081/ExamPortal/admin.jsp">Admin Login</a></li>
					
				</ul>
			</div>
		</nav>
		<section>
			<div class="leftside">
				<img src="assets/isometric.png">
			</div>
			<div class="rightside">
				<h1>Axis Exam Portal</h1>
				<p>Welcome to Axis Online Exam Portal</p>
			<a href="index.jsp" style="text-decoration: none; color: white">	<button>
					Start
						Exam
				</button></a>
			</div>

		</section>

	</header>
	<section id="About">

		<div class="leftside-about">
			<h1>
				<u>About</u>
			</h1>
			<p class="about-content">
			<h2>New innovation in online examination</h2>
			</br> Smooth registration, swift creation of tests and synchronized user-
			interface for you and your candidates.
			</p>
			<br>
			<p>
				A site for educators, <b>axisexams.in</b> allows them to create and
				administer tests in a fast and reliable way. If you're one, this new
				platform lets you create tests using an interface that is intuitive
				before anything else, and that is hosted 100 % online. You don't
				have to install anything on your own computer.
			</p>

		</div>

		<div class="rightside-about">
			<img src="assets/iso.png">


		</div>
	</section>

	<section class="team" id="team">
		<div class="container">
			<div class="row">
				<div class="team-title">
					<h1>Meet the Team</h1>
				</div>
			</div>
			<div class="row">
				<div class="team-members">
					<div class="members">
						<img src="assets/Vimal.jpg" alt="Vimal">
						<div class="inner">
							<div class="info">
								<h5>Vimal Pandey</h5>
								<p>Developer</p>
								<div class="social-media">
									<a href="https://www.facebook.com/vimal7388" target="_blank"><span class="fa fa-facebook"></span>
									</a> <a href="https://www.linkedin.com/in/vimal-pandey-450b43186" target="_blank"><span class="fa fa-linkedin"></span>
									</a> <a href="https://www.instagram.com/__vimal_pandey__" target="_blank" ><span class="fa fa-instagram"></span>
										</a> <a href="https://www.twitter.com/jrspvimal" target="_blank"><span class="fa fa-twitter"></span></a>
								</div>
							</div>
						</div>
					</div>
					<div class="members">
						<img src="assets/Mukesh.jpg" alt="Vimal">
						<div class="inner">
							<div class="info">
								<h5>Mukesh Maddheshiya</h5>
								<p>Developer</p>
								<div class="social-media">
									<a href=#><span class="fa fa-facebook"></span></a> <a href=#><span
										class="fa fa-linkedin"></span></a> <a href=#><span
										class="fa fa-instagram"></span></a> <a href=#><span
										class="fa fa-twitter"></span></a>
								</div>
							</div>
						</div>
					</div>
					<div class="members">
						<img src="assets/Zubair.png" alt="Vimal">
						<div class="inner">
							<div class="info">
								<h5>Zubair Ahmad</h5>
								<p>Developer</p>
								<div class="social-media">
									<a href=#><span class="fa fa-facebook"></span></a> <a href=#><span
										class="fa fa-linkedin"></span></a> <a href=#><span
										class="fa fa-instagram"></span></a> <a href=#><span
										class="fa fa-twitter"></span></a>
								</div>
							</div>
						</div>
					</div>
					<div class="members">
						<img src="assets/Mohit.png" alt="Vimal">
						<div class="inner">
							<div class="info">
								<h5>Mohit Tripathi</h5>
								<p>Developer</p>
								<div class="social-media">
									<a href=#><span class="fa fa-facebook"></span></a> <a href=#><span
										class="fa fa-linkedin"></span></a> <a href=#><span
										class="fa fa-instagram"></span></a> <a href=#><span
										class="fa fa-twitter"></span></a>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>

		</div>
	</section>


	<section class="contact" id="contact">

		<div  ng-app=""
			ng-init="firstName='Vimal';
         lastName='Pandey';
         place='India';
         profession='Web Developer';
         company='CampusSathi';
         message='';
         email='vimalpandey211@gmail.com'">
			<div class="row-contact">
				<div class="column-contact">
					<h1>Contact Us</h1>
					<form action=" " method="post">
						<div class="input-fields">
							<input type="text" class="inputs-c"
								placeholder="Please Enter your First Name" ng-model="firstName"
								required /><br> <input type="text" class="inputs-c"
								placeholder="Please Enter your Last Name" ng-model="lastName"
								required /><br> <input type="text" class="inputs-c"
								placeholder="Please enter your Country" ng-model="place"
								required /><br> <input type="text" class="inputs-c"
								placeholder="Please enter your Profession" ng-model="profession"
								required /><br> <input type="email" class="inputs-c"
								placeholder="Please enter your Email ID" ng-model="email"
								required /><br>
							<textarea class=" inputs-m" rows="20" id="message"
								ng-model="message"></textarea>
							<input type="submit" class="btn-send" value="Send">
							
					</form>
				</div>
			</div>
			<div class="column-contact">
				<div class="container">
					<div class="paper">
						<div class="lines">
							<div class="Lettertext" spellcheck="false">
								Hello Developers <br /> <br /> This is {{firstName}} . I am from {{place}}. <br /> <br /> I am a
								{{profession}},. <br /> <br /> {{message}} <br /> <br /> You
								can reach me back on {{email}}.<br /> Thank you
								&#9829;&#9829;&#9829; <br /> <br /> <br /> Thanks and
								Regards,
								<p>{{ firstName+" "+lastName }}
							</div>
						</div>
					</div>
				</div>
			</div>


		</div>
		</div>






	</section>
	<footer>
		<div class="footer-content">
			<h3>Axis Exam Portal</h3>
			<p>A site for educators, axisexams.in allows them to create and
				administer tests in a fast and reliable way. If you're one, this new
				platform lets you create tests using an interface that is intuitive
				before anything else, and that is hosted 100 % online. You don't
				have to install anything on your own computer.</p>
			<ul class="socials">
				<li><a href="#"><i class="fa fa-facebook"></i></a></li>
				<li><a href="#"><i class="fa fa-twitter"></i></a></li>
				
				<li><a href="#"><i class="fa fa-youtube"></i></a></li>
				<li><a href="#"><i class="fa fa-linkedin-square"></i></a></li>
			</ul>
		</div>
		<div class="footer-bottom">
			<p>
				copyright &copy;2021 | designed and Developed by <span>Vimal
					Pandey , Mukesh Maddheshiya, Zubair Ahmad, Mohit Tripathi</span>
			</p>
		</div>
	</footer>
</body>
</html>
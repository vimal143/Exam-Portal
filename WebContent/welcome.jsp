<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Instruction</title>
<style>
#calc input {
	width: 40px;
	height: 40px;
	margin: 2px;
	border-radius: 10px;
}

input {
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
	border-radius: 50%;
	width: 16px;
	height: 16px;
	border: 2px solid #999;
	transition: 0.2s all linear;
	margin-right: 5px;
	position: relative;
	top: 4px;
}

input:checked {
	border: 6px solid blue;
	outline: unset !important
		/* I added this one for Edge (chromium) support */
}
</style>
</head>
<body>
	<%
		String userID = (String) session.getAttribute("userid");
	if (userID == null) {
		response.sendRedirect("index.jsp");
	}
	%>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-5 shadow bg-primary" style="height: 70px;">
				<img src="assets/logo railway.jpg"
					style="height: 70px; width: 550px; margin-left: -25px;">
			</div>
			<div class="col-md-7 bg-primary shadow" style="height: 70px;">
			</div>

			<div class="col-md-12 bg-dark" style="height: 50px;">
			    <h6 class="text-light text-center mt-2 " style="float:right"><%= session.getAttribute("userid")%></h6>
				
				
			</div>
		</div>

	</div>

	<div class="container-fluid  mt-3 p-2">
		<p>
		<h1>${details.examID }</h1>
		<h4>A. General information:</h4>
		
		
		<br> 1. The examination will comprise of Objective type Multiple
		Choice Questions (MCQs)<br> 2. All questions are compulsory and
		each carries One mark.<br> 3. The total number of questions,
		duration of examination, will be different based on the course, the
		detail is available on your screen.<br> 4. The Subjects or topics
		covered in the exam will be as per the Syllabus.<br> 5. There
		will be NO NEGATIVE MARKING for the wrong answers.
		</p>
		<p><h4>B. Information & Instructions:</h4><br> 1. The examination does not
			require using any paper, pen, pencil and calculator.<br> 2. Every student
			will take the examination on a Laptop/Desktop/Smart Phone <br>3. On
			computer screen every student will be given objective type type
			Multiple Choice Questions (MCQs).<br> 4. Each student will get questions
			and answers in different order selected randomly from a fixed
			Question Databank.<br> 5. The students just need to click on the Right
			Choice / Correct option from the multiple choices /options given with
			each question. For Multiple Choice Questions, each question has four
			options, and the candidate has to click the appropriate option.</p>

	</div>

       <div align="center">
       <a class="btn btn-primary" href="exam.jsp" role="button">Start Exam</a>
           
       </div>
	<script>
	function getFullScreen(){
		return document.fullscreenElement
		  || document.webkitFullscreenelement
		  || document.mozFullscreenelement
		  || document.msFullscreenelement;
	}
	document.addEventListener("dblclick",()=>{
		document.documentElement.requestFullscreen().catch((e)=>{
			console.log(e);
		});
	});
</script>

</body>
</html>
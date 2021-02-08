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
<title>Questions</title>
<style type="text/css">
* {
	box-sizing: border-box;
}

.row {
	display: flex;
}

.column {
	flex: 50%;
	padding: 10px;
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

	<div class="row">
		<div class="column" style="background-color: #aaa;">
			<div class="container  bg-secondary  border p-5 ">
				<fieldset>
					<legend class="pt-1 pb-3 text-center">
						<span class="h3 text-uppercase text-light">ADD QUESTIONS</span><br>
						<%
							String msg = (String) request.getAttribute("error");
						if (msg != null) {
						%>
						<span class="text-info">${error }</span>
						<%
							}
						%>
					</legend>
				</fieldset>
				<form action="Question" method="post" id="questionSubmit">
					<div class="row g-2">

						<div class="col-md-12">
							<select name="examName" class="form-select" required>
								<option selected>Choose Exam</option>
								<option value="java">Java</option>
								<option value="dbms">DBMS</option>
								<option value="computerNetwork">Computer Network</option>
								<option value="numericalMethods">Numerical Methods</option>
							</select>
						</div>
						<div class="col-md-12">
							<input type="text" name="questionID" class="form-control"
								placeholder="QuestionID" autocomplete="off" />
						</div>
						<div class="col-md-12">
							<textarea name="question" rows="2" cols="75"
								placeholder="Write The Question Here"></textarea>
						</div>
						<div class="col-md-6">
							<input name="opt1" type="text" class="form-control"
								placeholder="Option 1" autocomplete="off" required />
						</div>
						<div class="col-md-6">
							<input name="opt2" type="text" class="form-control"
								placeholder="Option 2" autocomplete="off" />
						</div>
						<div class="col-md-6">
							<input name="opt3" type="text" class="form-control"
								placeholder="Option 3" autocomplete="off" />
						</div>
						<div class="col-md-6">
							<input name="opt4" type="text" class="form-control"
								placeholder="Option 4" autocomplete="off" />
						</div>
						<div class="col-md-6">
							<input name="answer" type="text" class="form-control"
								placeholder="Answer" autocomplete="off" />
						</div>
						<div class="col-sm-12  ">
							<input type="submit"
								class="bg-primary form-control lgnbtn text-light" value="Save">
						</div>
					</div>
				</form>
			</div>
		</div>
		<div class="column  " style="background-color: #aaa;">
			<div class=" bg-secondary container border p-5"
				style="height: 500px; width: 600px">
				<h3 class="text-center text-light text-uppercase">Recently
					added</h3>
				<p class="text-light h5 mt-4">${message.questionID}
					<span>${message.question }</span>
				<p>
				<div class="row g-3">
					<div class="col-md-6">
						<input type="text" class="form-control"
							value="${ message.option1}" disabled />
					</div>
					<div class="col-md-6">
						<input type="text" class="form-control"
							value="${ message.option2}" disabled />
					</div>
					<div class="col-md-6">
						<input type="text" class="form-control"
							value="${ message.option3}" disabled />
					</div>
					<div class="col-md-6">
						<input type="text" class="form-control"
							value="${ message.option4}" disabled />
					</div>
				</div>

			</div>
		</div>
	</div>



</body>
</html>
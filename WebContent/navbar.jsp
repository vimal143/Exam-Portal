<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	<div class="container-fluid">
		<a class="navbar-brand" href="#">Exams</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="adminHome.jsp">Admin</a></li>
				<li class="nav-item"><a class="nav-link"
					href="examSchedule.jsp">Schedule Exam</a></li>
				<li class="nav-item"><a class="nav-link" href="Questions.jsp">Add
						Questions</a></li>
				<li class="nav-item"><a class="nav-link" href="students.jsp">Students</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="ResultAdmin.jsp">Result</a>
				</li>
			</ul>
			<form action="logoutAdmin" class="d-flex" method="post">
				<input type=submit class="bg-danger form-control lgnbtn text-light"
					value="Sign Out" />
			</form>
		</div>
	</div>
</nav>
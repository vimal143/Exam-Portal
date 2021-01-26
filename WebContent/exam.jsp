<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Exam</title>
<style>
	#calc input{
		width:40px;
		height:40px;
		margin:2px;
		border-radius:10px;
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
  outline: unset !important /* I added this one for Edge (chromium) support */
}
</style>
<script>
var form = document.getElementById("myForm");
function handleForm(event) { event.preventDefault(); } 
form.addEventListener('submit', handleForm);
</script>
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
	 		  <div class="col-md-5 shadow bg-primary"style="height:70px;">
	 		  		<img src="assets/logo railway.jpg"style="height:70px;width:550px;margin-left:-25px;">
	 		  </div>
	 		  <div class="col-md-7 bg-primary shadow"style="height:70px;">
	 		  
	 		  </div>

	 		  

	 		  <div class="col-md-9 bg-light" style="height:500px;">

	 		  		 

	 		  		 

	 		  		 <div class="row">
	 		  		 		<div class="col-md-12" style="height:40px;border:2px solid;">
	 	            
	 		  		 			<button class="bg-primary text-light"style="border-radius:6px;margin-top:3px;"><b>${questions.examname }</b></button>
	 		  		 		</div>
	 		  		 </div>

	 		  		 <div class="row">
	 		  		 
	 		  		 		<div class="col-md-12 bg-light" style="height:40px;">
	 		  		 			<h6 class="text-danger" style="margin-top:7px;"><b>Question-type:MCQ</b></h6>
	 		  		 		</div>
	 		  		 </div>

	 		  		 

	 		  		
                 <form action="FetchQuestions" method="post" id="myForm">
	 		  		 <div style="margin-top:10px;margin-left:-10px;">
	 		  		 
	 		  		 	<input type="hidden" name="examname" value="${questions.examname }"/>
	 		  		 	
							 <p>${questions.questID }<span>.</span> ${questions.question } <span class="text-danger"><sup style="font-size:15px">*</sup></span></p>
							 <input type="hidden" name="nextid" value="${questions.questID }" required/>
							 <input type="radio" name="radio"value="${questions.option1 }" required>${questions.option1 }<br>
							 <input type="radio" name="radio"value="${questions.option2 }" required>${questions.option2 }<br>
							<input type="radio" name="radio"value="${questions.option3 }" required>${questions.option3 }<br>
							<input type="radio" name="radio"value="${questions.option4 }" required>${questions.option4 }   
							<input type="hidden" name="answer" value="${questions.answer }"/>
						<input type="hidden" name="user" value="<%= session.getAttribute("userid")%>"/>
	 		  		  
	 		  		</div>
                       
                       <div style="margin-top:100px; margin-left:400px">
                       
                       
	 		  			<input type="submit" name="next" value="Save & next" style="width:100px;height:50px" class="bg-primary text-light" ${sdisabled}>
	 		  			</div>
	 		  			
					    		 </form>
	 		  		
           
           
           
	 		   	</div>




	 		  <div class="col-md-3" style="height:450px;">
	 		  	<div>
	 		  		<img src="assets/image icon.jpg" width="80"height="90" style="margin-top:5px;margin-left:90px" placeholder="Your photograph"> <br>
	 		  		<span style="margin-left:70px;"><%= session.getAttribute("userid")%></span>

	 		  		
	 		  	</div>

	 		  </div> 
	 		   
	 	</div>
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
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

	 		  <div class="col-md-12 bg-dark" style="height:50px;">
	 		  	<div style="margin-left:1180px;">
	 		  		<img src="assets/question paper.jpg" width="30"height="30"style="margin-top:5px;border-radius:15px;margin-left:50px;"><font style="color:white;font-size:10px;margin-left:5px;"><b>Question Paper</b></font>

	 		  			<img src="assets/instruction.jpg" width="30"height="30"style="margin-top:5px;border-radius:15px;margin-left:50px;"><font style="color:white;font-size:10px;margin-left:5px;"><b>Instruction</b></font>
	 		  	</div>

	 		  	 
	 		  </div>  

	 		  <div class="col-md-9 bg-light" style="height:500px;">

	 		  		 

	 		  		 

	 		  		 <div class="row">
	 		  		 		<div class="col-md-12" style="height:40px;border:2px solid;">
	 		  		 			<button class="bg-primary text-light"style="border-radius:6px;margin-top:3px;"><b>RRB-NTPC(Graduate)</b></button>
	 		  		 		</div>
	 		  		 </div>

	 		  		 <div class="row">
	 		  		 		<div class="col-md-12 bg-light" style="height:40px;">
	 		  		 			<h6 class="text-danger" style="margin-top:7px;"><b>Question-type:MCQ</b></h6>
	 		  		 		</div>
	 		  		 </div>

	 		  		 

	 		  		 <div class="row">
	 		  		 		<div class="col-md-12" style="height:30px;border:1px solid;">
	 		  		 			<h6 style="margin-top:4px;margin-left:-13px;">Question No.1</h6>
	 		  		 		</div>
	 		  		 </div>

	 		  		 <div style="margin-top:10px;margin-left:-10px;">
	 		  		 <p>Q. what is the full form of BCA?</p>
	 		  		 	<form>
							 
							 <input type="radio" name="radio"value="ab">Bachelor of Computer Applications<br>
							 <input type="radio" name="radio"value="ac">Bachelor of Commerce<br>
							<input type="radio" name="radio"value="ad">Bachelor of Charted Accountant<br>
							<input type="radio" name="radio"value="ae">None of these   
						</form>
	 		  		  
	 		  		</div>


	 		  		 <div class="row  border p-2" style="margin-top:210px">
	 		  			
						   <div class="col-sm-4">
	 		  				<button class="btn shadow-lg bg-light"style="border-radius:7px;margin-top:5px;">Mark for Review & Next</button>
                                     </div>
							<div class="col-sm-4">		 
	 		  				<button class="btn shadow-lg bg-light"style="border-radius:7px;margin-top:5px;">Clear Response</button>
                          </div>
						  <div class="col-sm-2">
	 		  				<button class="btn bg-primary" style="border-radius:7px; ">Save&Next</button></div>
							 </div>
					    		 
	 		  		

	 		   	</div>




	 		  <div class="col-md-3" style="height:450px;">
	 		  	<div>
	 		  		<img src="assets/image icon.jpg" width="80"height="90" style="margin-top:5px;" placeholder="Your photograph"> <%= session.getAttribute("userid")%>

	 		  		<div style="width:100%;height:500px;border:3px solid black;margin-top:10px;">
	 		  		<table class="table">

	 		  			<div class="all-btn">

	 		  			<input type="button" value="0"style="width:30px;height:30px;list-style:none;padding:0;margin:0;margin-left:5px;padding:top-5px;padding-bottom:5px; border-radius:25px 25px 0px 0px;font-size:10px;text-align:center;"class="bg-success text-light text-center mr-2"><font size="2">Answered</font>

	 		  			<input type="button" value="1"style="width:30px;height:30px;list-style:none;padding:0;margin:0;padding:top-5px;padding-bottom:5px;font-size:10px; border-radius:0px 0px 25px 25px;margin-left:5px;"class="mr-2 bg-danger text-light"><font size="2">Not Answered</font><br>

	 		  			<input type="button" value="99"style="width:30px;height:30px;list-style:none;padding:0;margin:0;padding:top-5px;border-radius:10px;margin-left:5px;padding-bottom:5px; border-radius:0px 0px 0px 0px;font-size:10px;margin-top:5px;"class="mr-2 bg-light text-center text-dark"><font size="2">Not Visited</font>

	 		  			<input type="button" value="0"style="width:30px;height:30px;list-style:none;padding:0;margin:0;padding:top-8px;padding-bottom:5px; border-radius:0px 0px 0px 0px 0px;background-color:purple;font-size:10px;"class="mr-2 text-light text-center"><font size="2">Marked for Review</font><br>

	 		  			<input type="button" value="0"style="width:30px;height:30px;list-style:none;padding:0;margin:0;padding:top-5px;padding-bottom:5px;margin-left:5px; border-radius:0px 0px 0px 0px;margin-top:8px;background-color:purple;font-size:10px;"class="mr-4 text-light text-center"><font size="2">Answered & Marked for Review(Will be considered for evaluation)</font>

	 		  				 <div class="bg-primary text-light text-center" style="width:100%;"><b>RRB-NTP(Graduate)</b></div>

	 		  			<b>Choose a question</b>
	 		  			<div style="margin-top:00px;background-color:#c8cfa3"id="calc" class="p-4 ">

	 		  			<input type="button" value="1" style="list-style:none;padding:0;margin:0;padding:top-5px;padding-bottom:5px; border-radius:0px 0px 25px 25px;"class="bg-danger text-light ">
	 		  			<input type="button" value="2">
	 		  			<input type="button" value="3">
	 		  			<input type="button" value="4">
	 		  			<input type="button" value="5"><br>
	 		  			<input type="button" value="6">
	 		  			<input type="button" value="7">
	 		  			<input type="button" value="8">
	 		  			<input type="button" value="9">
	 		  			<input type="button" value="10"><br>
	 		  			<input type="button" value="11">
	 		  			<input type="button" value="12">
	 		  			<input type="button" value="13">
	 		  			<input type="button" value="14">
	 		  			<input type="button" value="15"><br>
	 		  			<input type="button" value="16">
	 		  			<input type="button" value="17">
	 		  			<input type="button" value="18">
	 		  			<input type="button" value="19">
	 		  			<input type="button" value="20"><br>
	 		  			<input type="button" value="21">
	 		  			<input type="button" value="22">
	 		  			<input type="button" value="23">
	 		  			<input type="button" value="24">
	 		  			<input type="button" value="25"><br>
	 		  			<input type="button" value="26">
	 		  			<input type="button" value="27">
	 		  			<input type="button" value="28">
	 		  			<input type="button" value="29">
	 		  			<input type="button" value="30">
	 		  			
	 		  		</div>
	 		  	</div>
	 		  		<button class="btn bg-primary" style="margin-top:30px;margin-left:120px;border-radius:7px;">Submit</button>


	 		  		</table>
	 		  	</div>
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
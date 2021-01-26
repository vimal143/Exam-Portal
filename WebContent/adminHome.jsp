<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="java.sql.*"%>
 <%@ page import="java.util.*" %>
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
<title>Admin</title>
<style type="text/css">
   body{
       background-image: url('assets/school.jpg');
   }
</style>
</head>
<body>

<%@include file="navbar.jsp" %>
<%
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
String userID=(String)session.getAttribute("userid");
if(userID==null){
	response.sendRedirect("admin.jsp");
}
%>
<% 

Class.forName("oracle.jdbc.driver.OracleDriver");
try{
Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","7388");
Statement st=conn.createStatement();
PreparedStatement ps=conn.prepareStatement("select * from admin where userid=?");
ps.setString(1, userID);
ResultSet  resultset= ps.executeQuery();
%>
<% 
while(resultset.next()){
%>	
<div class="container mt-5">
<div class="card text-center">
  <div class="card-header  bg-info text-light text-uppercase ont-weight-bold">
    Admin
  </div>
  <div class="card-body ">
    <h5 class="card-title">Welcome Admin</h5>
    <table borde="1px solid" style="border-collapse:collapse; text-align:center" align="center" class="mt-4">
    <tr>
    <th>Admin Name:</th>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td><%=resultset.getString("Name") %></td>
    </tr>
    <tr>
    <th>Branch:</th>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td><%=resultset.getString("branch") %></td>
    </tr>
    <tr>
    <th>User-id:</th>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td><%=resultset.getString("userid") %></td>
    </tr>
    </table>
  
  </div>

</div>
</div>
<% 
}%>
<%
}catch(Exception  e){
	out.println(e);
} %>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
		crossorigin="anonymous"></script>
</body>
</html>
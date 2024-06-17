<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<title>Insert title here</title>
</head>
<body>

<%-- Catch variables --%>
	<% 
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String phone = request.getParameter("phone");
	String email = request.getParameter("email");
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	%>

<div class= "row" style="padding-top:10vh">
<div class="col-md-4 col-lg-4 col-sm-1"></div>
<div class="col-md-4 col-lg-4 col-sm-10">

	<form action="delete" method="post">
	<center><div id="emailHelp" class="form-label" style="padding-bottom:20px">DELETE ACCOUNT</div></center>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">User ID</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="uid" value="<%= id%>" readonly>
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Name</label>
    <input type="text" class="form-control" id="exampleInputPassword1" name="name" value="<%= name%>" readonly>
  </div>
    <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Phone</label>
    <input type="text" class="form-control" id="exampleInputPassword1" name="phone" value="<%= phone%>" readonly>
  </div>
    <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Email</label>
    <input type="text" class="form-control" id="exampleInputPassword1" name="mail" value="<%= email%>" readonly>
  </div>
    <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Username</label>
    <input type="text" class="form-control" id="exampleInputPassword1" name="uname" value="<%= username%>" readonly>
  
  <div style="padding-top:10px">
  <button type="submit" class="btn btn-primary">Delete My Account</button></div>
  	
</form>
</div>
<div class="col-md-4 col-lg-4"></div>
</div>

</body>
</html>
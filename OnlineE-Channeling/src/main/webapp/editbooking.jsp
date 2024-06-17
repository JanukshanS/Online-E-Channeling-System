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
        <link rel ="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" type="text/css" href="css/home.css">
 <title>E-Channeling</title>
</head>
<body>

	<%-- Catch variables --%>
	<% 
	String bid = request.getParameter("bid");
	String pname = request.getParameter("pname");
	String dname = request.getParameter("dname");
	String date = request.getParameter("date");
	String sesion = request.getParameter("session");
	String amount = request.getParameter("amount");
	String userId = (String) session.getAttribute("userId");
	%>
	
<div class= "row" style="padding-top:10vh">
<div class="col-md-4 col-lg-4 col-sm-1"></div>
<div class="col-md-4 col-lg-4 col-sm-10">

	<form action="editbooking" method="post">
	<center><div id="emailHelp" class="form-label" style="padding-bottom:20px">UPDATE BOOKING</div></center>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Patient Name</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="pname" value="<%= pname%>" >
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Doctor Name</label>
    <input type="text" class="form-control" id="exampleInputPassword1" name="dname" value="<%= dname%>">
  </div>
    <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Date</label>
    <input type="date" class="form-control" id="exampleInputPassword1" name="date" value="<%= date%>">
  </div>
    <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Session</label>
    <input type="text" class="form-control" id="exampleInputPassword1" name="session" value="<%= sesion%>">
  </div>
    <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Amount</label>
    <input type="text" class="form-control" id="exampleInputPassword1" name="amount" value="<%= amount%>">
  </div>
  <input type="hidden" value="<%= userId %>" name="userId">
  <input type="hidden" value="<%= bid %>" name="bid">  
  <button type="submit" class="btn btn-primary">Submit</button>
  	
</form>
</div>
<div class="col-md-4 col-lg-4"></div>
</div>

</body>
</html>
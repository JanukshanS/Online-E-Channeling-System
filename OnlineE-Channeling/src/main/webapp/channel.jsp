<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Doctor Details</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .header {
           	background-color: #007bff; /* Bootstrap primary color */
            color: #fff;
            padding: 10px;
            display: flex;
            justify-content: space-between;
           	 align-items: center;
       	 }
       	 
	     footer {
			position: fixed;
			bottom: 0;
			left: 0;
			width: 100%;
			background-color:#0455AB;
			color: #fff;
			padding: 20px 0;
			text-align: center;
				}
				
		.card-img-top{
			width:100px;
			height:120px;
			
		}
    </style>
</head>
<body>
    <div class="header">
        <h2>Channel a Doctor</h2>
        <a href="userportal.jsp" class="btn btn-danger">Back to User Portal</a>
    </div>
    <div class="container">
        <h3 class="mt-4">Available Sessions</h3>
        <div class="row mt-4">
            <c:forEach var="doc" items="${docdetails}">
				<div class="card" style="width:20%;margin-right:2%;">
				<center>
				  <img src="images/doc.jpg" class="card-img-top" alt="doctorAvatar">
				</center>
				  	<div class="card-body">
				          <h5 class="card-title">${doc.dname}</h5>
				          <p class="card-text">Hospital: ${doc.hospital}</p>
				          <p class="card-text">Specialization: ${doc.specialization}</p>
				          <p class="card-text">Session: ${doc.session}</p>
				          <p class="card-text">Amount: ${doc.amount}</p>
				          <c:url value="bookingform.jsp" var="bookingform">
				              <c:param name="did" value="${doc.did}" />
				              <c:param name="dname" value="${doc.dname}" />
				              <c:param name="hname" value="${doc.hospital}" />
				              <c:param name="spec" value="${doc.specialization}" />
				              <c:param name="session" value="${doc.session}" />
				             <c:param name="amount" value="${doc.amount}" />
				          </c:url>
				   <center>   <a href="${bookingform}" class="btn btn-primary">Channel</a></center>
				   </div>
				</div>
            </c:forEach>
        </div>
    </div>
 	  			<footer>
        			<div class="container">
           				<br>
           				<br>
        			</div>
   				 </footer>
   				  		 				 
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

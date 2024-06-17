<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Booking List</title>
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<Style>
	.header {
           	background-color: #007bff; /* Bootstrap primary color */
            color: #fff;
            padding: 10px;
            display: flex;
            justify-content: space-between;
           	 align-items: center;
       	 }
</Style>
</head>
<body>
	
	<div class="header">
        <h2>Booking List</h2>
    </div>

<div class="container mt-4">
    <table class="table table-bordered">
    <thead>
        <tr>
        	<th>Booking Id</th>
            <th>Patient Name</th>
            <th>Doctor</th>
            <th>Date</th>
            <th>Session</th>
            <th>Amount</th>
            <th>Action</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="book" items="${listBooking}">
            <tr>
            	<td>${book.bid}</td>
                <td>${book.pname}</td>
                <td>${book.dname}</td>
                <td>${book.date}</td>
                <td>${book.session}</td>
                <td>${book.amount}</td>
                <td colspan="2">
                    
              <div class="d-flex justify-content-between">
      
      <c:url value="editbooking.jsp" var="editbooking">
    <c:param name="bid" value="${book.bid}"/>
    <c:param name="pname" value="${book.pname}"/>
    <c:param name="dname" value="${book.dname}"/>
    <c:param name="date" value="${book.date}"/>
    <c:param name="session" value="${book.session}"/>
    <c:param name="amount" value="${book.amount}"/>
	</c:url>

	
	  <div style="padding-top:10px"><a href="${editbooking}">
	  <button type="submit" class="btn btn-primary" value="edit">Edit</button></a></div>
                            
      <div style="padding-top:10px">
	  <form  action="deletebookingservlet" method="post">
	  <button type="submit" class="btn btn-danger" value="makeapp">Delete</button>
	  <input type="hidden" value="${book.bid}"name="bid">
	  </form></div>
                    </div>
                </td>
            	</tr>
        		</c:forEach>
   				 </tbody>
				</table>

    <div style="padding-top:10px">
        <a href="userportal.jsp" class="btn btn-primary">Back</a>
    </div>
</div>
<!-- Bootstrap JS (Optional) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>

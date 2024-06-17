<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
        
<title>E-Channeling</title>

<style>
    .form-container {
        background-color: #f0f0f0; /* Darker white background */
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.1); /* Drop shadow */
    }
    .inner-container {
        background-color: #ffffff; /* Brighter white background */
        padding: 20px;
        border-radius: 10px;
    }
    
    .header {
         background-color: #007bff; /* Bootstrap primary color */
         color: #fff;
         padding: 10px;
         display: flex;
         justify-content: space-between;
         align-items: center;
     }
</style>

<script>
    function validateForm() {
        var name = document.forms["bookingForm"]["pname"].value;
        var age = document.forms["bookingForm"]["age"].value;

        // Name validation
        var namePattern = /^[A-Z][a-zA-Z\s]*$/;
        if (!namePattern.test(name)) {
            alert("Name must begin with a capital letter and contain only letters and spaces.");
            return false;
        }

        // Age validation
        if (isNaN(age) || age <= 0 || age.indexOf(".") != -1) {
            alert("Age must be a positive integer.");
            return false;
        }

        return true;
    }
</script>

</head>
<body>

<%-- Catch variables --%>
<% 
    String did = request.getParameter("did");
    String dname = request.getParameter("dname");
    String hname = request.getParameter("hname");
    String spec = request.getParameter("spec");
    String sesion = request.getParameter("session");
    String amount = request.getParameter("amount");
    String userId = (String) session.getAttribute("userId");
%>
    <div class="header">
        <h2>Channel a Doctor</h2>
        <a href="userportal.jsp" class="btn btn-danger">Back to User Portal</a>
    </div>

<div class="row" style="padding-top:10vh">
    
    <div class="col-md-6 offset-md-3 ">
        <div class="form-container">
            <form action="insertbooking" method="post" name="bookingForm" onsubmit="return validateForm()">
                <center><div id="emailHelp" class="form-label" style="padding-bottom:20px">BOOK AN APPOINTMENT</div></center>
                <div class="inner-container">
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Patient Name</label>
                        <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="pname" required>
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputPassword1" class="form-label">Age</label>
                        <input type="text" class="form-control" id="exampleInputPassword1" name="age" required>
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputPassword1" class="form-label">Date of Appointment</label>
                        <input type="date" class="form-control" id="exampleInputPassword1" name="date" required>
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputPassword1" class="form-label">Doctor Name</label>
                        <input type="text" class="form-control" id="exampleInputPassword1" name="dname" value="<%= dname%>" readonly>
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputPassword1" class="form-label">Hospital</label>
                        <input type="text" class="form-control" id="exampleInputPassword1" name="hname" value="<%= hname%>" readonly>
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputPassword1" class="form-label">Session Time</label>
                        <input type="text" class="form-control" id="exampleInputPassword1" name="session" value="<%= sesion%>" readonly>
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputPassword1" class="form-label">Amount</label>
                        <input type="text" class="form-control" id="exampleInputPassword1" name="amount" value="<%= amount%>" readonly>
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputPassword1" class="form-label">Card Number</label>
                        <input type="text" class="form-control" id="exampleInputPassword1" name="cnumber" required>
                    </div>
                    <input type="hidden" value="<%= userId %>" name="userId">
                    <button type="submit" class="btn btn-primary">Book</button>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>

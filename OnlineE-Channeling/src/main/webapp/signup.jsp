<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</head>
<body>
<div class= "row" style="padding-top:5vh">
<div class="col-md-4 col-lg-4 col-sm-1"></div>
<div class="col-md-4 col-lg-4 col-sm-10">

	<form action="insert" method="post" name="bookingForm" onsubmit="return checkPassword() && validatePhoneNumber()">
	<center><div id="emailHelp" class="form-label" style="padding-bottom:20px">SIGN UP</div></center>
  <div class="mb-3">
    <label for="exampleInputName" class="form-label">Name</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="name" required>
  </div>
    <div class="mb-3">
    <label for="exampleInputAge" class="form-label">Phone</label>
    <input type="text" class="form-control" id="phoneNum" name="phone" required>
  </div>
  <div class="mb-3">
    <label for="exampleInputAge" class="form-label">Email</label>
    <input type="email" class="form-control" id="exampleInputPassword1" name="mail" required>
  </div>
    <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Username</label>
    <input type="text" class="form-control" id="exampleInputPassword1" name="uname" required>
  </div>
    <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Password</label>
    <input type="password" class="form-control" id="pwd" name="pwd" required>
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Re-EnterPassword</label>
    <input type="password" class="form-control" id="rpwd" required>
  </div>
  <div class="mb-3 form-check">
    <input type="checkbox" class="form-check-input" id="cbox">
    <label class="form-check-label" for="exampleCheck1">I agree these <a href="#">Terms & Conditions</a></label>
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
  
  <div id="emailHelp" class="form-text" style="padding-top:20px">Already a Member? <a href="login.jsp">Login Here</a></div>
	</form>
	</div>
<div class="col-md-4 col-lg-4"></div>
</div>

  <script>
  	//Functions to validate password 
        function checkPassword() {
            var password = document.forms["bookingForm"]["pwd"].value;
            var confirmPassword = document.forms["bookingForm"]["rpwd"].value;
            var checkbox = document.forms["bookingForm"]["cbox"];

           
    //Check whether the passwords match
            if (password !== confirmPassword) {
                alert("Passwords do not match.");
                return false;
            }

            if (!checkbox.checked) {
                alert("Please agree to the Terms & Conditions.");
                return false;
            }

            return true;
        }
  	
        function validatePhoneNumber() {
            // Regular expression to match exactly 10 digits
            var phoneNumber = document.forms["bookingForm"]["phoneNum"].value;
            var phoneRegex = /^\d{10}$/;
            var res = phoneRegex.test(phoneNumber);
            if (!res) {
                alert("Phone Number must be a 10 digit value");
                return false;
            }
            return true;
        }
  	
   

    </script>
</body>
</html>
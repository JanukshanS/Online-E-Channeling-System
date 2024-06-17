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

    <style>
        .header {
            background-color: #007bff; /* Bootstrap primary color */
            color: #fff;
            padding: 10px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

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
    </style>

    <title>Login</title>
</head>
<body>

<div class="header">
    <h2>Welcome to Online E-Channeling</h2>
</div>

<div class="row" style="padding-top:20vh">
    <div class="col-md-4 col-lg-4 col-sm-1"></div>
    <div class="col-md-4 col-lg-4 col-sm-10">
        <div><p style="color:green">${result}</p></div>
        <form action="log" method="post" class="form-container">
            <center><div id="emailHelp" class="form-label" style="padding-bottom:20px">LOG IN</div></center>
            <div class="mb-3">
                <label for="exampleInputEmail1" class="form-label">User Name</label>
                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="uname">

            </div>
            <div class="mb-3">
                <label for="exampleInputPassword1" class="form-label">Password</label>
                <input type="password" class="form-control" id="exampleInputPassword1" name="pw">
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
            <div id="emailHelp" class="form-text" style="padding-top:20px">Not a Member? <a href="signup.jsp">Signup Here</a></label></div>
        </form>
    </div>
    <div class="col-md-4 col-lg-4"></div>
</div>

</body>
</html>

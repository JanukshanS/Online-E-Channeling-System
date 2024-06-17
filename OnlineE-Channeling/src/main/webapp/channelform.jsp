<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <title>Insert title here</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            overflow-x: hidden;
        }

        .form-box {
            background-color: #f8f9fa; /* Lighter background color */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Drop shadow */
        }

        .form-box-inner {
            background-color: #fff; /* Bright white inner box */
            padding: 20px;
            border-radius: 8px;
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
</head>
<body>
    <div class="header">
        <h2>Channel a Doctor</h2>
        <a href="userportal.jsp" class="btn btn-danger">Back to User Portal</a>
    </div>

<div class="row" style="padding-top:10vh">
    <div class="col-md-4 col-lg-4 col-sm-1"></div>
    <div class="col-md-4 col-lg-4 col-sm-10">
        <div class="form-box">
            <div class="form-box-inner">
                <form id="channelForm" action="channel" method="post">
                    <center><div id="emailHelp" class="form-label" style="padding-bottom:20px">Search Your Doctor</div></center>
                    <div class="mb-3">
                        <label for="dname" class="form-label">Doctor</label>
                        <select class="form-select" id="dname" name="dname">
                            <option value="default" selected disabled hidden>Select Doctor</option>
                            <option value="Dr.Sithmi Nehara">Dr.Sithmi Nehara</option>
                            <option value="Dr.Ananth Kumar">Dr.Ananth Kumar</option>
                            <option value="Prof.Keerthi Bandara">Prof.Keerthi Bandara</option>
                            <option value="Dr.Dunith Perera">Dr.Dunith Perera</option>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="hname" class="form-label">Hospital</label>
                        <select class="form-select" id="hname" name="hname">
                            <option value="default" selected disabled hidden>Select Hospital</option>
                            <option value="Apollo Hospital">Apollo Hospital</option>
                            <option value="Asiri Hospital">Asiri Hospital</option>
                            <option value="Central Hospital">Central Hospital</option>
                            <option value="Durdans Hospital">Durdans Hospital</option>
                        </select>
                    </div>
                    <button type="button" onclick="validateForm()" class="btn btn-primary">Search</button>
                </form>
            </div>
        </div>
    </div>
    <div class="col-md-4 col-lg-4"></div>
</div>

<script>
    function validateForm() {
        var doctor = document.getElementById("dname").value;
        var hospital = document.getElementById("hname").value;
        
        if (doctor == "default" || hospital == "default") {
            alert("Please select a valid option for Doctor and Hospital.");
            return false;
        }
        
        document.getElementById("channelForm").submit();
    }
</script>
 	  <footer>
        			<div class="container">
           				<br>
           				<br>
        			</div>
   				 </footer>
</body>
</html>

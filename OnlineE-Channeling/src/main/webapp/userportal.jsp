<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="ISO-8859-1">
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
                
               
            <title>User Profile</title>
            <style>
                body {
                    font-family: Arial, sans-serif;
                    background-color: #f4f4f4;
                     overflow-x: hidden;
                     
                }

                .root-table-center {
                    margin: 0 auto;
                    width: 50%;
                    padding: 10px;
                    background-color: #fff;
                    border-radius: 10px;
                    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                    margin-top: 40px;
                }

                table {
                    width: 100%;
                    border-collapse: collapse;
                }

                table td {
                    padding: 10px;
                    border-bottom: 1px solid #f2f2f2;
                }

                table td:first-child {
                    width: 30%;
                    font-weight: bold;
                }

                table td:last-child {
                    text-align: right;
                }
              
                .buttons-div {
                    display: flex;
                    justify-content: space-between;
                }
                
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
			
			.container {
			    width: 80%;
			    margin: 0 auto;
			}
       			 
       			 
		</style>

	</head>
	<body>
   
    <!-- Header -->
    <div class="header">
        <h2>User Portal</h2>
       
        <form action="logoutservlet" method="post">
			<button type="submit" class="btn btn-danger" value="makeapp">Logout</button>
            <input type="hidden" name="userId">
		</form>
   	 </div>

            <%-- JavaScript alert if result is "false" --%>
                <c:if test="${param.result == 'false'}">
                    <script type="text/javascript">
                        alert('Unsuccessful');
                    </script>
                </c:if>

                <c:if test="${param.result == 'accepted'}">
                    <script type="text/javascript">
                        alert('Successfully Added!');
                    </script>
                </c:if>
                                           
                
                <div class="root-table-center">
                    <table>
                        <c:forEach var="user" items="${sessionScope.userdetails}">

                            <c:set var="id" value="${user.id}" />
                            <c:set var="name" value="${user.name}" />
                            <c:set var="email" value="${user.email}" />
                            <c:set var="phone" value="${user.phone}" />
                            <c:set var="username" value="${user.username}" />
                            <c:set var="password" value="${user.password}" />

                            <tr>
                                <td>User ID</td>
                                <td>${user.id}</td>
                            </tr>
                            <tr>
                                <td>Name</td>
                                <td>${user.name}</td>
                            </tr>
                            <tr>
                                <td>Email</td>
                                <td>${user.email}</td>
                            </tr>
                            <tr>
                                <td>Phone</td>
                                <td>${user.phone}</td>
                            </tr>
                            <tr>
                                <td>User Name</td>
                                <td>${user.username}</td>
                            </tr>

                        </c:forEach>
                    </table>
					 
                    <%-- Copy data into variables --%>
                    <c:url value="updateuser.jsp" var="updateuser">
                        <c:param name="id" value="${id}" />
                        <c:param name="name" value="${name}" />
                        <c:param name="phone" value="${phone}" />
                        <c:param name="email" value="${email}" />
                        <c:param name="username" value="${username}" />
                        <c:param name="password" value="${password}" />
                    </c:url>

                    <c:url value="deleteuser.jsp" var="deleteuser">
                        <c:param name="id" value="${id}" />
                        <c:param name="name" value="${name}" />
                        <c:param name="phone" value="${phone}" />
                        <c:param name="email" value="${email}" />
                        <c:param name="username" value="${username}" />
                        <c:param name="password" value="${password}" />
                    </c:url>
                    
                    <div class="buttons-div">
                        <div style="padding-top:10px"><a href="${updateuser}">
                                <button type="submit" class="btn btn-primary" value="update">Update User
                                    Details</button></a></div>

                        <div style="padding-top:10px"><a href="${deleteuser}">
                                <button type="submit" class="btn btn-primary" value="delete">Delete User</button></a>
                        </div>
                    </div>
                </div>
                <br>
                <br>
                <div class="row">
                <div class="col-md-4 offset-md-4">
                	<div class="row">
	                <div class="col-6">
	                	<a href="channelform.jsp">
	                    <button type="submit" class="btn btn-danger" value="makeapp">Channel a Doctor</button></a>
	                 </div>
	        		<div class="col-6">
	         			<form action="viewbooking" method="post">
	                        <button type="submit" class="btn btn-danger" value="makeapp">View Booking History</button>
	                        <input type="hidden" name="userId">
	                    </form>
	                    </div>
                   </div>
                   </div>
              	</div>
              	
              	
              	
              	  <footer>
        			<div class="container">
           				<br>
           				<br>
        			</div>
   				 </footer>
              	
        </body>

        </html>
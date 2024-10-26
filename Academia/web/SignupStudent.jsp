<%-- 
    Document   : SignupStudent
    Created on : Aug 13, 2023, 10:46:11 AM
    Author     : Thamasha Devindi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <link rel="icon" type="image/x-icon" href="images/logo.png">
    <link href="css/sign.css" rel="stylesheet" type="text/css"/>
    <style>
        .text-success {
            color: green;
        }
        .text-danger {
            color: red;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <div class="image">
            <img class="logo" src="images/book.png">
        </div>
        <div class="form-wrapper">
            <form action="RegStudent.jsp" method="POST">
                <h2>Hi student !</h2>
                <h3>Register Now</h3>
                
                 <%-- Message display based on the 'status' parameter --%>
            <% String message = "";
               if (request.getParameter("status") != null) {
                   int status = Integer.parseInt(request.getParameter("status"));
                   if(status == 1) {
                       message = "<h5 class='text-success'>You have successfully registered with Student Information System.</h5>";
                   } else {
                       message = "<h5 class='text-danger'>An error occurred. Please try again.</h5>";
                   }
               }
            %>
            <%= message %>
            
                <input type="text" name="firstname" required placeholder="Enter your firstname">
                <input type="text" name="lastname" required placeholder="Enter your lastname">
                <input type="email" name="username" required placeholder="Enter your email">
                <input type="password" name="password" required placeholder="Enter your password">
                <input type="date" name="dob" required placeholder="enter your dob">
                <input type="tel" name="contact_no" required placeholder="enter your contact no">
                <input type="text" name="address" required placeholder="enter your address">
                 <input type="text" name="special_talents" required placeholder="enter your special talents">
                 <input type="text" name="Gender" required placeholder="enter your gender">
                <input type="submit" name="submit" value="Sign Up" class="form-btn">
                <p>Already have an account? <a href="StudentLogin.jsp">Sign in</a></p>
            </form>
           
        </div>
    </div>
</body>
</html>

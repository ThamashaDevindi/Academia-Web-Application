<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login for admin</title>
    <link rel="icon" type="image/x-icon" href="images/logo.png">
    <link href="css/adminlog.css" rel="stylesheet" type="text/css"/>
    
    
    </head>
    
    <body>
        <div class="form-container">
        <div class="image">
            <img class="logo" src="images/book.png">
        </div>
        <div class="form-wrapper">
            
            <form action="LoginProcessA.jsp" method="POST">
                <h3>Login for admin</h3>
                
                  
                <%-- Message display based on the 'status' parameter --%>
            <% 
                String message = "";
                if (request.getParameter("status") != null) {
                    int status = Integer.parseInt(request.getParameter("status"));
                    if(status == 0) {
                        message = "<h5 class='text-danger'>Your username and password are incorrect.</h5>";
                    }
                }
            %>
            <%= message %>
                
                <input type="text" name="username" required placeholder="Enter your username">
                <input type="password" name="password" required placeholder="Enter your password">
                <div class="forgot_password"><a href="#">Forgot password ?</a></div>

                <input type="submit" name="submit" value="Login Now" class="form-btn">
                
            </form>
             </div>
    </div>
    </body>
</html>

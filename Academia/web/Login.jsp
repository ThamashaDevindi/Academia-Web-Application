<%-- 
    Document   : Login
    Created on : Aug 13, 2023, 7:31:39 AM
    Author     : sumra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Academia SIS</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
        <link rel="stylesheet" type="text/css" media="all" href="css/rlstyles.css">
        <link rel="icon" type="image/x-icon" href="images/logo.png">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    </head>

    <div class="container">

        <div class="content">
            <h1>welcome<span></span></h1>
            <p>Choose who are you?</p>
            <a href="AdminLogin.jsp" class="btn">Administrator</a>
            <a href="LecturerLogin.jsp" class="btn">Lecturer</a>
            <a href="StudentLogin.jsp" class="btn">Student</a>
        </div>
    </div>

    <section class="footer">
        <div class="social">
            <a href="#"><i class="fa-brands fa-square-facebook"></i></a>
            <a href="#"><i class="fa-brands fa-square-instagram"></i></a>
            <a href="#"><i class="fa-brands fa-linkedin"></i></a>
            <a href="#"><i class="fa-brands fa-square-twitter"></i></a>
        </div>

        <ul clast="list">
            <li>
                <a href="Home.jsp">Home</a>
            </li>
            <li>
                <a href="Course.jsp">Course</a>
            </li>
            <li>
                <a href="AboutUs.jsp">About Us</a>
            </li>
            <li>
                <a href="ContactUs">Contact Us</a>
            </li>
        </ul>
        <p class="copyright">IIT Coders @2023</p>
    </section>        

</body>
</html>


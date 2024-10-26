<%-- 
    Document   : Home
    Created on : Aug 12, 2023, 12:09:05 PM
    Author     : Thamasha Devindi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Academia SIS</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="css/home.css">
        <link rel="stylesheet" href="css/styles.css">
        <link rel="icon" type="image/x-icon" href="images/logo.png">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />


    </head>
    <body>
        <!--header-->
        <nav class="navbar navbar-expand-lg">
            <div class="container">
                <a class="navbar-brand" href="#">
                    <img src="images/logo.png" alt="logo" width="80" height="50">
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav m-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link" href="Home.jsp">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Course.jsp">Courses</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link" href="AboutUs.jsp">About Us</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="ContactUs.jsp">Contact Us</a>
                        </li>
                    </ul>

                    <form class="d-flex" role="search" action="Login.jsp">
                        <button class="btn0">Log In</button>
                    </form>

                </div>
            </div>
        </nav>

        <!--Main Section-->

        <section class="mainb py-5">
            <div class="container py-5">
                <div class="row">
                    <div class="col-lg">
                        <h1>Welcome to Academia Institute.</h1>
                        <p> Click here to learn more about our web site.</p>
                        <a href="#learnMore" class="btn0"><button class="btn1">Learn More..</button></a>
                    </div>
                </div>
            </div>
        </section>

        <!--second section-->
        <section class="section2 py-4" id="learnMore">
            <div class="container-fluid py-4">
                <h1>Learn More..</h1>
                <p>Academia ERP/SIS is a new-age student administration or management system that helps educational 
                    institutions achieve overall digital transformation. It enables Universities, Colleges, or Schools to provide a 
                    seamless experience to all stakeholders, including students, faculties, admin staff, and management. It has more 
                    than 40 modules to cover every function of an institution. The key modules are Admission Management, Campaign 
                    Management, Enquiry Management, Course Management, Time Table Management, Exam and Marksheet Management, Fee 
                    Management, Hostel Management, etc. The solution is integrated with various communication modules like SMS, Email, 
                    WhatsApp, Push Notification, etc., to enable real-time communication of critical information to students, faculties, 
                    parents, administrative staff, etc. It also comes with various comprehensive and versatile dashboards to provide a 
                    summarized and in-depth view of the various functions of an institution to senior management. The solution includes 
                    both web and mobile applications. </p>
                <div class="row">

                </div>
            </div>
        </section>

        <!--footer section-->
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

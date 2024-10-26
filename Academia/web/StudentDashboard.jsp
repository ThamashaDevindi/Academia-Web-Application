<%-- 
    Document   : StudentDashboard
    Created on : Aug 12, 2023, 12:57:39 PM
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
        <title>Student Dashboard</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
        <link rel="stylesheet" type="text/css" media="all" href="css/styles.css">
        <link rel="stylesheet" type="text/css" media="all" href="css/dashstyles.css">
        <link rel="stylesheet" type="text/css" media="all" href="css/studentdash.css">
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
                    <form class="d-flex" role="search" action="Logout.jsp">
                        <button class="btn0 mx-2">Log Out</button>
                    </form>
                </div>
            </div>
        </nav>

        <!--main section of page-->
        <section class="dash">
            <div class="container-fluid py-5 text-center">
                <h1>Pick your work here.</h1>
                <div class="row py-5">
                    <div class="col-lg-11 m-auto py-3">
                        <div class="row py-2">
                            <div class="col-lg-3">
                                <div class="card py-3">
                                    <div class="card-body">
                                        <h6><i class="fa-solid fa-eye" style="color: #005706;"></i> View lecturer details.</h6>
                                        <a href="ViewLecturers.jsp">click here</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="card py-3">
                                    <div class="card-body">
                                        <h6><i class="fa-solid fa-eye" style="color: #005706;"></i> View marks and grades.</h6>
                                        <a href="ViewMarks.jsp">click here</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="card py-3">
                                    <div class="card-body">
                                        <h6><i class="fa-solid fa-calendar-xmark" style="color: #005706;"></i> View time table.</h6>
                                        <a href="ViewTimetable.jsp">click here</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="card py-3">
                                    <div class="card-body">
                                        <h6><i class="fa-regular fa-calendar-days" style="color: #005706;"></i> View events.</h6>
                                        <a href="ViewEvents.jsp">click here</a>
                                    </div>
                                </div>
                            </div> 
                        </div>

                        <div class="row py-2">
                            
                        </div>

                    </div>
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

            <ul class="list">
                <li>
                    <a href="Home.jsp">Home</a>
                </li>
                <li>
                    <a href="Course.jsp">Courses</a>
                </li>
                <li>
                    <a href="AboutUs.jsp">About Us</a>
                </li>
                <li>
                    <a href="ContactUs.jsp">Contact Us</a>
                </li>
            </ul>
            <p class="copyright">IIT Coders @2023</p>
        </section>        



    </body>
</html>

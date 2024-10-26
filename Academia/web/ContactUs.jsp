<%-- 
    Document   : ContactUs
    Created on : Aug 12, 2023, 5:04:08 PM
    Author     : Thamasha Devindi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>

        </style>
        <meta name="viewport" content="width=device-width,initial-scale=1.o">
        <title>Contact Us</title>
        <link rel="stylesheet"  href="css/contact.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
        <link rel="stylesheet" type="text/css" media="all" href="css/styles.css">
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
                            <a class="nav-link" href="Course.jsp">Events</a>
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
        
        <section class="contact">
            <div class="containercs">
                <h2>Contact Us</h2>
                <form action="#" method="post">
                    <label for="name">Your Name</label>
                    <input type="text" id="name" name="name" placeholder="Your name.." required>

                    <label for="email">Email Address</label>
                    <input type="text" id="email" name="email" placeholder="Your email.." required>

                    <label for="subject">Subject</label>
                    <input type="text" id="subject" name="subject" placeholder="Subject.." required>

                    <label for="message">Message</label>
                    <input type="text" id="message" name="message" placeholder="write something.."><br>

                    <input type="submit" value="Submit">
                </form>
            </div>
            <br><br>
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
                    <a href="#">Courses</a>
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

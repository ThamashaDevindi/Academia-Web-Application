<%-- 
    Document   : ContactUs
    Created on : Aug 12, 2023, 4:39:44 PM
    Author     : Rashini
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>About Us</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
        <link rel="stylesheet" type="text/css" media="all" href="css/styles.css">
        <link rel="icon" type="image/x-icon" href="images/logo.png">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <style>
            .back {
                background-image: url("images/about.jpg");
                background-color: #f8f9fa;
                background-size: cover;
            }

            .main-container {
                max-width: 800px;
                margin: 0 auto;
                padding: 40px;
            }

            h1 {
                font-size: 40px;
                font-weight: bold;
                margin-bottom: 20px;
                color: green;
                font-family: Times New Roman;
            }

            p {
                font-size: 18px;
                line-height: 1.6;
                margin-bottom: 20px;
                text-align: justify;
            }
        </style>
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

        <!--main section of page-->
        <section class="back"> 
            <div class="main-container">
                <h1>About Us</h1>
                <p>Welcome to Academia, an enchanting online platform dedicated to providing knowledge to children! 
                    At Academia, we are passionate about nurturing young minds and inspiring a lifelong love for learning</p>

                <p>Our mission is to make education enjoyable, accessible, and engaging for children of all ages.
                    With a diverse range of interactive lessons, educational games, and captivating resources, we strive to ignite curiosity, 
                    encourage critical thinking, and fuel creativity in our young learners. Each piece of content on our website is carefully crafted by a team of experienced educators who understand the unique needs and interests of children.
                    We believe that every child deserves access to high-quality educational materials that stimulate their imaginations and help them thrive academically.</p>

                <p> Join us at Academia, where learning comes alive through captivating adventures and limitless possibilities. 
                    Together, let's unlock the boundless potential within every child and empower them to become lifelong learners</p>
            </div>

            <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
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


<%-- 
    Document   : Course
    Created on : Aug 13, 2023, 10:17:50 PM
    Author     : Thamasha Devindi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Academia SIS</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="css/styles.css">
        <link rel="icon" type="image/x-icon" href="images/logo.png">
        <link href="css/course.css" rel="stylesheet" type="text/css"/>
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

        <section class="course-info">
            <br>
            <h2>Course Information</h2>
            <br>
            <table>
                <tr>
                    <th>Course ID</th>
                    <th>Course Name</th>
                    <th>Course Details</th>
                </tr>
                <tr>
                    <td>c1</td>
                    <td>Accounting</td>
                    <td>This course provides an overview of fundamental accounting principles and concepts. Students will learn about financial statements, basic bookkeeping, and the accounting cycle.</td>
                </tr>
                <tr>
                    <td>c2</td>
                    <td>Economics</td>
                    <td>This course offers an introduction to the fundamental concepts of economics. Students will explore topics such as supply and demand, market structures, elasticity, and basic macroeconomic and microeconomic principles.</td>
                </tr>
                <tr>
                    <td>c3</td>
                    <td>Electronics</td>
                    <td>This course provides a foundational understanding of electronic circuits, components, and principles. Students will learn about circuit analysis, digital and analog electronics, and basic semiconductor devices.</td>
                </tr>
                <tr>
                    <td>c4</td>
                    <td>Basic Sciences</td>
                    <td>This course offers an overview of fundamental concepts in various basic sciences such as physics, chemistry, biology, and earth sciences. Students will explore key principles and connections between different scientific disciplines.</td>
                </tr>
                <tr>
                    <td>c5</td>
                    <td>Software Development</td>
                    <td>This course introduces students to the fundamentals of software development. Topics covered include programming concepts, algorithms, data structures, and an overview of different programming languages.</td>
                </tr>
                <tr>
                    <td>c6</td>
                    <td>Mathematics</td>
                    <td>This course provides an overview of fundamental mathematical concepts. Students will explore topics such as algebra, calculus, geometry, and basic mathematical reasoning and problem-solving skills.</td>
                </tr>
                <tr>
                    <td>c7</td>
                    <td>Art</td>
                    <td>This course introduces students to the world of art, covering various art forms, techniques, and styles. Students will explore drawing, painting, sculpture, and art history to gain a deeper understanding of artistic expression.</td>
                </tr>
                <tr>
                    <td>c8</td>
                    <td>English</td>
                    <td>This course provides a comprehensive introduction to the English language. Students will study grammar, vocabulary, reading comprehension, and writing skills, with an emphasis on effective communication.</td>
                </tr>

            </table><br>
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
                    <a href="#">Home</a>
                </li>
                <li>
                    <a href="#">Courses</a>
                </li>
                <li>
                    <a href="#">About Us</a>
                </li>
                <li>
                    <a href="#">Contact Us</a>
                </li>
            </ul>
            <p class="copyright">IIT Coders @2023</p>
        </section>  
    </body>
</html>

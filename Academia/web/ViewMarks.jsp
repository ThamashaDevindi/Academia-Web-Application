
<%-- 
    Document   : ViewMarks
    Created on : Aug 8, 2023, 5:04:49 PM
    Author     : Pawani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="classes.DBconnector"%>
<!doctype html>
<html>
    <head>
        <title>View Marks & Grades</title>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" media="all" href="css/details.css">

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
        <link rel="stylesheet" type="text/css" media="all" href="css/styles.css">
        <link rel="icon" type="image/x-icon" href="images/logo.png">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />

        <style>
            .main {
                font-family: Arial, sans-serif;
                background-image: url('images/stddetails.jpg');
            }
            .card-header {
                background-color: green;
                color: #fff;
                text-align: center;
                padding: 15px;
            }
            table {
                width: 100%;
                border-collapse: collapse;
                margin-top: 20px;
                table-color: #b3ffe6;
                text-align: center;
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
        
        <!--main section-->
        <section class="main">
            <div class="main-section">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card-header">
                            <h3>Marks & Grades </h3>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="card mt-4">
                            <div class="card-body table-responsive">
                                <table class="table table-bordered" style="width:100%">
                                    <thead>
                                        <tr>
                                            <th>Grade ID</th>
                                            <th>Marks</th>
                                            <th>GPA</th>
                                            <th>Course ID</th>
                                            <th>Student ID</th>
                                        </tr>
                                    </thead>
                                    <tbody>        
                                        <%
                                            try {
                                                Connection con = new DBconnector().getConnection();

                                                String query = "SELECT * FROM grade";
                                                PreparedStatement pstmt = con.prepareStatement(query);
                                                ResultSet rs = pstmt.executeQuery(query);

                                                while (rs.next()) {
                                                    int gradeID = rs.getInt("Grade_Id");
                                                    String marks = rs.getString("Marks");
                                                    float gpa = rs.getFloat("GPA");
                                                    String courseID = rs.getString("Course_ID");
                                                    int studentID = rs.getInt("Student_ID");
                                        %>
                                        <tr>       
                                            <th scope="row"><%=gradeID%></th>
                                            <td><%=marks%></td>
                                            <td><%=gpa%></td>
                                            <td><%=courseID%></td>
                                            <td><%=studentID%></td>
                                        </tr>
                                        <%
                                                }
                                                con.close();
                                            } catch (Exception e) {
                                                e.printStackTrace();
                                            }
                                        %>


                                    </tbody>
                                </table>
                            </div>
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




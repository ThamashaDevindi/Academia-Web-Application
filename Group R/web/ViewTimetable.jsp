<%-- 
    Document   : ViewTimetable
    Created on : Aug 12, 2023, 8:11:37 PM
    Author     : Thamasha Devindi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="classes.DBconnector"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
        <link rel="stylesheet" type="text/css" media="all" href="css/styles.css">
        <link rel="icon" type="image/x-icon" href="images/logo.png">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />

        <style>
            .timetable{
                background-image: url("images/time.jpg"); 
                background-repeat: no-repeat;
                background-size: cover
            }
            table {
                width: 100%;
                border-collapse: separate;
            }
            th, td {
                padding: 10px;
                text-align: center;
            }
            th {
                background-color: #f8f9fa;
                text-align: center;
            }
            td {
                background-color: #ffffff;
                text-align: center;
            }
            tr:nth-child(even) {
                background-color: #f2f2f2;
            }
            .containert {
                max-width: 1000px;
                margin: 0 auto;
            }
            h1 {
                text-align: center;
                margin-top: 70px;
                margin-bottom: 30px;
                color: white;
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


        <section class="timetable">
            <h1>Timetable - 2023</h1>
            <div class="containert">

                <table id="timetable">
                    <thead>
                        <tr>
                            <th>Start Time</th>
                            <th>End Time</th>
                            <th>Monday</th>
                            <th>Tuesday</th>
                            <th>Wednesday</th>
                            <th>Thursday</th>
                            <th>Friday</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            try {
                                Connection con = new DBconnector().getConnection();

                                String query = "SELECT * FROM time_table";
                                PreparedStatement pstmt = con.prepareStatement(query);
                                ResultSet rs = pstmt.executeQuery(query);

                                while (rs.next()) {
                                    Time sTime = rs.getTime("T_Start_Time");
                                    Time eTime = rs.getTime("T_End_Time");
                                    String monday = rs.getString("Monday");
                                    String tuesday = rs.getString("Tuesday");
                                    String wednesday = rs.getString("Wednesday");
                                    String thursday = rs.getString("Thursday");
                                    String friday = rs.getString("Friday");

                        %>
                        <tr>
                            <td><%=sTime%></td>
                            <td><%=eTime%></td>
                            <td><%=monday%></td>
                            <td><%=tuesday%></td>
                            <td><%=wednesday%></td>
                            <td><%=thursday%></td>
                            <td><%=friday%></td>
                        </tr>
                        <%                        }
                                con.close();
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        %>
                    </tbody>
                </table>
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

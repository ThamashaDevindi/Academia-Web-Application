<%-- 
    Document   : UpdateEvent
    Created on : Aug 13, 2023, 7:03:23 AM
    Author     : sumra
--%>

<%@page import="classes.DBconnector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>


<%

    if (request.getParameter("submit") != null) {
        String Event_Id = request.getParameter("Event_Id");
        String Event_Name = request.getParameter("Event_Name");
        String Description = request.getParameter("Description");
        String Held_Date = request.getParameter("Held_Date");

        PreparedStatement pst;
        ResultSet rs;

        Connection con = new DBconnector().getConnection();
        pst = con.prepareStatement("update event set Event_Name=?, Description=?, Held_Date=? where Event_Id=?");

        pst.setString(1, Event_Name);
        pst.setString(2, Description);
        pst.setString(3, Held_Date);
        pst.setString(4, Event_Id);

        pst.executeUpdate();


%>

<script>
    alert("Record updated");
    window.location.href = "EventDetails.jsp";
</script>

<%     }

%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Event Details</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
        <link rel="stylesheet" type="text/css" media="all" href="css/styles.css">
        <link rel="icon" type="image/x-icon" href="images/logo.png">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />

        <style>
            .event{
                background: url(images/event.jpg) no-repeat;
                background-size: cover;
                min-height: 95vh;
                width: 100%
            }
            .event h1{
                font-size: 2rem;
                font-weight: 800;
                color: white;
                text-shadow: 2px 2px 5px black;
                font-family: Georgia, serif; 
            }
            /* Custom styles for submit button */
            .btn-submit {
                background-color: darkgreen;
                color: white;
            }

            /* Custom styles for reset button */
            .btn-reset {
                background-color: gray;
                color: white;
            }

            .form-container {
                box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
                padding: 20px;
                margin-bottom: 20px;
                border-radius: 20px;
            }

        </style>

    </head>

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

    <body>
        <section class="event">
            <h1>Event Update</h1>

            <div class="row">

                <div class="col-sm-4 form-container">
                    <form method="POST" action="#">

                        <%                            PreparedStatement pst;
                            ResultSet rs;

                            Connection con = new DBconnector().getConnection();

                            String Event_Id = request.getParameter("Event_Id");
                            pst = con.prepareStatement("select * from event where Event_Id=?");
                            pst.setString(1, Event_Id);
                            rs = pst.executeQuery();
                            while (rs.next()) {


                        %>

                        <div alight="left" >  
                            <label class="form-label">Event Name</label>
                            <input type="text" class="form-control" placeholder="Event Name" value="<%=rs.getString("Event_Name")%>" name="Event_Name" id="ename" required>
                        </div>

                        <div alight="left" >  
                            <label class="form-label">Event Details</label>
                            <input type="text" class="form-control" placeholder="Event Details" name="Description" value="<%=rs.getString("Description")%>" id="edetails" required>
                        </div>

                        <div alight="left" >  
                            <label class="form-label">Event Date</label>
                            <input type="date" class="form-control" placeholder="Event Date" name="Held_Date" value="<%=rs.getString("Held_Date")%>" id="edate" required>
                        </div>

                        <% }%>
                        <br>

                        <div alight="right" >  
                            <input type="submit" id="submit" value="submit" name="submit" class="btn btn-info btn-submit">
                            <input type="reset" id="reset" value="reset" name="reset" class="btn btn-warning btn-reset">

                        </div>

                        <div align="right">

                            <p><a class="btn btn-info" href="EventDetails.jsp">Click Back </a></p> 

                        </div>



                    </form>

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

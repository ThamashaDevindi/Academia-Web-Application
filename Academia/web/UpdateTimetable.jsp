<%-- 
    Document   : UpdateTimetable
    Created on : Aug 13, 2023, 9:39:30 PM
    Author     : Thamasha Devindi
--%>

<%@page import="classes.DBconnector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<%
    if (request.getParameter("submit") != null) {
        String id = request.getParameter("id");
        String Monday = request.getParameter("Monday");
        String Tuesday = request.getParameter("Tuesday");
        String Wednesday = request.getParameter("Wednesday");
        String Thursday = request.getParameter("Thursday");
        String Friday = request.getParameter("Friday");
        String T_Start_Time = request.getParameter("T_Start_Time");
        String T_End_Time = request.getParameter("T_End_Time");

        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        con = new DBconnector().getConnection();
        pst = con.prepareStatement("update time_table set Monday=?, Tuesday=?, Wednesday=?, Thursday=?, Friday=?, T_Start_Time=?, T_End_Time=? where id=?");

        pst.setString(1, Monday);
        pst.setString(2, Tuesday);
        pst.setString(3, Wednesday);
        pst.setString(4, Thursday);
        pst.setString(5, Friday);
        pst.setString(6, T_Start_Time);
        pst.setString(7, T_End_Time);
        pst.setString(8, id);
        pst.executeUpdate();

%>

<script>
    alert("Record updated");

</script>

<%    }


%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>   
        <title>Timetable</title>
        <link rel="icon" type="image/x-icon" href="images/logo.png">

    </head>
    <body>
        <h1>Update the time table</h1>

        <div class="row">

            <div class="col-sm-4">
                <form  method="POST" action="#"> 

                    <%                        Connection con;
                        PreparedStatement pst;
                        ResultSet rs;

                        con = new DBconnector().getConnection();
                        String id = request.getParameter("id");
                        pst = con.prepareStatement("select * from time_table where ID=?");
                        pst.setString(1, id);
                        rs = pst.executeQuery();

                        while (rs.next()) {


                    %>






                    <div alight="left">
                        <label class="form-label">Monday </label>
                        <input type="text" class="form-control" placeholder="Course Name" value="<%=rs.getString("Monday")%>" name="Monday" id="Monday" required>

                    </div>

                    <div alight="left">
                        <label class="form-label">Tuesday </label>
                        <input type="text" class="form-control" placeholder="Course Name" value="<%=rs.getString("Tuesday")%>" name="Tuesday" id="Tuesday" required>

                    </div>

                    <div alight="left">
                        <label class="form-label">Wednesday </label>
                        <input type="text" class="form-control" placeholder="Course Name" value="<%=rs.getString("Wednesday")%>" name="Wednesday" id="Wednesday" required>

                    </div>

                    <div alight="left">
                        <label class="form-label">Thursday </label>
                        <input type="text" class="form-control" placeholder="Course Name" value="<%=rs.getString("Thursday")%>" name="Thursday" id="Thursday" required>

                    </div>

                    <div alight="left">
                        <label class="form-label">Friday </label>
                        <input type="text" class="form-control" placeholder="Course Name" value="<%=rs.getString("Friday")%>" name="Friday" id="Friday" required>

                    </div>

                    <div alight="left">
                        <label class="form-label">Start time </label>
                        <input type="text" class="form-control" placeholder="Start Time"  value="<%=rs.getString("T_Start_Time")%>" name="T_Start_Time" id="T_Start_Time" required>

                    </div>

                    <div alight="left">
                        <label class="form-label">End time </label>
                        <input type="text" class="form-control" placeholder="End time" value="<%=rs.getString("T_End_Time")%>" name="T_End_Time" id="T_End_Time" required>

                    </div>

                    <%                        }

                    %>

                    <br>
                    <div alight="right">
                        <input type="submit" id="submit" value="submit" name="submit" class="btn btn-info">
                        <input type="reset" id="reset" value="reset" name="reset" class="btn btn-warning">

                    </div>

                    <div alight="right">
                        <p> <a href="AddTimetable.jsp"> click back </a></p>


                    </div>


                </form>

            </div>




        </div>


    </body>
</html>

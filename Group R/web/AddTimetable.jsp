<%-- 
    Document   : UpdateTimetable
    Created on : Aug 13, 2023, 9:34:44 PM
    Author     : Thamasha Devindi
--%>

<%@page import="classes.DBconnector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.*" %>

<%
    if (request.getParameter("submit") != null) {
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
        pst = con.prepareStatement("insert into time_table(Monday,Tuesday,Wednesday,Thursday,Friday,T_Start_Time,T_End_Time)values(?,?,?,?,?,?,?)");

        pst.setString(1, Monday);
        pst.setString(2, Tuesday);
        pst.setString(3, Wednesday);
        pst.setString(4, Thursday);
        pst.setString(5, Friday);
        pst.setString(6, T_Start_Time);
        pst.setString(7, T_End_Time);
        pst.executeUpdate();

%>

<script>
    alert("Record added");


</script>

<%    }


%>
<!DOCTYPE>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Timetable</title>
        <link rel="icon" type="image/x-icon" href="images/logo.png">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
        
    </head>
    <body>
        <h1>Time Table</h1>
        <br>
        <div class ="row">
            <div class="col-sm-4">
                <form  method="POST" action="#"> 

                    <div alight="left">
                        <label class="form-label">Monday </label>
                        <input type="text" class="form-control" placeholder="Course ID" name="Monday" id="Monday" required>

                    </div>

                    <div alight="left">
                        <label class="form-label">Tuesday </label>
                        <input type="text" class="form-control" placeholder="Course ID" name="Tuesday" id="Tuesday" required>

                    </div>

                    <div alight="left">
                        <label class="form-label">Wednesday </label>
                        <input type="text" class="form-control" placeholder="Course ID" name="Wednesday" id="Wednesday" required>

                    </div>

                    <div alight="left">
                        <label class="form-label">Thursday </label>
                        <input type="text" class="form-control" placeholder="Course ID" name="Thursday" id="Thursday" required>

                    </div>

                    <div alight="left">
                        <label class="form-label">Friday </label>
                        <input type="text" class="form-control" placeholder="Course ID" name="Friday" id="Friday" required>

                    </div>

                    <div alight="left">
                        <label class="form-label">Start time </label>
                        <input type="text" class="form-control" placeholder="Start Time" name="T_Start_Time" id="stime" required>

                    </div>

                    <div alight="left">
                        <label class="form-label">End time </label>
                        <input type="text" class="form-control" placeholder="End time" name="T_End_Time" id="etime" required>

                    </div>

                    <br>
                    <div alight="right">
                        <input type="submit" id="submit" value="submit" name="submit" class="btn btn-info">
                        <input type="reset" id="reset" value="reset" name="reset" class="btn btn-warning">

                    </div>


                </form>

            </div>

            <div class="col-sm-8">
                <div class="panel-body">
                    <table id="tbl-timetable" class="table table-responsive table-bordered" cellpadding="0" width="100%">
                        <thead>
                            <tr>
                                <th>Monday</th>
                                <th>Tuesday</th>
                                <th>Wednesday</th>
                                <th>Thursday</th>
                                <th>Friday</th>
                                <th>Start Time</th>
                                <th>End Time</th>
                                <th>Edit</th>
                                <th>Delete</th>
                            </tr>
                            <%                                Connection con;
                                PreparedStatement pst;
                                ResultSet rs;

                                con = new DBconnector().getConnection();
                                String query = "select * from time_table";
                                Statement st = con.createStatement();
                                rs = st.executeQuery(query);
                                while (rs.next()) {
                                    String id = rs.getString("id");


                            %>



                            <tr>
                                <td><%=rs.getString("Monday")%></td>
                                <td><%=rs.getString("Tuesday")%></td>
                                <td><%=rs.getString("Wednesday")%></td>
                                <td><%=rs.getString("Thursday")%></td>
                                <td><%=rs.getString("Friday")%></td>
                                <td><%=rs.getString("T_Start_Time")%></td>
                                <td><%=rs.getString("T_End_Time")%></td>
                                <td><a href="UpdateTimetable.jsp?id=<%=id%>">Edit</a></td>
                                <td><a href="DeleteTimetable.jsp?id="<%=id%>>Delete</a></td>


                            </tr>

                            <%
                                }

                            %>  
                        </thead>
                    </table>

                </div>

            </div>
    </body>
</html>

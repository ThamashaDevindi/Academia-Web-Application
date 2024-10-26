<%-- 
    Document   : UpdateStudent
    Created on : Aug 7, 2023, 9:50:51 PM
    Author     : Thamasha Devindi
--%>

<%@page import="classes.DBconnector"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    if (request.getParameter("submit") != null) {
        int studentID = Integer.parseInt(request.getParameter("studentID"));
        String Sfirstname = request.getParameter("Sfirstname");
        String Slastname = request.getParameter("Slastname");
        String Sgender = request.getParameter("Sgender");
        String Saddress = request.getParameter("Saddress");
        String Susername = request.getParameter("Susername");
        String Spassword = request.getParameter("Spassword");
        String SDOB = request.getParameter("SDOB");
        String Stelephone = request.getParameter("Stelephone");
        String Stalent = request.getParameter("Stalent");

        Connection con = new DBconnector().getConnection();
        PreparedStatement pstmt = con.prepareStatement("UPDATE student SET Student_First_Name=?, Student_Last_Name=?, S_Gender=?, S_Address=?, S_username=?, S_Password=?, S_DOB=?, S_Tele_Phone=?, S_Talent=? WHERE Student_ID=?");

        pstmt.setString(1, Sfirstname);
        pstmt.setString(2, Slastname);
        pstmt.setString(3, Sgender);
        pstmt.setString(4, Saddress);
        pstmt.setString(5, Susername);
        pstmt.setString(6, Spassword);
        pstmt.setString(7, SDOB);
        pstmt.setString(8, Stelephone);
        pstmt.setString(9, Stalent);
        pstmt.setInt(10, studentID);

        pstmt.executeUpdate();
%>
<script>
    alert("Record updated");
    window.location.href = "StudentDetails.jsp";
</script>
<%
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <title>Edit Details</title>
        <link rel="stylesheet" href="css/profileedit.css">
        <link rel="icon" type="image/x-icon" href="images/logo.png">
    </head>
    <body>
        <div class="container">

            <div class="row">   
                <form method="POST" action="#">

                    <%                        Connection con = new DBconnector().getConnection();

                        int studentID = Integer.parseInt(request.getParameter("Student_ID"));
                        PreparedStatement pstmt = con.prepareStatement("SELECT * FROM student WHERE Student_ID=?");
                        pstmt.setInt(1, studentID);
                        ResultSet rs = pstmt.executeQuery();
                        while (rs.next()) {


                    %>

                    <div class="col-md-4 mt-1">
                        <div class="sidebar">
                            <div class="card">
                                <img src="images/student.jpg" alt="User Photo" class="profile-picture" width="200">
                            </div>
                            <div class="profile-upload">
                                <input type="file" id="profileImage" name="profileImage" accept="image/*">
                                <label for="profileImage" class="custom-file-upload">Choose Profile Image</label>
                                <span id="selectedFileName"></span>
                            </div>
                            <div class="col-md-8 mt-1">
                                <div class="content">
                                    <h1 class="about">Edit Profile</h1>
                                    <div class="row">
                                        <div class="text">
                                            <label class="form-label">Student Id</label><br><br>
                                        </div>
                                        <div class="text-secondary">
                                            <input type="text" value="<%=rs.getInt("Student_ID")%>" placeholder="Student ID" name="studentID" id="studentID">
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="text">
                                            <label class="form-label">First Name</label><br><br>
                                        </div>
                                        <div class='text-secondary'>
                                            <input type="text" value="<%=rs.getString("Student_First_Name")%>" placeholder="Student First Name" name="Sfirstname" id="Sfirstname">
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="text">
                                            <label class="form-label">Last Name</label><br><br>
                                        </div>
                                        <div class='text-secondary'>
                                            <input type="text" value="<%=rs.getString("Student_Last_Name")%>" placeholder="Student Last Name" name="Slastname" id="Slastname"><br><br>
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="text">
                                            <label class="form-label">Gender</label><br><br>
                                        </div>
                                        <div class='text-secondary'>
                                            <input type="text" value="<%=rs.getString("S_Gender")%>" placeholder="Student Gender" name="Sgender" id="Sgender"><br><br>
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="text">
                                            <label class="form-label">Address</label><br><br>
                                        </div>
                                        <div class='text-secondary'>
                                            <input type="text" value="<%=rs.getString("S_Address")%>" placeholder="Student Address" name="Saddress" id="Saddress"><br><br>
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="text">
                                            <label class="form-label">Date of Birth</label><br><br>
                                        </div>
                                        <div class='text-secondary'>
                                            <input type="text" value="<%=rs.getString("S_DOB")%>" placeholder="DOB" name="SDOB" id="SDOB"><br><br>
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="text">
                                            <label class="form-label">Contact Number</label><br><br>
                                        </div>
                                        <div class='text-secondary'>
                                            <input type="text" value="<%=rs.getString("S_Tele_Phone")%>" placeholder="Student Contact Number" name="Stelephone" id="Stelephone"><br><br>
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="text">
                                            <label class="form-label">Special Talent</label><br><br>
                                        </div>
                                        <div class='text-secondary'>
                                            <input type="text" value="<%=rs.getString("S_Talent")%>" placeholder="Special Talent" name="Stalent" id="Stalent"><br><br>
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="text">
                                            <label class="form-label">Username</label><br><br>
                                        </div>
                                        <div class='text-secondary'>
                                            <input type="text" value="<%=rs.getString("S_username")%>" name="Susername" id="Susername" readonly=""><br><br>
                                        </div>
                                    </div>
                                        <div class="row">
                                        <div class="text">
                                            <label class="form-label">Password</label><br><br>
                                        </div>
                                        <div class='text-secondary'>
                                            <input type="password" value="<%=rs.getString("S_Password")%>" name="Spassword" id="Spassword" readonly=""><br><br>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                    <% }%>
                    <br><br>

                    <input type="submit" id="submit" value="submit" name="submit" class="form-button btn-info  btn-submit">
                    <input type="reset" id="reset" value="reset" name="reset" class="form-button btn-warning btn-reset">

                </form>
            </div>
        </div>

    </body>
</html>
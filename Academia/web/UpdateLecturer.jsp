<%-- 
    Document   : UpdateLecturer
    Created on : Aug 12, 2023, 1:53:14 PM
    Author     : Thamasha Devindi
--%>

<%@page import="classes.DBconnector"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    if (request.getParameter("submit") != null) {
        int lecturerID = Integer.parseInt(request.getParameter("lecturerID"));
        String Lfirstname = request.getParameter("Lfirstname");
        String Llastname = request.getParameter("Llastname");
        String Lusername = request.getParameter("Lusername");
        String Lpassword = request.getParameter("Lpassword");
        String Ltelephone = request.getParameter("Ltelephone");
        String Lgender = request.getParameter("Lgender");

        Connection con = new DBconnector().getConnection();
        PreparedStatement pstmt = con.prepareStatement("UPDATE lecturer SET L_First_name=?, L_Last_name=?, L_User_name=?, L_password=?, L_Tele_Phone=?, L_Gender=? WHERE Lecturer_Id=?");

        pstmt.setString(1, Lfirstname);
        pstmt.setString(2, Llastname);
        pstmt.setString(3, Lusername);
        pstmt.setString(4, Lpassword);
        pstmt.setString(5, Ltelephone);
        pstmt.setString(6, Lgender);
        pstmt.setInt(7, lecturerID);

        pstmt.executeUpdate();
%>
<script>
    alert("Record updated");
    window.location.href = "LecturerDetails.jsp";
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

                        int lecturerID = Integer.parseInt(request.getParameter("Lecturer_Id"));
                        PreparedStatement pstmt = con.prepareStatement("SELECT * FROM lecturer WHERE Lecturer_Id=?");
                        pstmt.setInt(1, lecturerID);
                        ResultSet rs = pstmt.executeQuery();
                        while (rs.next()) {


                    %>

                    <div class="col-md-4 mt-1">
                        <div class="sidebar">
                            <div class="card">
                                <img src="images/lecturer.jpg" alt="User Photo" class="profile-picture" width="200">
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
                                            <label class="form-label">Lecturer Id</label><br><br>
                                        </div>
                                        <div class="text-secondary">
                                            <input type="text" value="<%=rs.getInt("Lecturer_Id")%>" placeholder="Lecturer ID" name="lecturerID" id="lecturerID">
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="text">
                                            <label class="form-label">First Name</label><br><br>
                                        </div>
                                        <div class='text-secondary'>
                                            <input type="text" value="<%=rs.getString("L_First_name")%>" placeholder="Lecturer First Name" name="Lfirstname" id="Lfirstname">
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="text">
                                            <label class="form-label">Last Name</label><br><br>
                                        </div>
                                        <div class='text-secondary'>
                                            <input type="text" value="<%=rs.getString("L_Last_name")%>" placeholder="Lecturer Last Name" name="Llastname" id="Llastname"><br><br>
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="text">
                                            <label class="form-label">Gender</label><br><br>
                                        </div>
                                        <div class='text-secondary'>
                                            <input type="text" value="<%=rs.getString("L_Gender")%>" placeholder="Lecturer Gender" name="Lgender" id="Lgender"><br><br>
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="text">
                                            <label class="form-label">Contact Number</label><br><br>
                                        </div>
                                        <div class='text-secondary'>
                                            <input type="text" value="<%=rs.getString("L_Tele_Phone")%>" placeholder="Lecturer Contact Number" name="Ltelephone" id="Ltelephone"><br><br>
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="text">
                                            <label class="form-label">Username</label><br><br>
                                        </div>
                                        <div class='text-secondary'>
                                            <input type="text" value="<%=rs.getString("L_User_name")%>" name="Lusername" id="Lusername" readonly=""><br><br>
                                        </div>
                                    </div>
                                        <div class="row">
                                        <div class="text">
                                            <label class="form-label">Password</label><br><br>
                                        </div>
                                        <div class='text-secondary'>
                                            <input type="password" value="<%=rs.getString("L_password")%>" name="Lpassword" id="Lpassword" readonly=""><br><br>
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
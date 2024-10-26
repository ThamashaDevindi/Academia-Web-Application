<%-- 
    Document   : DeleteLecturer
    Created on : Aug 12, 2023, 2:28:35 PM
    Author     : Thamasha Devindi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="classes.DBconnector"%>
<%@page import="java.sql.*"%>
<%

        Connection con = new DBconnector().getConnection();
        int studentId = Integer.parseInt(request.getParameter("Lecturer_Id"));
        
        PreparedStatement pstmt = con.prepareStatement("DELETE FROM lecturer WHERE Lecturer_Id=? ");

        
        pstmt.setInt(1, studentId);

        pstmt.executeUpdate();
        pstmt.close();
        con.close();
    

%>

<script> 
    alert("Record deleted");
    window.location.href = "LecturerDetails.jsp";
</script>
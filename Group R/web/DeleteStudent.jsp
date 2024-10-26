<%-- 
    Document   : DeleteStudent
    Created on : Aug 8, 2023, 11:07:26 AM
    Author     : Thamasha Devindi
--%>

<%@page import="classes.DBconnector"%>
<%@page import="java.sql.*"%>
<%

        Connection con = new DBconnector().getConnection();
        int studentId = Integer.parseInt(request.getParameter("Student_ID"));
        
        PreparedStatement pstmt = con.prepareStatement("DELETE FROM student WHERE Student_ID=? ");

        
        pstmt.setInt(1, studentId);

        pstmt.executeUpdate();
        pstmt.close();
        con.close();
    

%>

<script> 
    alert("Record deleted");
    window.location.href = "StudentDetails.jsp";
</script>

<%-- 
    Document   : DeleteTimetable
    Created on : Aug 13, 2023, 9:50:39 PM
    Author     : Thamasha Devindi
--%>

<%@page import="classes.DBconnector"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    
        String id = request.getParameter("id");
        Connection con;
        PreparedStatement pst;
        ResultSet rs;

        con = new DBconnector().getConnection();
       pst = con.prepareStatement("delete from time_table where id = ?");
        pst.setString(1, id);
        pst.executeUpdate();

%>

<script>
    alert("Record deleted");
    window.location.href = "AddTimetable.jsp";

</script>
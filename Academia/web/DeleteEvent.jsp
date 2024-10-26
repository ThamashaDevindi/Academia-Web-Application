<%-- 
    Document   : DeleteEvent
    Created on : Aug 13, 2023, 6:59:33 AM
    Author     : sumra
--%>

<%@page import="classes.DBconnector"%>
<%@page import="java.sql.*"%>
<%

   
        String Event_Id = request.getParameter("Event_Id");
        

        PreparedStatement pst;
        ResultSet rs;

        Connection con = new DBconnector().getConnection();
        pst = con.prepareStatement("delete from event where Event_Id=? ");

        
        pst.setString(1, Event_Id);

        pst.executeUpdate();


%>

<script> 
    alert("Record deleted");
    window.location.href = "EventDetails.jsp";
</script>
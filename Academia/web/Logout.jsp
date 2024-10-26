<%-- 
    Document   : Logout
    Created on : Aug 13, 2023, 4:53:49 PM
    Author     : Thamasha Devindi
--%>

<%
session.invalidate();
response.sendRedirect("Home.jsp");
%>
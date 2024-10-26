<%-- 
    Document   : LoginProcessL
    Created on : Aug 13, 2023, 10:05:33 AM
    Author     : Thamasha Devindi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="classes.Lecturer"%>
<%@page import="classes.DBconnector"%>
<%@page session="true" %>

<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    Lecturer lecturer =new Lecturer(username, password);
    if (lecturer.authenticate(DBconnector.getConnection())) {
        session.setAttribute("lecturer", lecturer);
        response.sendRedirect("LecturerDashboard.jsp");
    } else {
        response.sendRedirect("LecturerLogin.jsp?status=0"); // Set 'status=0' when login fails
    }
%>

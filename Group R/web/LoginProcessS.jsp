<%-- 
    Document   : LoginProcessS
    Created on : Aug 13, 2023, 10:42:12 AM
    Author     : sumra
--%>
<%@page import="classes.DBconnector"%>
<%@page import="classes.Student"  %>
<%@page session="true" %>
<%@page import="classes.MD5" %>

<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    Student student = new Student(username, password);
    if (student.authenticate(DBconnector.getConnection())) {
        session.setAttribute("student", student);
        response.sendRedirect("StudentDashboard.jsp");
    } else {
        response.sendRedirect("StudentLogin.jsp?status=0"); // Set 'status=0' when login fails
    }
%>
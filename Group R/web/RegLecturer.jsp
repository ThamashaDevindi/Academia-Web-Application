<%-- 
    Document   : RegLecturer
    Created on : Aug 13, 2023, 9:28:28 AM
    Author     : sumra
--%>

<%@page import="classes.DBconnector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="classes.Lecturer"%>
<%
    String firstname = request.getParameter("firstname") ;
    String lastname = request.getParameter("lastname") ;
    String email = request.getParameter("username") ;
    String password = request.getParameter("password");
    String contact_no = request.getParameter("contact_no");
    String Gender = request.getParameter("Gender");
    
    
    Lecturer lecturer = new Lecturer(firstname, lastname, email, password, contact_no, Gender);
    if(lecturer.register(DBconnector.getConnection())){
        response.sendRedirect("SignupLecturer.jsp?status=1");
    } else {
        response.sendRedirect("SignupLecturer.jsp?status=0");
    }
%>
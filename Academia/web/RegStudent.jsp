<%-- 
    Document   : RegStudent
    Created on : Aug 13, 2023, 10:48:08 AM
    Author     : sumra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="classes.DBconnector"%>
<%@page import="classes.Student"%>
<%
    String firstname = request.getParameter("firstname") ;
    String lastname = request.getParameter("lastname") ;
    String username = request.getParameter("username") ;
    String password = request.getParameter("password");
    String dob = request.getParameter("dob");
    String contact_no = request.getParameter("contact_no");
    String address = request.getParameter("address");
    String special_talents = request.getParameter("special_talents");
    String Gender = request.getParameter("Gender");
    
    
    Student student = new Student(firstname, lastname, username, password,dob,contact_no,address,special_talents,Gender);
    if(student.register(DBconnector.getConnection())){
        response.sendRedirect("SignupStudent.jsp?status=1");
    } else {
        response.sendRedirect("SignupStudent.jsp?status=0");
    }
%>
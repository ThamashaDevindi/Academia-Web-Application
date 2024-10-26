<%@page import="java.sql.Connection"%>
<%@page import="classes.DBconnector"%>
<%@ page import="classes.MD5" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
    <title>Login Process</title>
    <link rel="icon" type="image/x-icon" href="logo.png">
</head>
<body>
    <% 
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    
    PreparedStatement stmt = null;
    ResultSet rs = null;
    Connection con = null;

    try {
        con = new DBconnector().getConnection();

        String query = "SELECT * FROM admin WHERE Ad_username = ? AND Ad_Password = ?";
        stmt = con.prepareStatement(query);
        stmt.setString(1, username);
        stmt.setString(2, MD5.getMd5(password));
        rs = stmt.executeQuery();

        if (rs.next()) {
            // Successful login
            response.sendRedirect("AdminDashboard.jsp");
        } else {
            // Failed login
            response.sendRedirect("AdminLogin.jsp?status=0");
        }
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        try { if (rs != null) rs.close(); } catch (Exception e) { e.printStackTrace(); }
        try { if (stmt != null) stmt.close(); } catch (Exception e) { e.printStackTrace(); }
        try { if (con != null) con.close(); } catch (Exception e) { e.printStackTrace(); }
    }
    %>
</body>
</html>

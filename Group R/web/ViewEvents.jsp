<%-- 
    Document   : UpdateEvent
    Created on : Aug 13, 2023, 7:03:23 AM
    Author     : sumra
--%>

<%@page import="classes.DBconnector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Event Details</title>
        <link rel="stylesheet" type="text/css" media="all" href="css/event.css">
        <link rel="icon" type="image/x-icon" href="images/logo.png">

    </head>
    <body>

        <section>
            <img src='images/event.jpg' style='width: 100%; height: 100%; background-size: cover' alt='[]' />

            <div class="overlay">
                <div class="leftBox">
                    <div class="content">  
                        <h1>Events</h1>
                        <p>
                            Welcome to our Student Information System Event UI! This intuitive interface is designed
                            to enhance your event experience. Enjoy easy registration, personalized event details,
                            interactive schedules, and real-time updates. Connect with other attendees through the
                            discussion forum and stay informed about upcoming events with the interactive calendar.
                            Make the most of our event UI and have a fantastic event!
                        </p>
                    </div>
                </div>
                <div class="events">
                    <ul>
                        <%
                    try {
                        
                        PreparedStatement pst;
                        ResultSet rs;

                        Connection con = new DBconnector().getConnection();

                        String query = "SELECT * FROM event";
                        Statement st = con.createStatement();

                        rs = st.executeQuery(query);

                        while (rs.next()) {
                            String eventDate = rs.getString("Held_Date");
                            String eventName = rs.getString("Event_Name");
                            String eventDetails = rs.getString("Description");
                    %>
                    
                        
                        <!-- Add more events here -->
                        
                        
                        <li>
                            <div class="time">
                                <h2><%=eventDate%></h2>
                            </div>
                            <div class="details">
                                <h3><%= eventName %></h3>
                            <p><%= eventDetails %></p>
                            </div>
                        </li>
                        <%
                        }
                        con.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    %>
                    </ul>
                </div>
            </div>
        </section>

</html>


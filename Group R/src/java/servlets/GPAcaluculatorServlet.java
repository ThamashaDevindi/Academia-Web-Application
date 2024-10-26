/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import classes.DBconnector;
import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Thamasha Devindi
 */
public class GPAcaluculatorServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        // Retrieve data from the request
        String[] courseIDs = request.getParameterValues("courseID[]");
        String[] studentIDs = request.getParameterValues("studentID[]");
        String[] marks = request.getParameterValues("marks[]");
        String[] grades = request.getParameterValues("grade[]");
        
        try {
           Connection con = new DBconnector().getConnection();
            
            // Insert data into the database
            String insertQuery = "INSERT INTO grade (Course_ID, Student_ID, Marks, GPA) VALUES (?, ?, ?, ?)";
            PreparedStatement preparedStatement = con.prepareStatement(insertQuery);
            
            for (int i = 0; i < courseIDs.length; i++) {
                preparedStatement.setString(1, courseIDs[i]);
                preparedStatement.setInt(2, Integer.parseInt(studentIDs[i]));
                preparedStatement.setInt(3, Integer.parseInt(marks[i]));
                preparedStatement.setFloat(4, Float.parseFloat(grades[i]));
                
                preparedStatement.executeUpdate();
            }
            
            preparedStatement.close();
            con.close();
            PrintWriter out = response.getWriter();
            out.print("Data inserted successfully"); 
            
        } catch (Exception e) {
            PrintWriter out = response.getWriter();
            out.println("An error occurred: " + e.getMessage());
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

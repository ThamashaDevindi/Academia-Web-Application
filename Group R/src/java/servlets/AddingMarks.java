package servlets;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.sql.*;
import classes.DBconnector;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AddingMarks")
public class AddingMarks extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String course = request.getParameter("course");
        String student = request.getParameter("student");
        String marks = request.getParameter("marks");
        String gpa = request.getParameter("gpa");

        try {
            Connection con = DBconnector.getConnection();
            String insertQuery = "INSERT INTO grade (course_id, student_id, marks, gpa) VALUES (?, ?, ?, ?)";
            PreparedStatement preparedStatement = con.prepareStatement(insertQuery);
            preparedStatement.setString(1, course);
            preparedStatement.setString(2, student);
            preparedStatement.setString(3, marks);
            preparedStatement.setString(4, gpa);
            int rowsAffected = preparedStatement.executeUpdate();
            preparedStatement.close();
            con.close();

            // Redirect back to the form with a success message
            response.sendRedirect("AddedMarks.jsp?success=true");
            
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendRedirect("AddMarksForm.jsp?error=true");
        } catch (Exception ex) {
            Logger.getLogger(AddingMarks.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
/**
 *
 * @author Thamasha Devindi
 */
public class DBconnector {
    private static final String URL = "jdbc:mysql://localhost:3306/academisis";
    private static final String DBuser = "Thamasha";
    private static final String DBpassword = "Thamasha";
    private static final String Driver = "com.mysql.jdbc.Driver";
    
    public static Connection getConnection() throws Exception{
        Class.forName(Driver);
        Connection con = DriverManager.getConnection(URL,DBuser,DBpassword);
        return con;
    }
}

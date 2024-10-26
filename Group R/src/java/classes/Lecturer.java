/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;
import java.sql.*;

/**
 *
 * @author Owner
 */
public class Lecturer {
    private int Lecturer_Id;
    private String L_First_name;
    private String L_Last_Name;
    private String L_User_name;
    private String L_password;
    private String L_Tele_phone;
    private String L_Gender;
    
    
    
    
    public Lecturer(String L_User_name, String L_password) {
        this.L_User_name = L_User_name;
        this.L_password = L_password;
    
}
    
    public Lecturer(String L_First_Name, String L_Last_Name, String L_User_Name, String L_password, String L_Tele_phone, String L_Gender) {
        this.L_First_name = L_First_Name;
        this.L_Last_Name = L_Last_Name;
        this.L_User_name = L_User_Name;
        this.L_password= L_password;
        this.L_Tele_phone = L_Tele_phone;
        this.L_Gender= L_Gender;
        

    }
    public void setId(int Lecturer_Id) {
        this. Lecturer_Id =Lecturer_Id;

    }
    public int getId() {
        return Lecturer_Id;

    }

    public String getFirstName() {
        return L_First_name;

    }

    public String getLastName() {
        return L_Last_Name;

    }
    
   
    public String getcontact_no() {
        return L_Tele_phone;

    }
    
    public String getGender() {
        return L_Gender;

    }

    
    public boolean register(Connection con) throws SQLException {
    String query = "INSERT INTO lecturer(L_First_name, L_Last_Name, L_User_name, L_password,  L_Tele_phone,L_Gender) VALUES (?, ?, ?, ?, ?, ?)";
    PreparedStatement pstmt = con.prepareStatement(query);
    pstmt.setString(1, L_First_name);
    pstmt.setString(2, L_Last_Name);
    pstmt.setString(3, L_User_name);
    pstmt.setString(4, MD5.getMd5(L_password));
    pstmt.setString(5, L_Tele_phone);
    pstmt.setString(6, L_Gender);
    
    int a = pstmt.executeUpdate();

    return (a > 0);
}
    public boolean authenticate(Connection con) throws SQLException {
    String query = "SELECT * FROM lecturer WHERE L_User_name=? AND L_password=?";
    PreparedStatement pstmt = con.prepareStatement(query);
    pstmt.setString(1, L_User_name);
    pstmt.setString(2, MD5.getMd5(L_password));
    ResultSet rs = pstmt.executeQuery();
    
    if (rs.next()) {
        Lecturer_Id = rs.getInt("Lecturer_Id");
       L_First_name = rs.getString("L_First_name");
        L_Last_Name = rs.getString("L_Last_Name");
        L_Tele_phone = rs.getString("L_Tele_phone");
        L_Gender = rs.getString("L_Gender");
        
        return true;
    } else {
        return false;
    }
}

    public boolean update(Connection con) {

        return true;
    }
}
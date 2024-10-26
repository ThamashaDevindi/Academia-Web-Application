package classes;

import java.sql.*;

/**
 *
 * @author Owner
 */
public class Student {

    private int Student_ID;
    private String Student_First_Name;
    private String Student_Last_Name;
    private String S_username;
    private String S_Password;
    private String S_DOB;
    private String S_Tele_Phone;
    private String S_Address;
    private String S_Talent;
    private String S_Gender;

    public Student(String S_username, String S_Password) {
        this.S_username = S_username;
        this.S_Password = S_Password;

    }

    public Student(String Student_First_Name, String Student_Last_Name, String S_username, String S_Password, String S_DOB, String S_Tele_Phone, String S_Address, String S_Talent, String S_Gender) {
        this.Student_First_Name = Student_First_Name;
        this.Student_Last_Name = Student_Last_Name;
        this.S_username = S_username;
        this.S_Password = S_Password;
        this.S_DOB = S_DOB;
        this.S_Tele_Phone = S_Tele_Phone;
        this.S_Address = S_Address;
        this.S_Talent = S_Talent;
        this.S_Gender = S_Gender;

    }

    public void setId(int Student_ID) {
        this.Student_ID = Student_ID;

    }

    public int getId() {
        return Student_ID;

    }

    public String getusername() {
        return S_username;

    }

    public String getFirstName() {
        return Student_First_Name;

    }

    public String getLastName() {
        return Student_Last_Name;

    }

    public String getdob() {
        return S_DOB;

    }

    public String getcontact_no() {
        return S_Tele_Phone;

    }

    public String getaddress() {
        return S_Address;

    }

    public String getspecial_talents() {
        return S_Talent;

    }

    public String getGender() {
        return S_Gender;

    }

    public boolean register(Connection con) throws SQLException {
        String query = "INSERT INTO student(Student_First_Name, Student_Last_Name,S_username, S_Password, S_DOB, S_Tele_Phone, S_Address, S_Talent,  S_Gender) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
        PreparedStatement pstmt = con.prepareStatement(query);
        pstmt.setString(1, Student_First_Name);
        pstmt.setString(2, Student_Last_Name);
        pstmt.setString(3, S_username);
        pstmt.setString(4, S_Password);
        pstmt.setString(5, S_DOB);
        pstmt.setString(6, S_Tele_Phone);
        pstmt.setString(7, S_Address);
        pstmt.setString(8, S_Talent);
        pstmt.setString(9, S_Gender);

        int a = pstmt.executeUpdate();

        return (a > 0);
    }

    public boolean authenticate(Connection con) throws SQLException {
        String query = "SELECT * FROM student WHERE S_username=? AND S_Password=?";
        PreparedStatement pstmt = con.prepareStatement(query);
        pstmt.setString(1, S_username);
        pstmt.setString(2, MD5.getMd5(S_Password)); // Hash the provided password
        ResultSet rs = pstmt.executeQuery();
        if (rs.next()) {
            Student_ID = Integer.parseInt(rs.getString("Student_ID"));
            Student_First_Name = rs.getString("Student_First_Name");
            Student_Last_Name = rs.getString("Student_Last_Name");
            S_DOB = rs.getString("S_DOB");
            S_Tele_Phone = rs.getString("S_Tele_Phone");
            S_Address = rs.getString("S_Address");
            S_Talent = rs.getString("S_Talent");
            S_Gender = rs.getString("S_Gender");

            return true;
        } else {
            return false;
        }
    }

    public boolean update(Connection con) {

        return true;
    }
}

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package lab6.com;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class MarathonDAO {
    
    // Method to insert the Marathon object into the database
    public boolean register(Marathon marathonObj) {
        Connection conn = null;
        try {
            conn = Database.getConnection(); // Use your Database class!
            String sql = "INSERT INTO marathon (icno, name, category) VALUES (?, ?, ?)";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            
            pstmt.setString(1, marathonObj.getIcno());
            pstmt.setString(2, marathonObj.getName());
            pstmt.setString(3, marathonObj.getCategory());
            
            int rowsAffected = pstmt.executeUpdate();
            return rowsAffected > 0; // Returns true if successful
            
        } catch (Exception e) {
            return false;
        } finally {
            Database.closeConnection(conn); // Clean up connection
        }
    }
}
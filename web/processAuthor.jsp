<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>
    <h2>Processing Author Registration...</h2>
    
    <jsp:useBean id="author" class="lab6.com.Author" />
    <jsp:setProperty name="author" property="*" />

    <%
        try {
            // 2. Database Connection
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/csm3023_lab6", "root", "");
            
            // 3. PreparedStatement to prevent SQL Injection
            String sql = "INSERT INTO author (authno, name, address, city, state, zip) VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            
            // 4. Get values from Bean
            pstmt.setString(1, author.getAuthno());
            pstmt.setString(2, author.getName());
            pstmt.setString(3, author.getAddress());
            pstmt.setString(4, author.getCity());
            pstmt.setString(5, author.getState());
            pstmt.setString(6, author.getZip());
            
            // 5. Execute
            pstmt.executeUpdate();
            out.println("<h3 style='color:green;'>Success! Author " + author.getName() + " has been registered.</h3>");
            
            pstmt.close();
            conn.close();
            
        } catch (Exception e) {
            out.println("<h3 style='color:red;'>Database Error: " + e.getMessage() + "</h3>");
        }
    %>
    <br><a href="insertAuthor.jsp">Back to Form</a>
</body>
</html>
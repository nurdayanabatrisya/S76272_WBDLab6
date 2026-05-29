<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Lab 6 Task 1</title>
</head>
<body>
    <h1>Lab 6 Task 1: Sample Insertion records into MySQL through JSP's page</h1>
    <%
        try {
            // 1. Load the database driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            // 2. Establish connection (Check your password, leave "" if empty)
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/csm3023_lab6", "root", "");
            
            // 3. Create the SQL string
            String sql = "INSERT INTO FirstTable (message) VALUES ('Welcome to access MySQL database with JSP...!')";
            
            // 4. Execute the update
            Statement stmt = conn.createStatement();
            stmt.executeUpdate(sql);
            
            out.println("<p style='color:green;'>Record successfully inserted into FirstTable!</p>");
            
            // 5. Close connection
            conn.close();
            
        } catch (Exception e) {
            out.println("<p style='color:red;'>Error: " + e.getMessage() + "</p>");
        }
    %>
</body>
</html>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Lab 6 Task 4</title>
    <style>
        table { border-collapse: collapse; width: 60%; }
        th, td { border: 1px solid black; padding: 8px; text-align: left; }
        th { background-color: #f2f2f2; }
    </style>
</head>
<body>
    <h1>Lab 6 Task 4: Retrieving record via JSP Page</h1>
    
    <table>
        <tr>
            <th>Student ID</th>
            <th>Name</th>
            <th>Program</th>
        </tr>
        <%
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/csm3023_lab6", "root", "");
                
                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery("SELECT * FROM student");
                
                while(rs.next()) {
        %>
                    <tr>
                        <td><%= rs.getString("stuid") %></td>
                        <td><%= rs.getString("stuname") %></td>
                        <td><%= rs.getString("stuprogram") %></td>
                    </tr>
        <%
                }
                rs.close();
                stmt.close();
                conn.close();
                
            } catch(Exception e) {
                out.println("<tr><td colspan='3' style='color:red;'>Error: " + e.getMessage() + "</td></tr>");
            }
        %>
    </table>
    <br>
    <a href="insertStudent.jsp">Register Another Student</a>
</body>
</html>
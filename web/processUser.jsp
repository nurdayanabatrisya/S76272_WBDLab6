<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/csm3023_lab6", "root", "");
        
        String sql = "INSERT INTO userprofile (username, password, firstname, lastname) VALUES (?, ?, ?, ?)";
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, request.getParameter("username"));
        pstmt.setString(2, request.getParameter("password"));
        pstmt.setString(3, request.getParameter("firstname"));
        pstmt.setString(4, request.getParameter("lastname"));
        
        pstmt.executeUpdate();
        response.sendRedirect("login.jsp");
        
        pstmt.close(); conn.close();
    } catch(Exception e) {
        out.println("Error: " + e.getMessage());
    }
%>
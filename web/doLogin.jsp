<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String user = request.getParameter("username");
    String pass = request.getParameter("password");
    
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/csm3023_lab6", "root", "");
        
        String sql = "SELECT * FROM userprofile WHERE username=? AND password=?";
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, user);
        pstmt.setString(2, pass);
        
        ResultSet rs = pstmt.executeQuery();
        
        if (rs.next()) {
            // Validation succeeds: Store info in session and redirect
            session.setAttribute("sessionUser", rs.getString("username"));
            session.setAttribute("sessionFirst", rs.getString("firstname"));
            session.setAttribute("sessionLast", rs.getString("lastname"));
            response.sendRedirect("main.jsp");
        } else {
            // Fails: redirect to login with error
            response.sendRedirect("login.jsp?error=1");
        }
        
        rs.close(); pstmt.close(); conn.close();
    } catch(Exception e) {
        out.println("Error: " + e.getMessage());
    }
%>
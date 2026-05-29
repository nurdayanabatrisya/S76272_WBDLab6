<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="errorStudent.jsp"%>
<!DOCTYPE html>
<html>
<body>
    <h2>Processing Student Record...</h2>
    
    <jsp:useBean id="studentBean" class="lab6.com.Book" />
    <jsp:setProperty name="studentBean" property="*" />

    <%
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/csm3023_lab6", "root", "");
        
        String sql = "INSERT INTO student (stuid, stuname, stuprogram) VALUES (?, ?, ?)";
        PreparedStatement pstmt = conn.prepareStatement(sql);
        
        pstmt.setString(1, studentBean.getStuid());
        pstmt.setString(2, studentBean.getStuname());
        pstmt.setString(3, studentBean.getStuprogram());
        
        pstmt.executeUpdate();
        out.println("<h3 style='color:green;'>Success! Student has been registered.</h3>");
        
        pstmt.close();
        conn.close();
    %>
    <br><a href="queryStudent.jsp">View All Students</a>
</body>
</html>
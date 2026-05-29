<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>
    <%
        if(session.getAttribute("sessionUser") == null) {
            response.sendRedirect("login.jsp");
            return;
        }
    %>
    <h2>Welcome to the Main Page!</h2>
    <p><strong>Username:</strong> <%= session.getAttribute("sessionUser") %></p>
    <p><strong>First Name:</strong> <%= session.getAttribute("sessionFirst") %></p>
    <p><strong>Last Name:</strong> <%= session.getAttribute("sessionLast") %></p>
    
    <br>
    <a href="login.jsp">Logout</a>
</body>
</html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>
    <h2>System Login</h2>
    <% if(request.getParameter("error") != null) { %>
        <p style="color:red;">Invalid username or password..!</p>
    <% } %>
    <form action="doLogin.jsp" method="POST">
        Username: <input type="text" name="username" required><br><br>
        Password: <input type="password" name="password" required><br><br>
        <input type="submit" value="Login">
    </form>
</body>
</html>
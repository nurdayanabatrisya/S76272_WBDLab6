<%@page contentType="text/html" pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<body>
    <h2 style="color:red;">An Error Occurred!</h2>
    <p><strong>Error Message:</strong> <%= exception.getMessage() %></p>
    <br>
    <a href="insertStudent.jsp">Click here to try again</a>
</body>
</html>
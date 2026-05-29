<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head><title>Marathon Registration</title></head>
<body>
    <h2>Register for Marathon Event</h2>
    <form action="processMarathon.jsp" method="POST">
        IC Number: <input type="text" name="icno" required><br><br>
        Full Name: <input type="text" name="name" required><br><br>
        Category: 
        <select name="category">
            <option value="5KM Fun Run">5KM Fun Run</option>
            <option value="10KM Sprint">10KM Sprint</option>
            <option value="21KM Half Marathon">21KM Half Marathon</option>
        </select><br><br>
        <input type="submit" value="Register">
    </form>
</body>
</html>
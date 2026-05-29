<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>
    <h2>Register New Student</h2>
    <form action="processStudent.jsp" method="POST">
        <label>Student ID (e.g., UK12489):</label> 
        <input type="text" name="stuid" required><br><br>
        
        <label>Name:</label> 
        <input type="text" name="stuname" required><br><br>
        
        <label>Program:</label> 
        <select name="stuprogram">
            <option value="BSc with IM">BSc with IM</option>
            <option value="BSc Soft. Eng.">BSc Soft. Eng.</option>
            <option value="BSc in Robotics">BSc in Robotics</option>
        </select><br><br>
        
        <input type="submit" value="Submit">
        <input type="reset" value="Cancel">
    </form>
</body>
</html>
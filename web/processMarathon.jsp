<%@page import="lab6.com.MarathonDAO"%>
<%@page import="lab6.com.Marathon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>
    <h2>Processing Registration...</h2>
    
    <jsp:useBean id="runner" class="lab6.com.Marathon" />
    <jsp:setProperty name="runner" property="*" />

    <%
        // Send the packed Bean to the DAO for saving
        MarathonDAO dao = new MarathonDAO();
        boolean isSuccess = dao.register(runner);
        
        if(isSuccess) {
            out.println("<h3 style='color:green;'>Registration Successful! See you at the finish line, " + runner.getName() + ".</h3>");
        } else {
            out.println("<h3 style='color:red;'>Database Error! Registration Failed.</h3>");
        }
    %>
    <br><a href="registerMarathon.jsp">Register Another Participant</a>
</body>
</html>
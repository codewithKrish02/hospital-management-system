<%@include file="connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3DC//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
            
            String email=request.getParameter("Uname");           
            String pass=request.getParameter("pass");
            String repass=request.getParameter("repass");
           
            PreparedStatement ps=con.prepareStatement("UPDATE receptionregistration SET password=?,Retypepassword=? where EmailID=?");
            
            
           
            ps.setString(1, pass);
            ps.setString(2, repass);
            ps.setString(3, email);
            ps.executeUpdate();
            out.println("Updated successfully");
        %>
    </body>
</html>
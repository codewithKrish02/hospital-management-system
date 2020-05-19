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
            
            String email=request.getParameter("email");
            String bill=request.getParameter("bill"); 
            
            PreparedStatement ps=con.prepareStatement("UPDATE appointments SET Bill=? WHERE EmailId=?");
            
           
            ps.setString(2, email);
            ps.setString(1, bill);
            
            ps.executeUpdate();
            out.println("Updated successfully");
        %>
    </body>
</html>

<%@include file="connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
            String name=request.getParameter("name");
            String email=request.getParameter("email");
            String descrip=request.getParameter("description");
            
            PreparedStatement ps=con.prepareStatement("INSERT INTO contactus VALUES(?,?,?)");
            
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, descrip);
            
            ps.executeUpdate();
            out.println("inserted successfully");
        %>
    </body>
</html>

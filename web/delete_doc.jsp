<%@page import="java.sql.PreparedStatement"%>
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
            String fname=request.getParameter("Fname");
            String lname=request.getParameter("Lname");
            String email=request.getParameter("email");
            String phone=request.getParameter("MNum");
            String gender=request.getParameter("male");
            String dob=request.getParameter("date");
            String age=request.getParameter("age");
            String address=request.getParameter("addr");
            String dept=request.getParameter("dept");
            String state=request.getParameter("state");
            
            String pass=request.getParameter("pass");
            String repass=request.getParameter("repass");
            String photo=request.getParameter("photo");
            String signature=request.getParameter("sphoto");
            
            PreparedStatement ps=con.prepareStatement("DELETE FROM doctorregistration where EmailID=?");
            
            ps.setString(1, email);
            ps.executeUpdate();
            out.println("Deleted successfully");
        %>
    </body>
</html>
<%@include file="connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3DC//DTD HTML 4.01 Transitional//EN"Aq 
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
            String Fname=request.getParameter("Fname");
            String Lname=request.getParameter("Lname");
            String email=request.getParameter("email");
            String MNum=request.getParameter("MNum");
            String male=request.getParameter("male");
            String date=request.getParameter("date");
            String age=request.getParameter("age");
            String addr=request.getParameter("addr");
            String state=request.getParameter("state");
           
            String pass=request.getParameter("pass");
            String repass=request.getParameter("repass");
            String photo=request.getParameter("photo");
            String sphoto=request.getParameter("sphoto");
            PreparedStatement ps=con.prepareStatement("DELETE FROM receptionregistration where EmailId=?");
            
            ps.setString(1,email);
            ps.executeUpdate();
            out.println("Deleted successfully");
            %>
    </body>
</html>
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
            PreparedStatement ps=con.prepareStatement("INSERT INTO receptionregistration VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)");
            
            ps.setString(1,Fname);
            ps.setString(2,Lname);
            ps.setString(3,email);
            ps.setString(4,MNum);
            ps.setString(5,male);
            ps.setString(6,date);
            ps.setString(7,age);
            ps.setString(8,addr);
            ps.setString(9,state);
            
            ps.setString(10,pass);
            ps.setString(11,repass);
            ps.setString(12,photo);
            ps.setString(13,sphoto);
            ps.executeUpdate();
            out.println("inserted successfully");
            %>
    </body>
</html>
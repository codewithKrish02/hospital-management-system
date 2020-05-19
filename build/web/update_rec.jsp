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
            PreparedStatement ps=con.prepareStatement("UPDATE receptionregistration SET firstname=?,Lastname=?,Phonenumber=?,gender=?,Dateofbirth=?,age=?,address=?,State=?,password=?,Retypepassword=?,Photo=?,signature=? where EmailId=?");
            
            ps.setString(1,Fname);
            ps.setString(2,Lname);
            ps.setString(3,MNum);
            ps.setString(4,male);
            ps.setString(5,date);
            ps.setString(6,age);
            ps.setString(7,addr);
            ps.setString(8,state);
            
            ps.setString(9,pass);
            ps.setString(10,repass);
            ps.setString(11,photo);
            ps.setString(12,sphoto);
            ps.setString(13,email);
            ps.executeUpdate();
            out.println("updated successfully");
            %>
    </body>
</html>
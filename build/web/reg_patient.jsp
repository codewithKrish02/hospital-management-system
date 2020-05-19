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
            String occu=request.getParameter("occupation");
            String state=request.getParameter("state");
           
            String pass=request.getParameter("pass");
            String repass=request.getParameter("repass");
            String photo=request.getParameter("photo");
            String signature=request.getParameter("sphoto");
            
            PreparedStatement ps=con.prepareStatement("INSERT INTO patientregistration VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
            
            ps.setString(1, fname);
            ps.setString(2, lname);
            ps.setString(3, email);
            ps.setString(4, phone);
            ps.setString(5, gender);
            ps.setString(6, dob);
            ps.setString(7, age);
            ps.setString(9, occu);
            ps.setString(10, state);
            
            ps.setString(11, pass);
            ps.setString(14, repass);
            ps.setString(12, photo);
            ps.setString(13, signature);
            ps.setString(8, address);
            
            ps.executeUpdate();
            out.println("inserted successfully");
        %>
    </body>
</html>
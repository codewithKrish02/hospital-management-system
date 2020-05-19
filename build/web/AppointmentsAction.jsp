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
            String age=request.getParameter("age");
            String dateofapp=request.getParameter("date");
            String DoctorEmail=request.getParameter("Demail");
            String dept=request.getParameter("Ddept");
            String bill=request.getParameter("bill"); 
            String symp=request.getParameter("symp");
            String time=request.getParameter("time");
            
            PreparedStatement ps=con.prepareStatement("INSERT INTO appointments VALUES(?,?,?,?,?,?,?,?,?,?,?,?)");
            
            ps.setString(1, fname);
            ps.setString(2, lname);
            ps.setString(3, email);
            ps.setString(4, phone);
            ps.setString(5, gender);
            ps.setString(6, age);
            ps.setString(9, dateofapp);
            ps.setString(7, DoctorEmail);
            ps.setString(8, dept);
            ps.setString(10, bill);
            ps.setString(11, symp);
            ps.setString(12, time);
            ps.executeUpdate();
            out.println("inserted successfully");
        %>
    </body>
</html>
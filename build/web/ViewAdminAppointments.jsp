<%-- 
    Document   : viewDoctors
    Created on : May 3, 2019, 4:02:10 PM
    Author     : prath
--%>
<%@include file="connection.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>view Appointments</title>
    </head>
    <body style="background-color: rgb(243,254,255);">
<br>
<div align="center">
    <img src="logo.jpg" width="100" height="75" id="img1"/>
<font face="vijaya" size=30px color="black">HOSPITAL MGT-PATIENT MANAGEMENT SYSTEM</font>
</div>
    </br>
    
<%@include file="AdminProfileCSS.html" %>
        
    <center>
        <h2>View Appointments</h2>
        <table border="1">
            <tr>
                <td>FirstName</td>
                <td>LastName</td>
                <td>Email</td>
                <td>Phone Number</td>
                <td>Gender</td>
                <td>Age</td>
                <td>Date of Appointment</td>
                <td>Doctor EmailId</td>
                <td>Doctor Department</td>
                <td>Bill</td>
                                
            </tr>
            <tbody>
                <%
                    
                    String k=(String)session.getAttribute("id");            
         
                    String p="pending";
                    Statement st=con.createStatement();
                    ResultSet rs=st.executeQuery("select * from appointments");
                   
                    while(rs.next())
                    {
                    %>
                    <tr>
                    <td><%=rs.getString(1)%></td>
                    <td><%=rs.getString(2)%></td>
                    <td><%=rs.getString(3)%></td>
                    <td><%=rs.getString(4)%></td>
                    <td><%=rs.getString(5)%></td>
                    <td><%=rs.getString(6)%></td>
                    <td><%=rs.getString(9)%></td>
                    <td><%=rs.getString(7)%></td>
                    <td><%=rs.getString(8)%></td>
                    <td><%=rs.getString(10)%></td>
                    </tr>
                    <% } %>
            </tbody>
        </table>
    </center>
    </body>
</html>

<%-- 
    Document   : viewDoctors
    Created on : May 3, 2019, 4:02:10 PM
    Author     : prath
--%>
<%@page import="java.sql.Statement"%>
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
    
<%@include file="DoctorProfileCSS.html" %>

        
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
                <td>Prescription</td>
                                
            </tr>
            <tbody>
                <%
                    
                    String k=(String)session.getAttribute("id");            
         
                    String p="pending";
                    Statement st=con.createStatement();
                    ResultSet rs=st.executeQuery("select FirstName,LastName,EmailId,Phonenumber,Gender,Age,DateofApp from appointments where Doctor_email='"+k+"'");
                   
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
                    <td><%=rs.getString(7)%></td>
                    <td><a href="DoctorPrescription1.jsp?email=<%=rs.getString(3)%>">Add Prescription</a>
                    </tr>
                    <% } %>
            </tbody>
        </table>
                <h2>View Prescription</h2>
        <table border="1">
            <tr>
                <td>FirstName</td>
                <td>LastName</td>
                <td>Email</td>
                <td>Phone Number</td>
                <td>Gender</td>
                <td>Age</td>
                <td>Date of Appointment</td>
                <td>Doctor Prescription</td>
                <td>Doctor Department</td>
                
                                
            </tr>
            <tbody>
                <%
                    ResultSet rs1=st.executeQuery("select * from doctorprescription order by EmailID");
                   
                    while(rs1.next())
                    {
                    %>
                    <tr>
                    <td><%=rs1.getString(1)%></td>
                    <td><%=rs1.getString(2)%></td>
                    <td><%=rs1.getString(3)%></td>
                    <td><%=rs1.getString(4)%></td>
                    <td><%=rs1.getString(5)%></td>
                    <td><%=rs1.getString(6)%></td>
                    <td><%=rs1.getString(7)%></td>
                    <td><%=rs1.getString(8)%></td>
                    <td><%=rs1.getString(9)%></td>
                    
                    </tr>
                    <% } %>
            </tbody>
        </table>
    </center>
    </body>
</html>

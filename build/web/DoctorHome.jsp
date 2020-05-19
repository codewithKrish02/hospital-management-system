<%-- 
    Document   : DoctorHome
    Created on : May 10, 2019, 10:47:18 AM
    Author     : prath
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DOCTOR HOME</title>
    </head>
    <body style="background-color: rgb(243,254,255);">
<br>
<div align="center">
    <img src="logo.jpg" width="100" height="75" id="img1"/>
<font face="vijaya" size=30px color="black">HOSPITAL MGT-PATIENT MANAGEMENT SYSTEM</font>
</div>
    </br>
    
<%@include file="DoctorProfileCSS.html" %>
<%         
         String k=(String)session.getAttribute("id");            
                    %>
   

    </body>
</html>

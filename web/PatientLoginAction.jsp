<%@include file="connection.jsp"%>
<%@page import="java.sql.*"%>
 <%@page import="java.io.*"%>
 <%@page import="javax.servlet.http.*"%>
 <%@page import="javax.servlet.*"%>
 <%@page import="java.sql.ResultSet"%>
 <%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <%
          Statement st= con.createStatement();
         String id=request.getParameter("Uname");
         String pswd=request.getParameter("pass");
         session.setAttribute("id",id);
         
         String k=(String)session.getAttribute("id");
         
         ResultSet rs=st.executeQuery("select EmailId,Password from patientregistration where EmailID='"+id+"'");
         if(rs.next())
         {
             String u=rs.getString(1);
             String p=rs.getString(2);
      
             if(p.equals(pswd)&&u.equals(id))
             {
                 %>
                 <jsp:forward page="PatientHome.jsp"/>
                 <%
             }
             else
             {
                 %>
                 <jsp:forward page="error.jsp"/>;
                 <%
             }
         }
         else
         {
             %>
             <jsp:forward page="error2.jsp"/>;
             <%
         }
             %>
    </body>
</html>

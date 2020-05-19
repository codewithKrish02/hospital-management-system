<%-- 
    Document   : DoctorHome
    Created on : May 10, 2019, 10:47:18 AM
    Author     : prath
--%>
<%@page import="java.sql.Statement"%>
<%@include file="connection.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PATIENT APPOINTMENTS</title> <style>
        *{
            margin: 0;
            padding: 0;
        }
        h1{
            text-align: center;
            padding: 20px;
        }
        h2{
            text-align: center;
            padding: 20px;
        }
        .register{
            background: #2d85b0;
            width: 500px;
            margin: 0px 0px 0px 410px;
            color: white;
            font-size: 18px;
            padding: 20px;
            border-radius: 10px;
        }
        #register{
            margin-left: 80px;
        }
        label{
        color: white;
        font-family: sans-serif; 
        font-size: 18px;
        font-style: italic;
        }
        #name{
            width: 300px;
            border: none;
            border-radius: 3px;
            outline: 0;
            padding: 7px;
        }
        #num{
            width: 300px;
            padding: 7px;
            border: none;
            border-radius: 3px;
            outline: 0;
        }
        #dept{
            width: 300px;
            padding: 7px;
            border: none;
            border-radius: 3px;
            outline: 0;
        }
        #ph{
            width: 300px;
            padding: 7px;
            border: none;
            border-radius: 3px;
            outline: 0;
        }
        #state{
            width: 300px;
            padding: 7px;
            border: none;
            border-radius: 3px;
            outline: 0;
        }
        #sub{
            width: 120px;
            padding: 7px;
            font-size: 16px;
            font-family: sans-serif;
            font-style: italic;
            font-weight: 600;
            border: none;
            border-radius: 3px;
        }
        #app{
            width: 150px;
            padding: 7px;
            font-size: 16px;
            font-family: sans-serif;
            font-style: italic;
            font-weight: 600;
            border: none;
            border-radius: 3px;
            
        }
        #can{
                width: 120px;
            padding: 7px;
            font-size: 16px;
            font-family: sans-serif;
            font-style: italic;
            font-weight: 600;
            border: none;
            border-radius: 3px;
        
        }
    </style>

    </head>
    <body style="background-color: rgb(243,254,255);">
<br>
<div align="center">
    <img src="logo.jpg" width="100" height="75" id="img1"/>
<font face="vijaya" size=30px color="black">HOSPITAL MGT-PATIENT MANAGEMENT SYSTEM</font>
</div>
    </br>
    
<%@include file="ReceptionProfileCSS.html" %>
<%         
         String k=(String)session.getAttribute("id");            
                    %>
   <div align="center">
       
        <h2>Doctors List</h2> 
   
   </div>
   <center>
        <table border="1">
            <tr>
                <td>FirstName</td>
                <td>LastName</td>
                <td>Email</td>
                <td>Department</td>             
            <tbody>
                <%
                    String p="pending";
                    Statement st=con.createStatement();
                    ResultSet rs=st.executeQuery("select * from doctorregistration");
                    while(rs.next())
                    {
                    %>
                    <tr>
                    <td><%=rs.getString(1)%></td>
                    <td><%=rs.getString(2)%></td>
                    <td><%=rs.getString(3)%></td>
                    <td><%=rs.getString(8)%></td>
                    </tr>
                    <% } %>
            </tbody>
        </table>
            <br><br>
   <a href="ReceptionViewAppointments.jsp">
           <button id="app">View Appointments</button>
       </a>   
    </center>
    <br><br>
    <div class="register">
<h2>Make Appointments</h2>
<form id="register" method="post" action="ReceptionAppointmentsAction.jsp">
<label>FirstName</label><br>
<input type="text" name="Fname" id="name" placeholder="Enter First name" required=""><br><br>
<label>LastName</label><br>
<input type="text" name="Lname" id="name" placeholder="Enter Last name" required=""><br><br>
<label>Email Id</label><br>
<input type="text" name="email" id="name" placeholder="Enter email"><br><br>
<label>Phone Number</label><br>
<input type="number" name="MNum" id="ph" placeholder="Enter mobile number" required=""><br><br>
<label>Gender</label><br><br>
<select id="dept" required="" name="male">
    <option>select</option>
    <option>Male</option>
    <option>Female</option>
    <option>Others</option>
</select><br><br>
<label>Age</label><br>
<input type="text" name="age" id="name" required="" placeholder="Enter Age"/><br><br>
<label>Date of Appointment</label><br>
<input type="date" name="date" id="name" placeholder="Date of Appointment"/><br><br>
<label>Time</label><br>
<select id="dept" required="" name="time">
    <option>select</option>
    <option>10:00AM TO 12:00PM</option>
    <option>1:00PM TO 4:00PM</option>
    <option>4:00PM TO 6:00PM</option>
</select><br><br>

<label>Symptoms</label><br>
<input type="text" name="symp" id="name" required="" placeholder="Enter symptoms"/><br><br>
<label>Doctor Email Id</label><br>
<input type="text" name="Demail" id="name" placeholder="Enter email" required="@"><br><br>
<label>Doctor Department</label><br>
<input type="text" name="Ddept" id="name" placeholder="Enter department" required="@"><br><br>
<label>Bill</label><br>
<select id="dept" required="" name="bill" >
    <option>Paid</option>
    <option>Not Paid</option>
</select><br><br>


<input type="submit" value="Submit" id="sub" required="">
<input type="reset" value="Cancel" id="can" required="">

</form>
</div>
                

    </body>
</html>

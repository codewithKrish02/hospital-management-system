<%-- 
    Document   : DoctorPrescription
    Created on : May 12, 2019, 2:40:58 PM
    Author     : prath
--%>
<%@include file="connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <style>
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
    <body>
       
        <body style="background-color: rgb(243,254,255);">
<br>
<div align="center">
    <img src="logo.jpg" width="100" height="75" id="img1"/>
<font face="vijaya" size=30px color="black">HOSPITAL MGT-PATIENT MANAGEMENT SYSTEM</font>
</div>
    </br>
    
<%@include file="DoctorProfileCSS.html" %>

    <br><br>
    <div class="register">
<h2>Add Prescription</h2>
<form id="register" method="post" action="DoctorPrescriptionAction1.jsp">
    <%         
         String k=(String)session.getAttribute("id"); 
       
       String p=request.getParameter("email");
       Statement st=con.createStatement();
                    ResultSet rs=st.executeQuery("select FirstName,LastName,EmailId,Phonenumber,Gender,Age,DateofApp,Doctor_dept from appointments where EmailId='"+p+"'");
                    while(rs.next()){
                    
                    %>
<label>FirstName</label><br>
<input type="text" name="Fname" id="name" placeholder="Enter First name" required="" value="<%=rs.getString(1)%>"><br><br>
<label>LastName</label><br>
<input type="text" name="Lname" id="name" placeholder="Enter Last name" required="" value="<%=rs.getString(2)%>"><br><br>
<label>Email Id</label><br>
<input type="text" name="email" id="name" placeholder="Enter email" required="@" value="<%=rs.getString(3)%>"><br><br>
<label>Phone Number</label><br>
<input type="number" name="MNum" id="ph" placeholder="Enter mobile number" required="" value="<%=rs.getString(4)%>"><br><br>
<label>Gender</label><br>
<select id="dept" required="" name="male" value="<%=rs.getString(5)%>">
    <option>Male</option>
    <option>Female</option>
    <option>Others</option>
</select><br><br>
<label>Age</label><br>
<input type="text" name="age" id="name" required="" placeholder="Enter Age" value="<%=rs.getString(6)%>"/><br><br>
<label>Date of Appointment</label><br>
<input type="date" name="date" id="name" placeholder="Date of Appointment" value="<%=rs.getString(7)%>"/><br><br>
<label>Department</label><br>
<select id="dept" required="" name="dept" value="<%=rs.getString(8)%>">
<option>Neurology<option>
<option>Traumatology<option>
<option>Dentistry<option>
<option>Cardiology<option>
<option>E.N.T<option>
<option>Pulmonary<option>
<option>Pediatrics<option>
</select><br><br>

<label>Prescription</label><br>
<textarea cols=20 rows=10 placeholder="Enter Prescription" name="addr" id="name" required=""></textarea><br><br>


<input type="submit" value="Submit" id="sub" required="">
<input type="reset" value="Cancel" id="can" required="">

</form>
<%
                    }
%>
</div>
                

    </body>
</html>

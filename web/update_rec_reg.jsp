<%@page import="java.sql.ResultSet"%>
<%@include file="connection.jsp" %>
<%@page import="java.sql.Statement"%>
<html>
<head>
<title>
Recepition register from
</title>
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
    <script>
        function checkpassword()
        {
            var p=f.pass.value;
            var cp=f.repass.value;
            
            if(p!=cp)
                {
                    msg=(p==cp)?"Both are Same":"mismatch passwords";
                    alert(msg)
                }
        }
    </script>
</head>
<body style="background-color: rgb(243,254,255);">
    </br>
<div align="center">
    <img src="logo.jpg" width="100" height="75" id="img1"/>
<font face="vijaya" size=30px color="black">HOSPITAL MGT-PATIENT MANAGEMENT SYSTEM</font>
</div>
    </br>
    <%@include file="ReceptionProfileCSS.html" %>
    <%         
         String k=(String)session.getAttribute("id");            
                    %>

<h1 align="center">UPDATE RECEPTIONIST REGISTRATION FORM</h1>
<div class="register">
<h2>Register here</h2>
<form id="register" method="post" name="f" action="update_rec.jsp">
     <% 
       String p=request.getParameter("email");
       Statement st=con.createStatement();
                    ResultSet rs=st.executeQuery("select * from receptionregistration where EmailId='"+p+"'");
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
    <option>Select</option>
    <option>Male</option>
    <option>Female</option>
    <option>Others</option>
</select><br><br>
<label>Date Of Birth</label><br>
<input type="date" name="date" id="name" placeholder="Enter date of birth" required="" value="<%=rs.getString(6)%>"><br><br>
<label>Age</label><br>
<input type="text" name="age" id="name" required="" placeholder="Enter Age" value="<%=rs.getString(7)%>"/><br><br>
<label>Address</label><br>
<input type="text" placeholder="Enter address" name="addr" id="name" required="" value="<%=rs.getString(8)%>"><br><br>
<label>State</label><br>
<select id="state" name="state" value="<%=rs.getString(9)%>">
    <option>Select</option>
<option>Andhra pradesh</option>
<option>Arunachal pradesh</option>
<option>Assam</option>
<option>Bihar</option>
<option>Chhattisgarh</option>
<option>Goa</option>
<option>Gujarath</option>
<option>Haryana</option>
<option>Himachal pradesh</option>
<option>Jammu and kashmir</option>
<option>Jharkhand</option>
<option>Karnataka</option>
<option>Kerala</option>
<option>Madhya pradesh</option>
<option>Maharashtra</option>
<option>Manipur</option>
<option>Meghalaya</option>
<option>Mizoram</option>
<option>Nagaland</option>
<option>Odisha</option>
<option>Punjab</option>
<option>Rajasthan</option>
<option>Sikkim</option>
<option>Tamil nadu</option>
<option>Telangana</option>
<option>Tripura</option>
<option>Uttar pradesh</option>
<option>Uttarkhand</option>
<option>West bengal</option>
</select><br><br>
<label>Password</label><br>
<input type="password" name="pass" id="name" placeholder="Enter password" required="" value="<%=rs.getString(10)%>"><br><br>
<label>Re-type Password</label><br>
<input type="password" name="repass" id="name" placeholder="Re-Enter password" value="<%=rs.getString(11)%>"><br><br>
<label>Photo</label><br>
<input type="file" name="photo" id="name" required="" value="<%=rs.getString(12)%>"><br><br>
<label>Signature</label><br>
<input type="file" name="sphoto" id="name" required="" value="<%=rs.getString(13)%>"><br><br>
<input type="checkbox" id="check" required=""/><label>  I Accept Terms and Conditions</label><br><br>
<input type="submit" value="Submit" id="sub" required="">
<input type="reset" value="Cancel" id="can" required="">

</form>
<% }
                    %>
</div>
</body>
</html>

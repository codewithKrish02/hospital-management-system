<%@include file="connection.jsp" %>
<html>
    <head>
        <title>PATIENT APPOINTMENTS</title>
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
    <body style="background-color: rgb(243,254,255);">
        <br>
        <div align="center">
            <img src="logo.jpg" width="100" height="75" id="img1"/>
            <font face="vijaya" size="30px" color="black">HOSPITAL MGT-PATIENT MANAGEMENT SYSTEM</font>
        </div>
        <br>
        <%@include file="ReceptionProfileCSS.html" %><br><br>
        <div class="register">
            <h2>Update Bill</h2>
            <form id="register" method="post" action="UpdateReceptionAppointmentsAction.jsp">
                <%
                    String p=request.getParameter("email");
                    Statement st=con.createStatement();
                    ResultSet rs=st.executeQuery("select * from appointments where EmailID='"+p+"'");
                    while(rs.next()){
                        
                   
                %>
                <label>Email Id</label><br>
                <input type="text" name="email" id="name" placeholder="Enter email" required="@" value="<%=rs.getString(3)%>"><br><br>
                <label>Bill</label><br>
                <select id="dept" required="" name="bill" value="<%=rs.getString(10)%>"><br><br>
                <option>Paid</option>
                <option>Not Paid</option>
                </select><br><br>
                
                <input type="submit" value="Submit" id="sub" required="">
                <input type="reset" value="Cancel" id="can" required="">
            </form>
                <%
                    }
                %>
        </div>
    </body>
</html>
    
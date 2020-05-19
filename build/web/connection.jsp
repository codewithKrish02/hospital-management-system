<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
         
    <body>
        <%@page import="java.sql.*"%>
        <%@page import="java.io.*"%>
        <%! Connection con;%>
        <% Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hpms","root","1432");
        out.println("Connected");
        %>
    </body>
</html>
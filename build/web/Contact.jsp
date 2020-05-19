<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CONTACT US</title>
         <style>
        .sicon{width:800px;
margin:0 auto;
}
.sicon ul {
text-align:right;
}
.sicon ul li {
list-style-type:none;
display:inline;
}
.sicon ul li a{
opacity:0.7;
padding:5px 10px 5px 10px;
}
.sicon ul li a:hover{
opacity:1;
}
.contact{
    width: 360px;
    float: left;
    margin-right: 20px;
}
.contactpic{
    width: 360px;
    float: left;
    margin-right: 500px;
}
    </style>
    </head>
    <body  style="background-color: rgb(243,254,255);">
        <br>
    
<div align="center">
    <img src="logo.jpg" width="100" height="75" id="img1"/>
<font face="vijaya" size=30px color="black">HOSPITAL MGT-PATIENT MANAGEMENT SYSTEM</font>
</div>
    <%@include file="CSS3 Menu.html" %>
    <br>
    <br>
    <div class="contactpic">
        <img src="contact.PNG"/>
        </div>
    <div class="contact" align="center">
        <form action="contactdb.jsp" method="post">
        <h1>Contact Us</h1>
        <input type="text" placeholder="Enter Name" size="50" name="name" required=""/><br><br>
        <input type="text" placeholder="Enter Email" size="50" name="email" required=""/><br><br>
        <textarea cols="51" rows="10" Placeholder="Enter Description" name="description" required=""></textarea><br><br>
        <input type="submit" value="submit"/>
        <input type="reset" value="cancel"><br><br>
        </form>   
        </div>
    <div class="sicon">
<ul>
<li><a href="https://www.facebook.com/"><img src="si1.png" /></a></li><li><a href="https://www.linkedin.com/uas/login"><img src="si2.png" /></a></li><li><a href="https://twitter.com/login/"><img src="si3.png" /></a></li><li><a href="https://plus.google.com"><img src="si4.png" /></a></li>
</ul></div>
    </body>
</html>

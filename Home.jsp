<%-- 
    Document   : Home
    Created on : Sep 2, 2019, 11:23:20 PM
    Author     : mahakaal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Welcome to AICTSL!</h1>
    </body>
</html>
<% Object email=session.getAttribute("email");
             Object fname=session.getAttribute("fname");
             Object lname=session.getAttribute("lname");
            // Object mobile=session.getAttribute("mob");
             if(email!=null){
            out.println("<h1>Email--</h1>"+email);
            out.println("<h1>Name--</h1>"+fname+" "+lname+"<br>");
            out.println("----------------------------------------------------");
           // out.println("<h1>your no is</h>"+mobile);
            //out.print("<a href='LogOut'>LOGOUT</a>");
             }
             else
                 response.sendRedirect("index.html");
         %>

<form action="CalculateFare.jsp">
<label>from location</label>
	<input type="text" name="floc"><br>
	<label>To location</label>
	<input type="text" name="tloc"><br>
        <input type="submit" value="calculate fare">
        <input type="reset" value="Reset">
            
</form>

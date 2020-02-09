<%-- 
    Document   : charge
    Created on : Sep 3, 2019, 12:28:32 PM
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
        <h1>Hello World!</h1>
    </body>
</html>
<% 
     Object distance=session.getAttribute("dis");
             Object charge=session.getAttribute("amt");
if(distance!=null){
            out.println("<h1>Distance--</h1>"+distance);
            out.println("<h1>Travelling chargre--</h1>"+charge);
}
             else
                 out.print("hiiiiii");
                // response.sendRedirect("index.html");

  

%>

<a href="StringIntoDB.jsp">click here to generate qr code</a>

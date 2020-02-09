<%-- 
    Document   : FetchString
    Created on : Jan 21, 2020, 9:41:53 PM
    Author     : mahakaal
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.onlineTicket.pac1.GetConnection"%>
<%@page import="java.sql.Connection"%>
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
   Object email=session.getAttribute("email");
     String Ema1=email.toString();
    if(Ema1!=null){
           try
           {
               Connection con=GetConnection.getConnection();
               String sql="select * from QRstring where email=?";
                   out.print(Ema1);
  
               PreparedStatement ps= con.prepareStatement(sql);
               ps.setString(1,Ema1);
           
               
               ResultSet rs= ps.executeQuery();
               if(rs.next())
               {  
                   String Random=rs.getString(2);
                  session.setAttribute("random",Random);
                   response.sendRedirect("FinalQr.jsp");
                  response.sendRedirect("QRCodeServlet");
               }
               else
                  // out.println("hellooo");
                    response.sendRedirect("you.html");
                 }
           catch(Exception e)
           {
               
           }
  }
  
    

%>

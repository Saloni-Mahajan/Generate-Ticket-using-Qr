<%-- 
    Document   : StringIntoDB
    Created on : Jan 15, 2020, 3:34:25 PM
    Author     : mahakaal
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.onlineTicket.pac1.GetConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.*"%>

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

<%  Object email=session.getAttribute("email");
    String Ema=email.toString();
   String key = UUID.randomUUID().toString();
   //out.println(Ema);
   
           if(Ema!=null){
           try
           { 
               Connection con=GetConnection.getConnection();
              
                String sql="insert into QRstring values(?,?)";
             //  
              PreparedStatement ps= con.prepareStatement(sql);
              ps.setString(1,Ema); 
              ps.setString(2,key);
              //out.print("me");
               if(ps.executeUpdate()>0){
                  response.sendRedirect("FetchString.jsp");
              
           }
                     }
           catch(Exception e)
           {
               
           }
           } 
            %>

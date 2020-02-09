<%-- 
    Document   : Logintask
    Created on : Sep 2, 2019, 10:49:06 PM
    Author     : mahakaal
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.onlineTicket.pac1.GetConnection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>after login Page</title>
    </head>
    <body>
        <h1>Hello!</h1>
    </body>
</html>
<%String email=request.getParameter("email");
            String password=request.getParameter("pass");
            if(email!=null){
           try
           {
               Connection con=GetConnection.getConnection();
               String sql="select * from register where email=? and password=?";
               
               PreparedStatement ps= con.prepareStatement(sql);
               ps.setString(1,email);
               ps.setString(2,password);
               
               ResultSet rs= ps.executeQuery();
               if(rs.next())
               {  // String mobile=rs.getString(5);
                   String fname=rs.getString(1);
                   String lname=rs.getString(2);
                  
                   session.setAttribute("email",email);
                   session.setAttribute("fname",fname);
                   session.setAttribute("lname",lname);
                  // session.setAttribute("mob",mobile);
                    response.sendRedirect("Home.jsp");
                    response.sendRedirect("StringIntoDB.jsp");
                    response.sendRedirect("FetchString.jsp");
  
                }
                else
                  // out.println("hellooo");
                    response.sendRedirect("Logintask.jsp");
             }
           catch(Exception e)
           {
               
           }
            }%>

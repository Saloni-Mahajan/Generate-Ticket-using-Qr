<%-- 
    Document   : CalculateFare
    Created on : Sep 2, 2019, 11:47:32 PM
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
        <h1>your fare is---</h1>
    </body>
</html>

<%          out.print("hi");
    String from=request.getParameter("floc");
            String to=request.getParameter("tloc");
            if(from!=null){
           try
           {
               Connection con=GetConnection.getConnection();
            //   String sql="select * from travelcharge where From=? and To=?";
               
               PreparedStatement ps= con.prepareStatement("select * from travelcharge where loc_from=? and loc_to=?");
               ps.setString(1,from);
               ps.setString(2,to);
               
               ResultSet rs= ps.executeQuery();
                 out.println(rs);
               if(rs.next())
               {  // String mobile=rs.getString(5);
                   String distance=rs.getString(3);
                   String charge=rs.getString(4);
                
                   session.setAttribute("dis",distance);
                   session.setAttribute("amt",charge);
                  // session.setAttribute("lname",lname);
                  // session.setAttribute("mob",mobile);
                  //out.print("sona");
                    response.sendRedirect("charge.jsp");
            
                }
                else
               {
                // out.println("hellooo");
                    response.sendRedirect("Logintask.jsp");
               }
                   
               
              
            
               
           }
           catch(Exception e)
           {
               
           }
            }  


%>


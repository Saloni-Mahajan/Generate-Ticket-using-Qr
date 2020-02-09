<%-- 
    Document   : InsertDb
    Created on : Sep 2, 2019, 11:53:43 PM
    Author     : mahakaal
--%>

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
                  <center>
   <h2>fill</h2>
 <form action="InsertDb.jsp">
        <label>From</label>
	<input type="text" name="froml"><br>
	<label>to</label>
	<input type="text" name="tol"><br>
        <label>Distance</label>
        <input type="text" name="dis"><br>
	<label>Charge</label>
	<input type="text" name ="amt"><br>
	
    
	<input type="submit" value="ok">
 </form>
 </center>

    </body>
</html>
<%   String from=request.getParameter("froml");
            String to=request.getParameter("tol");
            String distance=request.getParameter("dis");
           String charge=request.getParameter("amt");
           
           
           if(from!=null){
            System.out.println("");
           try
           {
               Connection con=GetConnection.getConnection();
               
           
                PreparedStatement ps=con.prepareStatement("insert into travelcharge value(?,?,?,?)");
                
               
                ps.setString(1,from);
                ps.setString(2,to);
                ps.setString(3,distance);
                ps.setString(4,charge);
                                
                if(ps.executeUpdate()>0)
            
                    response.sendRedirect("Home.jsp");
                    //response.sendRedirect("InsertDb.jsp");
               
                
                
               
           }
           catch(Exception e)
           {
           // out.print(e.toString());
           }
           }%>


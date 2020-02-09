<%-- 
    Document   : Registertask
    Created on : Sep 2, 2019, 10:51:56 PM
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
   <h2>Register yourself</h2>
 <form action="Registertask.jsp">
        <label>First Name</label>
	<input type="text" name="fname"><br>
	<label>Last name</label>
	<input type="text" name="lname"><br>
        <label>mobile no</label>
        <input type="text" name="mob"><br>
	<label>Email</label>
	<input type="email" name ="email"><br>
	<label>Password</label>
	<input type="password" name="pass"><br>
        <label>Confirm password</label>
         <input type="password" name="cpass"><br>
    
	<input type="submit" value="Register Me">
 </form>
 </center>
    </body>
</html>
<%   String fname=request.getParameter("fname");
            String lname=request.getParameter("lname");
            String email=request.getParameter("email");
           String password=request.getParameter("pass");
           String mobile=request.getParameter("mob");
           
           if(fname!=null){
            System.out.println("");
           try
           {
               Connection con=GetConnection.getConnection();
               
           
                PreparedStatement ps=con.prepareStatement("insert into register value(?,?,?,?,?)");
                
               
                ps.setString(1,fname);
                ps.setString(2,lname);
                ps.setString(3,mobile);
                ps.setString(4,email);
                ps.setString(5,password);
                
                if(ps.executeUpdate()>0)
            
                    
                    response.sendRedirect("Logintask.jsp");
               
                
                
               
           }
           catch(Exception e)
           {
           // out.print(e.toString());
           }
           }%>

<%-- 
    Document   : grdisplay
    Created on : 03-Feb-2023, 12:09:48 am
    Author     : Tanya
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All Clubs</title>
         <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
  <style>
      body{
            background-image: url("https://getmyuni.azureedge.net/college-image/big/mit-academy-of-engineering-mitae-pune.jpg");
            background-repeat: no-repeat;
            background-size: 100%;
        }
        
  </style>
    </head>
    <body>
        <h1 align="center">All Club Records</h1>
        <br>
        <table align="center" border="10" width="100" style="width:70%" class="table table-hover table-dark">
        <thead>
           <tr>
               <th>CLUB NAME</th>
               <th>CO-ORDINATOR</th>
               <th>DOMAIN</th>
               <th>OTHER</th>
               <th>E-MAIL</th>
               
           </tr>
           </thead>
           <tbody>
           <%
           try{
Class.forName("oracle.jdbc.driver.OracleDriver");  
  
//step2 create  the connection object  
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root@123");  
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("SELECT cname, ccdname, domain, other, email FROM clubregister");
while(rs.next())
{
      
   %>
           
           <tr>
        <td><%=rs.getString(1)%></td>
       <td><%=rs.getString(2)%></td>
       <td><%=rs.getString(3)%></td>
       <td><%=rs.getString(4)%></td>
       <td><%=rs.getString(5)%></td>
       
           </tr>
             
   <%
           }
}
           catch(Exception e)
        {
            System.out.println(e.getMessage());
        }
           
           %>
           </tbody>
</table>
           
           <h3><a href="start"><button type="button" class="btn btn-primary">Back</button></a></h3>
           
           
   
  
    </body>
</html>



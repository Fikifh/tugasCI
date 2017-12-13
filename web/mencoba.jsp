<%-- 
    Document   : mencoba
    Created on : Dec 10, 2017, 9:54:46 PM
    Author     : syah
--%>

<%@page import="java.sql.Date"%>
<%@ page import = "java.io.*,java.util.*, javax.servlet.*" %>

<html>
   <head>
      <title>Display Current Date & Time</title>
   </head>
   
   <body>
      <center>
         <h1>Display Current Date & Time</h1>
      </center>
      <%
         String tgl = new java.util.Date().toString();         
         out.print( "<h2 align = \"center\">" +tgl+"</h2>");
      %>
   </body>
</html>
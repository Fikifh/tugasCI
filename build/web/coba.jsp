<%-- 
    Document   : coba
    Created on : Dec 4, 2017, 10:22:51 AM
    Author     : syah
--%>

<%@page import="Controller.TheConnection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
       String nama=request.getParameter("nama");
       String sql="SELECT * FROM siswa where nama_depan=";
       TheConnection DB = new TheConnection();
       DB.execute(sql);
       out.print("berhasil"+nama);
       
       %>
       <form method="post" action="Controller/AdminEditSiswa">
           <input type="password">
           <button class="btn btn-primary">submit</button>
       </form>
    </body>
</html>

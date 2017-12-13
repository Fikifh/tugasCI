<%-- 
    Document   : koneksi
    Created on : Dec 4, 2017, 12:03:32 PM
    Author     : syah
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
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
            String url =    "jdbc:postgresql://localhost:5432/sias";
            String user = "postgres";
            String password = "root";
            Class.forName("org.postgresql.Driver");
            Connection konek = DriverManager.getConnection(url, user, password);
            Statement st = konek.createStatement();
            ResultSet rs;
            %>
    </body>
</html>

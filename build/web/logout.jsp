<%-- 
    Document   : logout
    Created on : Dec 4, 2017, 1:53:25 PM
    Author     : syah
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Log oute</title>
    </head>
    <body>
        <%
        session.invalidate();
        response.sendRedirect("index.jsp");
        %>
    </body>
</html>

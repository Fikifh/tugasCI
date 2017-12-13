<%-- 
    Document   : editBiodata
    Created on : Dec 4, 2017, 2:38:53 PM
    Author     : syah
--%>

<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@page import="Controller.TheConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="Controller.insertData"%>
<%@page import="java.sql.Statement"%>
<%@page import="Controller.Login"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>           
        <%
        try{
            
            String url =    "jdbc:postgresql://localhost:5432/sias";
            String user = "postgres";
            String password = "root";
            Class.forName("org.postgresql.Driver");
            Connection konek = DriverManager.getConnection(url, user, password);
            String namadepan = request.getParameter("nama_depan");
            String namatengah = request.getParameter("nama_tengah");
            String namabelakang = request.getParameter("nama_belakang");
            String jeniskelamin = request.getParameter("jk");
            String alamat = request.getParameter("alamat");
            String detail = request.getParameter("detail");
            String email = request.getParameter("email");
            String nohp = request.getParameter("no_hp");
            String tanggallahir = request.getParameter("tanggal_lahir");
            Login login = new Login();
            String userSession=(String) session.getAttribute("username");
            String ns = request.getParameter("userSes");            
            String sql = "UPDATE siswa SET gender='"+jeniskelamin+"',nama_depan='"+namadepan+"',nama_tengah='"+namatengah+"',nama_belakang='"+namabelakang+"',tanggal_lahir='"+tanggallahir+"',detail_siswa='"+detail+"',no_hp='"+nohp+"',email='"+email+"',alamat='"+alamat+"' WHERE nis="+userSession+"";
            Statement st = konek.createStatement();
            int status = st.executeUpdate(sql);
            response.sendRedirect("Biodata.jsp");
 %><%
    }catch(Exception e){
       out.print(e);          
    }
           
            
        %>
    


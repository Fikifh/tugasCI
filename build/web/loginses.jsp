<%-- 
    Document   : loginses
    Created on : Dec 4, 2017, 1:12:52 PM
    Author     : syah
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
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
            
            String nama = request.getParameter("nis");
            String pass = request.getParameter("pswd");
            String sqlSiswa = "select nis,pswd from siswa where nis="+nama+" and pswd='"+pass+"'";
            String sqlGuru = "select id_guru,pswd from guru where id_guru="+nama+" and pswd='"+pass+"'";
            String sqlAdmin = "select id_admin,pswd from admin where id_admin="+nama+" and pswd='"+pass+"'";
            String dipilih = request.getParameter("pilih");
            
            String url =    "jdbc:postgresql://localhost:5432/sias";
            String user = "postgres";
            String password = "root";
            %>
            <%
            if(dipilih.equals("Siswa")){
                Class.forName("org.postgresql.Driver");
                Connection konek = DriverManager.getConnection(url, user, password);                                  
                Statement st = konek.createStatement();
                try{
                    ResultSet rs = st.executeQuery(sqlSiswa);
                    while(rs.next()){                        
                        response.sendRedirect("home-siswa.jsp");
                        session.setAttribute("username", nama);                                        
                    }
                }catch(Exception ex){
                    out.print("ada error pada "+ex);
                }
            }else
                if(dipilih.equals("Admin")){
                    Class.forName("org.postgresql.Driver");
                    Connection konek = DriverManager.getConnection(url, user, password);                                  
                    Statement st = konek.createStatement();
                    try{
                        ResultSet rs = st.executeQuery(sqlAdmin);
                        while(rs.next()){
                            session.setAttribute("username", nama);                
                            response.sendRedirect("home-admin.jsp");
                        }
                    }catch(Exception ex){
                        out.print("ada error pada "+ex);
                    } 
                }else if(dipilih.equals("Guru")){
                    Class.forName("org.postgresql.Driver");
                    Connection konek = DriverManager.getConnection(url, user, password);                                  
                    Statement st = konek.createStatement();
                    try{
                        ResultSet rs = st.executeQuery(sqlGuru);
                        while(rs.next()){
                            session.setAttribute("username", nama);                
                            response.sendRedirect("home-guru.jsp");
                        }
                    }catch(Exception ex){
                        out.print("ada error pada "+ex);
                    } 
                }else{
                    out.print("ada kesalahan");
                }
           
            //String pilihan = request.getAttribute("pilih").toString();                        
        %>         
    </body>
</html>

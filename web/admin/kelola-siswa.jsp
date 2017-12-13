<%-- 
    Document   : kelola-siswa
    Created on : Dec 9, 2017, 9:37:29 AM
    Author     : syah
--%>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Controller.Login"%>
<%if ((session.getAttribute("username") == null) || (session.getAttribute("username") == "")) {
    %>
    <script type="text/javascript">
        function log(){
            var x = confirm("Masuk ke Laman Login?");                
            if (x){
                window.location.href="Siakadslta/FormLogin.jsp";
            }else{
                window.close();
            }    
        }
        function konfirmasi(){
                    int x = confirm("Apakah Anda Yakin Ingin Menghapus?");
                    if(x){
                        window.location.href="/Siakadslta/hapusSiswa";
                    } 
                    else{
                        window.close();
                    }
                    
                }

    </script>

    <body onload="log()">

<!--<a href="index.jsp" onload="log()">Silahkan Masuk Terlebih Dahulu</a>-->
    <% }else{
    %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style/css/bootstrap.css">         
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <style type="text/css">
            a .logout{                
                color: white;                
            }
            #logo{
                height: 30px;
                width: 30px;
                margin-right: 50px;
                margin-left: 28px;
            }
            .side-kiri{
                margin: 15px 10px 10px 0px;
                border : 1px solid #138496;

            }
            .bungkus-link-side-kiri{
                padding-bottom: 10px;
            }
            .link{
                width: 100%;
            }
        </style>       
        <title>Kelola Siswa</title>
    </head>
    <body>
        
                <nav class="navbar navbar-expand-lg navbar-light bg-dark">
                    <img src="/Siakadslta/images/logo-sma_1.png" id="logo">
                    <a class="navbar-brand" href="/Siakadslta/home-admin.jsp" style="color:#ffffff">SIAS</a>
                  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                  </button>
                  <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                      <li class="nav-item active">
                        <a class="nav-link" href="/Siakadslta/profil.jsp" style="color:#ffffff">Profil<span class="sr-only">(current)</span></a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="/Siakadstla/galery.jsp" style="color:#ffffff">Gallery</a>
                      </li>
                      <li class="nav-item dropdown">
                        <a style="color:#ffffff" class="nav-link dropdown-toggle" href="akademik.jsp" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          Akademik
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                          <a class="dropdown-item" href="/Siakadstla/kurikulum.jsp">Kurikulum</a>
                          <a class="dropdown-item" href="/Siakadstla/guru.jsp">Guru</a>
                          <div class="dropdown-divider"></div>
                          <a class="dropdown-item" href="/Siakadstla/ekskul.jsp">Ekstra Kurikuler</a>
                        </div>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="/Siakadslta/contact.jsp" style="color:#ffffff">Contact</a>
                      </li>
                    </ul>
                      <form method="post" action="hasil-cari-siswa.jsp" class="form-inline my-2 my-lg-0">
                      <input class="form-control mr-sm-2" name="key" type="search" placeholder="Search" aria-label="Search">
                      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                    </form>   
                      <a class="logout" href="/Siakadslta/logout.jsp">Log Out</a>
                  </div>
                </nav>         
            <table class="table table-bordered table-dark" style="margin-top: 10px;">
            <thead class="thead-dark">
              <tr>
                <th scope="col"> No </th>
                <th scope="col">NIS</th>
                <th scope="col">Nama Lengkap</th>
                <th scope="col">Jenis Kelamin</th>
                <th scope="col">TTL</th>
                <th scope="col">No Hp</th>
                <th scope="col">E-mail</th>                
                <th scope="col" colspan="2" style="text-align:center;">Action</th>
              </tr>
            </thead>
            <%
                int a =0;
                try {   
                    Login log =new Login();
                    String Nis = log.getUsername();
                    String url =    "jdbc:postgresql://localhost:5432/sias";
                    String user = "postgres";
                    String password = "root";
                    Connection connection = null;
                    Statement statement = null;
                    ResultSet rs = null;
                    Class.forName("org.postgresql.Driver");
                    Connection konek = DriverManager.getConnection(url, user, password);
                    statement = konek.createStatement();
                    String Data = "SELECT nis,CONCAT(nama_depan,' ',nama_tengah,' ',nama_belakang),gender,CONCAT(tempat_lahir,', ',tanggal_lahir),no_hp,email FROM siswa";
                    rs = statement.executeQuery(Data);                                                                                      
                %>
            <% while(rs.next()){ 
                    String nama_d=rs.getString(1);
                    String nama_t=rs.getString(2);
                    String nama_b=rs.getString(3);
                    String jk=rs.getString(4);
                    String tml=rs.getString(5);
                    String tgll=rs.getString(6);
                    a++;             
                %>
            <tbody>
              <tr>                
                <th scope="row"><%out.print(a);%></th>
                <td ><%=nama_d%></td>
                <td><%=nama_t%></td>
                <td><%=nama_b%></td>
                <td><%=jk%></td>
                <td><%=tml%></td>
                <td><%=tgll%></td>                
                <td><form action="admin-edit-siswa.jsp" method="post">
                        <input style="width:0px; height: 0px;" type="hidden" name="dipilih" value="<%=nama_d%>">
                        <button class="btn btn-primary">Edit</button>
                    </form>                    
                </td>
                <td>
                    <script type="text/javascript" language="JavaScript">
                    function konfirmasi()
                    {
                    tanya = confirm("Anda Yakin Akan Menghapus Data ?");
                    if (tanya == true) return true;
                    else return false;
                    }</script>
                    <form action="/Siakadslta/hapusSiswa" method="post" style="margin-left:3px;">
                        <input style="width:0px; height: 0px;" type="hidden" name="dipilih" value="<%=nama_d%>">
                        <button class="btn btn-info" onclick="return konfirmasi()">Hapus</button>
                    </form>
                </td>
              </tr>              
            </tbody> 
            
            <%      
                }   
            }catch(Exception ex){
                out.println("Koneksi Gagal");
            }
            %>
            </table>        
<div>Icons made by <a href="http://www.freepik.com" title="Freepik">Freepik</a> from <a href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a> is licensed by <a href="http://creativecommons.org/licenses/by/3.0/" title="Creative Commons BY 3.0" target="_blank">CC 3.0 BY</a></div>        
    </body>
</html>
<%
    }
%>

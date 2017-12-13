<%-- 
    Document   : buat_berita
    Created on : Dec 10, 2017, 12:58:44 PM
    Author     : syah
--%>
<%@page import="java.sql.Date"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Controller.Login"%>
<%@page import = "java.io.*,java.util.*, javax.servlet.*" %>
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
        <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="css/plugins/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    <link href="css/bootstrap-datetimepicker.css" rel="stylesheet">
     
    <link href="css/summernote.css" rel="stylesheet">
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
               <script type="text/javascript" src="nicEdit.js"></script>
    <script type="text/javascript">
            bkLib.onDomLoaded(function() { nicEditors.allTextAreas() });
    </script>
    
    <script type="text/javascript">
    bkLib.onDomLoaded(function() {
            new nicEditor().panelInstance('area1');
            new nicEditor({fullPanel : true}).panelInstance('area2');
            new nicEditor({iconsPath : '../nicEditorIcons.gif'}).panelInstance('area3');
            new nicEditor({buttonList : ['fontSize','bold','italic','underline','strikeThrough','subscript','superscript','html','image']}).panelInstance('area4');
            new nicEditor({maxHeight : 100}).panelInstance('area5');
    });
    </script>
    <div class="container align-items-md-center">
        <form action="/Siakadslta/uploadArtikel">
           <% 
               String userSession=(String) session.getAttribute("username");
           %>            
           <input type="text" name="useradmin" value="<%=userSession%>" hidden="true">
            <h2>Buat Artikel atau Pengumuman</h2>
            <input type="text" class="form-control col-6" style="margin-bottom:7px;" placeholder="Masukan Judul" name="judul" id="exampleinputjudul" aria-describedby="judulHelp" validated>
            <small id="judulHelp" class="form-text text-muted">Mohon Untuk Tidak Mengosongkan Judul!</small>
            <textarea name="isi_berita" style="width: 1000px; height: 500px; margin-bottom: 10px;"  cols="50" id="area5">Isikan Tulisan</textarea>	                                  
            <button class="btn btn-primary" style="margin-top: 10px;">Upload</button>
        </form>
    </div>
    </body>
</html>
<%
    }
%>
<script>
// Example starter JavaScript for disabling form submissions if there are invalid fields
  (function() {
  'use strict';

  window.addEventListener('load', function() {
    var form = document.getElementById('needs-validation');
    form.addEventListener('submit', function(event) {
      if (form.checkValidity() === false) {
        event.preventDefault();
        event.stopPropagation();
      }
      form.classList.add('was-validated');
    }, false);
  }, false);
})();
</script>  
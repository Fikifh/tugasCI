<%-- 
    Document   : home-admin
    Created on : Dec 7, 2017, 7:35:40 AM
    Author     : syah
--%>
    <%if ((session.getAttribute("username") == null) || (session.getAttribute("username") == "")) {
    %>
    <script type="text/javascript">
        function log(){
            var x = confirm("Masuk ke Laman Login?");                
            if (x){
                window.location.href="FormLogin.jsp";
            }else{
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
                margin: 0px 10px 10px 0px;
                border : 1px solid #138496;
                height: 550px;
                padding: 20px 10px 10px 10px;

            }
            .bungkus-link-side-kiri{
                padding-bottom: 10px;
            }
            .link{
                margin: 7px; 
                width: 120px;
                                
            }
        </style> 
        <title>Biodata Siswa</title>
    </head>
    <body>
        
        <nav class="navbar navbar-expand-lg navbar-light bg-dark" style="border-bottom : 4px solid #007bff;">
                    <img src="images/logo-sma_1.png" id="logo">
                    <a class="navbar-brand" href="index.jsp" style="color:#ffffff">SIAS</a>
                  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                  </button>
                  <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                      <li class="nav-item active">
                        <a class="nav-link" href="profil.jsp" style="color:#ffffff">Profil<span class="sr-only">(current)</span></a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="galery.jsp" style="color:#ffffff">Gallery</a>
                      </li>
                      <li class="nav-item dropdown">
                        <a style="color:#ffffff" class="nav-link dropdown-toggle" href="akademik.jsp" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          Akademik
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                          <a class="dropdown-item" href="kurikulum.jsp">Kurikulum</a>
                          <a class="dropdown-item" href="guru.jsp">Guru</a>
                          <div class="dropdown-divider"></div>
                          <a class="dropdown-item" href="ekskul.jsp">Ekstra Kurikuler</a>
                        </div>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="contact.jsp" style="color:#ffffff">Contact</a>
                      </li>
                    </ul>
                    <form class="form-inline my-2 my-lg-0">
                      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                    </form>   
                      <a class="logout" href="logout.jsp">Log Out</a>
                  </div>
                </nav> 
        <div class="col-2 badge-light side-kiri" style="border-right: 1px solid #269abc; border-top: 0px;"> 
            <div clss="row">
                <img src="/Siakadslta/images/man-user.png">            
                <a href="admin/kelola-siswa.jsp"><button class="link btn btn-primary">Kelola Siswa</button></a> 
            </div>            
            <div clss="row">
                <img src="/Siakadslta/images/man-user.png">            
                <a href="#"><button class="link btn btn-primary">Kelola Guru</button></a> 
            </div>
            <div clss="row">
                <img src="/Siakadslta/images/megaphone.png">            
                <a href="admin/buat_berita.jsp"><button class="link btn btn-primary">Buat Berita</button></a> 
            </div>
             <div clss="row">
                 <img src="/Siakadslta/images/classroom.png" width="30px" height="30px">            
                <a href="#"><button class="link btn btn-primary">Kelola Kelas</button></a> 
            </div>
             <div clss="row">
                <img src="/Siakadslta/images/calendar.png" width="30px" height="30px">            
                <a href="#"><button class="link btn btn-primary">Penjadwalan</button></a> 
            </div>
        </div>                  
        <div class="col-10">
            
        </div>
<div>Icons made by <a href="http://www.freepik.com" title="Freepik">Freepik</a> from <a href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a> is licensed by <a href="http://creativecommons.org/licenses/by/3.0/" title="Creative Commons BY 3.0" target="_blank">CC 3.0 BY</a></div>        
    </body>
</html>
<%
    }
%>

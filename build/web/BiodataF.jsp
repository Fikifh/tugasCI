<%-- 
    Document   : BiodataF
    Created on : Dec 1, 2017, 10:03:25 PM
    Author     : syah
--%>

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
            a{                
                color: white important;                
            }
            #logo{
                height: 30px;
                width: 30px;
                margin-right: 50px;
                margin-left: 28px;
            }
        </style> 
        <title>Biodata Siswa</title>
    </head>
    <body>
        
                <nav class="navbar navbar-expand-lg navbar-light bg-dark">
                    <img src="images/logo-sma_1.png" id="logo">
                    <h3 class="navbar">SMAN 1</h3>
                    <a class="navbar-brand" href="index.jsp" style="color:#ffffff">Home</a>
                  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                  </button>
                  <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                      <li class="nav-item active">
                        <a class="nav-link" href="profile.jsp" style="color:#ffffff">Profil<span class="sr-only">(current)</span></a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="gallery.jsp" style="color:#ffffff">Gallery</a>
                      </li>
                      <li class="nav-item dropdown">
                        <a style="color:#ffffff" class="nav-link dropdown-toggle" href="akademik.jsp" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          Akademik
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                          <a class="dropdown-item" href="kurikulum.jsp">Kurikulum</a>
                          <a class="dropdown-item" href="Guru.jsp">Guru</a>
                          <div class="dropdown-divider"></div>
                          <a class="dropdown-item" href="Ekskur.jsp">Ekstra Kurikuler</a>
                        </div>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="contact.jsp" style="color:#ffffff">Contact</a>
                      </li>
                    </ul>
                      <form class="form-inline my-2 my-lg-0" >
                      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                      <input style="margin-left: 15px" type="submit" name="userSes" value="<%session.getAttribute("username");%>">
                    </form>
                  </div>
                </nav>                  
                <form action="editBiodata.jsp" class="container" id="needs-validation" novalidate>
                    <h3>Biodata Siswa</h3>
                  <div class="row">
                    <div class="col-md-6 mb-3">
                      <label for="validationCustom01">Nama Depan</label>
                      <input type="text" name="nama_depan" class="form-control" id="validationCustom01" placeholder="Nama Depan" required>
                    </div>
                    <div class="col-md-6 mb-3">
                      <label for="validationCustom02">Nama Tengah</label>
                      <input type="text" name="nama_tengah" class="form-control" id="validationCustom02" placeholder="Nama Tengah">
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-6 mb-3">
                      <label for="validationCustom03">Nama Belakang</label>
                      <input type="text" name="nama_belakang" class="form-control" id="validationCustom03" placeholder="Nama Belakang">                     
                    </div>
                    <div class="col-md-6 mb-3">                               
                            <label for="validationCustom04" >Jenis Kelamin</label><br>                              
                            <input type="radio" aria-label="Radio button" name="jk" value="Laki-Laki"> 
                            <label for="validationCustom05" style="margin-left: 20px;">Laki-Laki</label>                              
                            <input type="radio" aria-label="Radio button" name="jk" value="Perempuan" style="margin-left: 20px;">
                            <label for="validationCustom06" style="margin-left: 20px;">Perempuan</label>
                    </div>
                    </div>  
                  <div class="row">
                    <div class="col-md-6 mb-3">
                      <label for="validationCustom07">Alamat</label>
                      <input type="text" name="alamat" class="form-control" id="validationCustom04" placeholder="Alamat" required>                 
                    </div>
                    <div class="col-md-6 mb-3">
                      <label for="validationCustom08">Detail Siswa</label>
                      <input type="text" name="detail" class="form-control" id="validationCustom05" placeholder="Detail">                      
                    </div>
                  </div>
                    <div class="row">
                      <div class="col-md-6 mb-3">
                        <label for="exampleInputEmail1">Email address</label>
                        <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Masukan email">
                        <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                      </div>  
                      <div class="col-md-6 mb-3">
                        <label for="exampleinputhandphonenumber">Nomor Hand phone</label>
                        <input type="handphonenumber" name="no_hp" class="form-control" id="exampleinputhandphonenumber" aria-describedby="phonenumberHelp" placeholder="Masukan No HP">
                        <small id="phonenumberHelp" class="form-text text-muted">We'll never share your phone number with anyone else.</small>
                      </div>                         
                    </div>
                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <label for="validationCustom09">Tanggal Lahir</label>
                            <input type="text" name="tanggal_lahir" class="form-control" id="validationCustom04" placeholder="Bulan/Tanggal/Tahun" required>                 
                        </div>
                    </div>
                  <button class="btn btn-primary" type="submit">Submit form</button>
                </form>               
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
    </body>
</html>

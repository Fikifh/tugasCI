<%-- 
    Document   : Biodata
    Created on : Dec 4, 2017, 7:20:28 AM
    Author     : syah
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="Controller.insertData"%>
<%@page import="java.sql.Statement"%>
<%@page import="Controller.Login"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
                    <a class="navbar-brand" href="index.jsp" style="color:#ffffff">Home</a>
                  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                  </button>
                  <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                      <li class="nav-item active">
                        <a class="nav-link" href="#" style="color:#ffffff">Profil<span class="sr-only">(current)</span></a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="#" style="color:#ffffff">Gallery</a>
                      </li>
                      <li class="nav-item dropdown">
                        <a style="color:#ffffff" class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          Akademik
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                          <a class="dropdown-item" href="#">Kurikulum</a>
                          <a class="dropdown-item" href="#">Guru</a>
                          <div class="dropdown-divider"></div>
                          <a class="dropdown-item" href="#">Ekstra Kurikuler</a>
                        </div>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="#" style="color:#ffffff">Contact</a>
                      </li>
                    </ul>
                    <form class="form-inline my-2 my-lg-0">
                      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                    </form>
                  </div>
                </nav> 
                <%
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
                    String Data = "select nama_depan,nama_tengah,nama_belakang,gender,alamat,detail_siswa,email, no_hp, tanggal_lahir from siswa WHERE nis="+session.getAttribute("username")+"";
                    rs = statement.executeQuery(Data);                    
                %>
                <form action="BiodataF.jsp" class="container" id="needs-validation" novalidate>
                    <h3>Biodata Siswa</h3>
                    <%while(rs.next()){%>
                  <div class="row">
                    <div class="col-md-6 mb-3">
                      <label for="validationCustom01">Nama Depan</label>
                      <input type="text" name="nama_depan" class="form-control" id="validationCustom01" placeholder="<%=rs.getString(1)%>" disabled>
                    </div>
                    <div class="col-md-6 mb-3">
                      <label for="validationCustom02">Nama Tengah</label>
                      <input type="text" name="nama_tengah" class="form-control" id="validationCustom02" placeholder="<%=rs.getString(2)%>" disabled>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-6 mb-3">
                      <label for="validationCustom03">Nama Belakang</label>
                      <input type="text" name="nama_belakang" class="form-control" id="validationCustom03" placeholder="<%=rs.getString(3)%>" disabled>                     
                    </div>
                        <div class="col-md-6 mb-3">
                          <label for="validationCustom04">Jenis Kelamin</label>
                          <input type="text" name="nama_belakang" class="form-control" id="validationCustom03" placeholder="<%=rs.getString(4)%>" disabled>                     
                        </div>
                    </div>  
                  <div class="row">
                    <div class="col-md-6 mb-3">
                      <label for="validationCustom07">Alamat</label>
                      <input type="text" name="alamat" class="form-control" id="validationCustom04" placeholder="<%=rs.getString(5)%>" disabled>                 
                    </div>
                    <div class="col-md-6 mb-3">
                      <label for="validationCustom08">Detail Siswa</label>
                      <input type="text" name="detail" class="form-control" id="validationCustom05" placeholder="<%=rs.getString(6)%>"  disabled>                      
                    </div>
                  </div>
                    <div class="row">
                      <div class="col-md-6 mb-3">
                        <label for="exampleInputEmail1">Email address</label>
                        <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="<%=rs.getString(7)%>" disabled>
                        <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                      </div>  
                      <div class="col-md-6 mb-3">
                        <label for="exampleinputhandphonenumber">Nomor Hand phone</label>
                        <input type="handphonenumber" name="no_hp" class="form-control" id="exampleinputhandphonenumber" aria-describedby="phonenumberHelp" placeholder="<%=rs.getString(8)%>" disabled>
                        <small id="phonenumberHelp" class="form-text text-muted">We'll never share your phone number with anyone else.</small>
                      </div>                         
                    </div>
                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <label for="validationCustom09">Tanggal Lahir</label>
                            <input type="text" name="tanggal_lahir" class="form-control" id="validationCustom04" placeholder="<%=rs.getString(9)%>" disabled>                 
                        </div>
                    </div>
                  <button class="btn btn-primary" type="submit">Edit</button>
                </form
                <%
                    }
      
                }catch(Exception e){                    
                    out.print("ada kesalahan "+e);
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
    </body>
</html>
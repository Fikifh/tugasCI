</html>
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
                    <a class="navbar-brand" href="#" style="color:#ffffff">Home</a>
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
                <div class="col-md-6 offset-md-3 "> 
                    <h2 align="center">Login</h2>
                    <form action="loginses.jsp" class="container" id="needs-validation" novalidate method="POST">
                        <div class="form-group">
                            <label for="exampleFormControlSelect1">Pilih User</label>
                            <select id="pilih" name="pilih" class="form-control" id="exampleFormControlSelect1">
                                <option name="pilih" id="pilih">Admin</option>
                                <option name="pilih" id="pilih">Guru</option>
                                <option name="pilih" id="pilih">Siswa</option>                               
                            </select>
                        </div>                        
                        <label>Username</label><br>
                        <input type="text" name="nis" class="form-control" id="validationCustom01"><br>
                        <label>Password</label><br>
                        <input type="password" name="pswd" class="form-control" id="validationCustom04"><br>                                                
                  <button class="btn btn-primary" type="submit">Login</button>
                    </form>
                </div>
                
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

<%-- 
    Document   : salahPswd
    Created on : Dec 1, 2017, 5:18:08 PM
    Author     : syah
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>warning!!!</title>
        <script type="text/javascript">
            function alrt(){
                var x = confirm("Kembali Ke Laman Login?");                
                if (x){
                    window.location.href="FormLogin.jsp";
                }else{
                    window.close();
                }                
            } 
            function tampil(){
                alert("terimakasih");
            }
        </script>
    </head>
    <body onload="alrt()">
        
        <h4>terimakasi telah berkunjung</h4>
    </body>
</html>

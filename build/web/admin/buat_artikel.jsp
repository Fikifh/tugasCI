<%-- 
    Document   : buat_artikel
    Created on : Dec 10, 2017, 2:22:42 PM
    Author     : syah
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Contoh NicEdit</title>        
                      

</head>
<body>
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
    <p>{maxHeight : 100}</p>
    <textarea style="width: 1000px;" cols="50" id="area5">HTML <b>content</b> <i>default</i> in textarea</textarea>	                          
</body>
</html>
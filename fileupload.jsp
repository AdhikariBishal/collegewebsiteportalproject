<%-- 
    Document   : fileupload
    Created on : 16 Apr, 2024, 3:45:49 PM
    Author     : ADHIKARI BISHAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="fileuploadjsp.jsp" method="post" enctype="multipart/form-data">  
            Select File:<input type="file" name="fname"/><br/>  
            <input type="submit">
        </form>
    </body>
</html>

<%-- 
    Document   : answersheetfetching
    Created on : 18 Apr, 2024, 7:11:21 PM
    Author     : ADHIKARI BISHAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
        .maindiv
        {
            position: relative;
            height: 1200px;
            width: 100%;
            background-color: aquamarine;
        }
        .an
        {
            position: relative;
            font-size: 20px;
            margin-left: 450px;
            top: 20px;
            font-weight: bold;
        }
        .topdetail
        {
            position: relative;
            height: 1200px;
            width: 1300px;
            background-color: blueviolet;
            left: 70px;
        }
        .summary
        {
            float: left;
            height: 1000px;
            width: 1100px;
            margin-left: 20px;
            margin-top: 20px;
            background-color: antiquewhite;
            border: 1px;
            border-color: black;
            border-style:double ;
        }
        .summary1
        {
            position: relative;
            height: 600px;
            width: 600px;
            margin-left: 150px;
            margin-top: 50px;
            background-color: rgb(234, 239, 235);
            
        }
        .marktab
        {
            float: left;
            height: 1000px;
            width: 130px;
            margin-left: 30px;
            margin-top: 20px;
            background-color: rgb(112, 67, 9);
            border: 1px;
            border-color: black;
            border-style:double ;
        }
        .marktab1
        {
            float: inline-start;
            height: 70px;
            width: 70px;
            background-color: antiquewhite;
            margin-left: 30px;
            margin-top: 15px;
            border-radius: 100%;
        }
        .marktabl
        {
            position: relative;
            font-size: 14px;
            font-weight: bold;
            top: 25px;
            left: 15px;
        }
        .marktab1 a
        {
            position: relative;
            text-decoration: none;
        }
    </style>
    </head>
    <body>
        <form>
    <div class="maindiv">
        <div class="topdetail">
            <div class="summary">
                <label class="an">Summary</label>
                <div class="summary1">
                    <table border="1px" height="600px" width="600px" cellpsdding="1px" cellspacing="0px">
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="marktab">
                <div class="marktab1">
                    <a href="">
                        <label class="marktabl">QN.1.A</label>
                    </a>
                </div>
            </div>
        </div>
    </div>


        </form>
    </body>
</html>

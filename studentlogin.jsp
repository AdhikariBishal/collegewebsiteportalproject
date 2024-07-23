<%-- 
    Document   : studentlogin
    Created on : 26 Feb, 2024, 10:40:10 AM
    Author     : ADHIKARI BISHAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="studentlogincss.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <form method="post" action="studentloginjsp.jsp">
            <div id="studentdiv">
        <div id="studenttopdiv">
            <div id="studenttop1div">
                <div id="studenttop2div"></div>
                <div id="studenttop3div">
                    <label style="position: relative; font-size: 35px; font-weight: bold; color: white; top: 50px; left: 100px;">
                        Student Login
                    </label>
                </div>
            </div>

            <div id="studentmid1div"></div>
            <div id="studentmid2div">
                <div id="studentmid21div">
                    <div id="filldiv">
                        <label style="position: relative; font-size: 25px; font-weight: bold; color: rgb(69, 49, 162); top: 10px; left: 150px;">
                            Student Login
                        </label>
                    </div>
                    <div id="filldiv">
                        <label style="position: relative; font-size: 16px; color: rgb(14, 8, 8); top: 20px; left: 20px; ">
                            User Id
                        </label>
                    </div>
                    <div id="filldiv">
                        <input type="text " id="t1" name="t1" placeholder="Enter The User Id" style="position: relative; height: 30px; border-radius: 5px; width: 450px; left: 20px; " >
                    </div>
                    <div id="filldiv">
                        <label style="position: relative; font-size: 16px; color: rgb(14, 8, 8); top: 20px; left: 20px; ">
                            Password
                        </label>
                    </div>
                    <div id="filldiv">
                        <input type="text " id="t1" name="t2" placeholder="Enter The Password" style="position: relative; height: 30px; border-radius: 5px; width: 450px; left: 20px; " >
                    </div>

                    <div id="filldiv">
                        <label style="position: relative; font-size: 16px; color: rgb(14, 8, 8); top: 20px; left: 20px; ">
                            Captcha
                        </label>

                        <label style="position: relative; font-size: 16px; color: rgb(14, 8, 8); top: 20px; left: 210px; ">
                            Enter Captcha
                        </label>
                    </div> 
                    
                    <div id="filldiv">
                        
                        <label style="position: relative; height: 50px;   left: 20px;"><img src="img/captcha3.png" alt=""></label>
                        

                        <input type="text " id="t1" name="t3" placeholder="Enter The Captcha" style="position: relative; height: 30px; border-radius: 5px; width: 200px; left: 170px; top: -10px;" >
                    </div>

                    <div id="filldiv">
                        <input type="submit" value="Singin" style="position: relative; font-size: 18px; font-weight: bold; color: rgb(234, 242, 239); background-color: rgb(69, 49, 162); height: 30px; border-radius: 10px;  width: 150px; top: 10px; left: 15px;">

                        <input type="submit" value="Reset" style="position: relative; font-size: 18px; font-weight: bold; color: rgb(240, 243, 242); background-color: rgb(69, 49, 162); height: 30px; border-radius: 10px;  width: 150px; top: 10px; left: 175px;">
                    </div>

                    <div id="filldiv">
                        <a href="">
                            <label class="forpass">
                                Forgot Password?
                            </label>
                        </a>
                        
                    </div>
                </div>
            </div>
            
        </div>
        <div id="studentfotterdiv"></div>
    </div>
        </form>
        
    </body>
</html>

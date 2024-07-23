<%-- 
    Document   : studentanswerbook
    Created on : 28 Feb, 2024, 4:10:16 PM
    Author     : ADHIKARI BISHAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="Dashboardcss.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <form method="post" action="">
            <div id="dashmaindiv">
        <div id="dashtopdiv">
            <div id="dashtop1div">
                <img src="img/logo.jpg" style="position: relative; height: 140px; width: 200px;">
            </div>
            <div id="dashtop2div">
                <div id="dashtop21div">
                    <div id="dashtop211div">
                        <label class="dash1">
                            Faculty Management System
                        </label>
                    </div>
                    <div id="dashtop212div">
                        <label class="dash2">
                            Tula's Institue Of Engineering College
                        </label>
                    </div>
                    <div id="dashtop213div">
                        <a href="">
                            <label class="dash3">A</label>
                        </a>
                    </div>
                </div>
                <div id="dashtop22div">
                    <a href="Studentdashboard.jsp">
                        <label class="c1">
                            DASHBOARD
                        </label>
                    </a>

                    <a href="">
                        <label class="c1">
                            MASTER
                        </label>
                    </a>

                    <a href="">
                        <label class="c1">
                            GRIEVANCE
                        </label>
                    </a>
                    
                    <a href="">
                        <label class="c1">
                            TRANSICTIONS
                        </label>
                    </a>

                    

                    <a href="">
                        <label class="c1">
                            REPORT
                        </label>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <div class="mid"></div>

    <div class="middle">
        <table  cellpadding="0" cellspacing="0">
            <tr>
                <td style="position: relative; height: auto;width: auto; vertical-align: top;">
                    <div class="mid3">
                        <div class="mid31">
                            <a href="studentupdateform.jsp">
                                <label class="p6">
                                    Update Profile
                                </label>
                            </a>
                        </div>
                        <div class="line"></div>
                        <div class="mid31">
                            <a href="studentexamform.jsp">
                                <label class="p6">
                                    Examination Form
                                </label>
                            </a>
                        </div>
                        <div class="line"></div>
                
                        <div class="mid31">
                            <a href="sturegistration.jsp">
                                <label class="p6">
                                    Registration Form
                                </label>
                            </a>
                        </div>
                        <div class="line"></div>
                
                        <div class="mid31">
                            <a href="studentattendence.jsp">
                                <label class="p6">
                                    View Attendence
                                </label>
                            </a>
                        </div>
                        <div class="line"></div>
                        <div class="mid31">
                            <a href="Studentclassroutine.jsp">
                                <label class="p6">
                                    View Class Routine
                                </label>
                            </a>
                        </div>
                        <div class="line"></div>
                        <div class="mid31">
                            <a href="studentresult.jsp">
                                <label class="p6">
                                    View your Result
                                </label>
                            </a>
                        </div>
                        <div class="line"></div>
                        <div class="mid31">
                            <a href="studentanswerbook.jsp">
                                <label class="p6">
                                    View Your AnswerBook
                                </label>
                            </a>
                        </div>
                        <div class="line"></div>
                </td>
                <td style="position: relative; height: auto;width: auto;">
                    
                
                </td>
            </tr>
        </table>
    </div>
    
    <div class="mid"></div>

    <div class="fot">
        <div id="imsdown1div" style="position: relative; top: 25px;">
            <div id="imsdown11div">
                <label style="position: relative; font-size: 24px; left: 350px; top: 20px; color: white;">
                    Technical Helpline : (Timing 10 AM - 6 PM)
                </label>
            </div>
            <div id="imsdown12div">
                <div id="imsdown121div">
                    <label style="position: relative; font-size: 18px; font-weight: bold; left: 60px; top: 15px; color: white;">
                        Mobile : (+91) 8797653208, 7078797909
                    </label>
                </div>
                <div id="imsdown121div">
                    <label style="position: relative; font-size: 18px; font-weight: bold; left: 100px; top: 15px; color: white;">
                        Email ID: helptulas.edu.in
                    </label>
                </div>
            </div>
            
    </div>
    
    <div class="fot1">
            <label class="fo1">
                Tulas Institute Of Engineering College
            </label>
    </div>    
        </form>
    </body>
</html>

<%-- 
    Document   : studentresult
    Created on : 28 Feb, 2024, 4:10:50 PM
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
                    <div class="resu">
                        <div class="resu1">
                            <label class="reslabel">View Result</label>
                        </div>
                        
                        <div class="resu1">
                            <div class="resdet">
                                <label class="reslabel">Examination's Name</label>
                            </div>
                            <div class="resdet">
                                <label class="reslabel">Exam Type</label>
                            </div>
                            <div class="resdet">
                                <label class="reslabel">Course</label>
                            </div>
                        </div>
                        
                        <div class="resu1">
                            <div class="resdet">
                                <select id="t1"  name="t1" class="markinput" >
                                    <option>-- Select --</option>
                                    <option>ODD SEMESTER 2023-24</option>
                                </select>
                            </div>
                            <div class="resdet">
                                <select id="t2"  name="t2" class="markinput" >
                                    <option>-- Select --</option>
                                    <option>Regular</option>
                                    <option>Back Paper</option>
                                    <option>Special Back</option>
                                    
                                </select>
                            </div>
                            <div class="resdet">
                                <select id="t3" name="t3" class="markinput" >
                                    <option>-- Select --</option>
                                    <option>BTECH</option>
                                    <option>MTECH</option>
                                    <option>MBA</option>
                                    <option>BBA</option>
                                    <option>LLB</option>
                                    <option>BARCH</option>
                                    <option>Other</option>
                                </select>
                            </div>
                        </div>
                        
                        
                        <div class="resu1">
                            <div class="resdet">
                                <label class="reslabel">Branch</label>
                            </div>
                            <div class="resdet">
                                <label class="reslabel">Semester</label>
                            </div>
                            <div class="resdet">
                                <label class="reslabel">Roll No.</label>
                            </div>
                        </div>
                        <div class="resu1">
                            <div class="resdet">
                                <select id="t4" name="t4" class="markinput">
                                    <option>-- Select --</option>
                                    <option>Computer Science Engineering</option>
                                    <option>Civil Engineering</option>
                                    <option>Eelectrical Engineering</option>
                                    <option>Mechanical Engineering</option>
                                    <option>Electrical & Electronics Engineering</option>
                                    <option>Bio Technical</option>
                                    <option>Other</option>
                                </select>
                            </div>
                            <div class="resdet">
                                <select id="t5"  name="t5" class="markinput" >
                                    <option>-- Select --</option>
                                    <option>1</option>
                                    <option>2</option>
                                    <option>3</option>
                                    <option>4</option>
                                    <option>5</option>
                                    <option>6</option>
                                    <option>7</option>
                                    <option>8</option>
                                </select>
                            </div>
                            <div class="resdet">
                                <input type="text" id="t6" name="t6" class="markinput">
                            </div>
                        </div>
                        <div class="resu1">
                            <div class="resdet">
                                <label class="reslabel">Date Of Birth</label>
                            </div>
                            <div class="resdet">
                                <label class="reslabel">Enter Captcha</label>
                            </div>
                            <div class="resdet">
                                <label class="reslabel">Captcha</label>
                            </div>
                        </div>
                        <div class="resu1">
                            <div class="resdet">
                                <input type="date" id="t7" name="t7" class="markinput">
                            </div>
                            <div class="resdet">
                                <input type="text" id="t8" name="t8" class="markinput">
                            </div>
                            <div class="resdet">
                                <img src="img/captcha3.png" class="markinput">
                            </div>
                        </div>
                        

                        <div class="resu1">
                            <input type="button" value="Search" class="exb" style="position: relative; left: 350px;">
                        </div>
                        
                    </div>
                
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

<%-- 
    Document   : sturegistration
    Created on : 24 Feb, 2024, 7:33:44 AM
    Author     : ADHIKARI BISHAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="Dashboardcss.css" rel="stylesheet" type="text/css">
        <script>
            function loadsubject()
            {
                var xmlhttp;
                var semester=document.getElementById("s3").value;
                var course=document.getElementById("t9").value;
                var branch=document.getElementById("s1").value;
                
                if(window.XMLHttpRequest)
                {
                    xmlhttp=new XMLHttpRequest();
                }
                else
                {
                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                    
                }
                
                xmlhttp.onreadystatechange=function()
                {
                    if(xmlhttp.readyState==4 && xmlhttp.status==200)
                    {
                        document.getElementById("exsubdetail").innerHTML=xmlhttp.responseText;
                    }
                    
                }
                
                xmlhttp.open("GET","studentregistrationjsp.jsp?se="+semester+"&co="+course+"&ba="+branch,true);
                xmlhttp.send();
            }
                
            
        </script>
    </head>
    <body>
        <form method="post" action="studentregistrationjsp.jsp">
            <div id="dashmaindiv">
        <div id="dashtopdiv">
            <div id="dashtop1div">
                <img src="img/logo.jpg" style="position: relative; height: 140px; width: 200px;">
            </div>
            <div id="dashtop2div">
                <div id="dashtop21div">
                    <div id="dashtop211div">
                        <label class="dash1">
                            Student Management System
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
                <td style="position: relative; height: auto;width: auto; vertical-align:top;">
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
                    <div class="exfm">
                        <div class="extop">
                            <label class="extopl">Student Registration Form</label>
                        </div>
                        <div class="exdetail">
                            <div class="exdetail1">
                                <label class="exl">
                                    Student Name
                                </label>
                            </div>
                            <div class="exdetail1">
                                <label class="exl">
                                    Father Name
                                </label>
                            </div>
                            <div class="exdetail1">
                                <label class="exl">
                                    Mother Name
                                </label>
                            </div>
                        </div>

                        <div class="exdetail">
                            <div class="exdetail1">
                                <input type="text" id="t1" name="t1" placeholder="Enter Your Name" class="exi">
                            </div>
                            <div class="exdetail1">
                                <input type="text" id="t2" name="t2" placeholder="Enter Your Name" class="exi">
                            </div>
                            <div class="exdetail1">
                                <input type="text" id="t3" name="t3" placeholder="Enter Your Name" class="exi">
                            </div>
                        </div>

                        <div class="exdetail">
                            <div class="exdetail1">
                                <label class="exl">
                                    Date of Birth
                                </label>
                            </div>
                            <div class="exdetail1">
                                <label class="exl">
                                    Mobile No
                                </label>
                            </div>
                            <div class="exdetail1">
                                <label class="exl">
                                    Email id
                                </label>
                            </div>
                        </div>

                        <div class="exdetail">
                            <div class="exdetail1">
                                <input type="date" id="t4" name="t4"  class="exi">
                            </div>
                            <div class="exdetail1">
                                <input type="text" id="t5" name="t5" placeholder="Enter Your Mobile no" class="exi">
                            </div>
                            <div class="exdetail1">
                                <input type="text" id="t6" name="t6" placeholder="Enter Your email id" class="exi">
                            </div>
                        </div>


                        <div class="exdetail">
                            <div class="exdetail1">
                                <label class="exl">
                                    Gender
                                </label>
                            </div>
                            <div class="exdetail1">
                                <label class="exl">
                                    Adharcard No
                                </label>
                            </div>
                            <div class="exdetail1">
                                <label class="exl">
                                    Course
                                </label>
                            </div>
                        </div>

                        <div class="exdetail">
                            <div class="exdetail1">
                                <select id="t7" name="t7" class="exi" >
                                    <option>-- Select --</option>
                                    <option>Male</option>
                                    <option>Female</option>
                                    
                                </select> >
                            </div>
                            <div class="exdetail1">
                                <input type="text" id="t8" name="t8" placeholder="Enter Your Name" class="exi">
                            </div>
                            <div class="exdetail1">
                                <select id="t9" name="t9" class="exi" onchange="loadsubject()" >
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


                        <div class="exdetail">
                            <div class="exdetail1">
                                <label class="exl">
                                    Branch
                                </label>
                            </div>
                            <div class="exdetail1">
                                <label class="exl">
                                    Year
                                </label>
                            </div>
                            <div class="exdetail1">
                                <label class="exl">
                                    Semester
                                </label>
                            </div>
                        </div>

                        <div class="exdetail">
                            <div class="exdetail1">
                                <select id="s1" name="s1" class="exi" onchange="loadsubject()" >
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
                            <div class="exdetail1">
                                <select id="s2" name="s2" class="exi" >
                                    <option>-- Select --</option>
                                    <option>First</option>
                                    <option>Second</option>
                                    <option>Third</option>
                                    <option>Fourth</option>
                                    
                                </select>
                            </div>
                            <div class="exdetail1">
                                <select id="s3"  name="s3" class="exi" onchange="loadsubject()" >
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
                        </div>


                        <div class="exdetail">
                            <div class="exdetail1">
                                <label class="exl">
                                    Session
                                </label>
                            </div>
                            <div class="exdetail1">
                                <label class="exl">
                                    Registration no
                                </label>
                            </div>
                            <div class="exdetail1">
                                <label class="exl">
                                    Enrollment no
                                </label>
                            </div>
                        </div>

                        <div class="exdetail">
                            <div class="exdetail1">
                                <input type="text" id="s4" name="s4" placeholder="Enter Your Session" class="exi">
                            </div>
                            <div class="exdetail1">
                                <input type="text" id="s5" name="s5" placeholder="Enter Your Registration no" class="exi">
                            </div>
                            <div class="exdetail1">
                                <input type="text" id="s6" name="s6" placeholder="Enter Your Enrollment no" class="exi">
                            </div>
                        </div>

                        <div class="exdetail">
                            <div class="exdetail1">
                                <label class="exl">
                                    Upload Your Pic
                                </label>
                            </div>
                            
                        </div>


                        <div class="exdetail">
                            <div class="exdetail1">
                                <input type="file"   class="exi" >
                            </div>

                            <!-- Transaction id -->
                            <div class="exdetail1">
                                <input type="hidden" id="s7" name="s7"  class="exi">
                            </div>
                        </div>

                        <div id="exsubdetail">
                            
                            
                        </div>

                        <div class="exdetail">
                            
                            <div class="exdetail1"></div>
                            <div class="exdetail1">
                                <input type="submit" value="Submit" class="exb">
                            </div>
                            
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

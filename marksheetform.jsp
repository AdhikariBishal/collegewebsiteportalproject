<%-- 
    Document   : marksheetform
    Created on : 21 Mar, 2024, 8:19:05 AM
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
                var semester=document.getElementById("t7").value;
                var course=document.getElementById("t5").value;
                var branch=document.getElementById("t6").value;
                
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
                        document.getElementById("fillmark").innerHTML=xmlhttp.responseText;
                    }
                    
                }
                
                xmlhttp.open("GET","marksheetjsp.jsp?se="+semester+"&co="+course+"&ba="+branch,true);
                xmlhttp.send();
            }
            
            function savemarks()
            {
                var xmlhttp;
                var roll=document.getElementById("t1").value;
                var examname=document.getElementById("t11").value;
                var semester=document.getElementById("t7").value;
                var subcode=document.getElementById("f1").value;
                var subname=document.getElementById("f2").value;
                var maximumese=document.getElementById("f3").value;
                var maximumsess=document.getElementById("f4").value;
                var obtainedese=document.getElementById("f5").value;
                var obtainedsess=document.getElementById("f6").value;
                var carryover=document.getElementById("f7").value;
                var examtype=document.getElementById("t8").value;
                
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
                        document.getElementById("fillmark").innerHTML=xmlhttp.responseText;
                    }
                    
                }
                
                xmlhttp.open("GET","marksheetfillmarksjsp.jsp?se="+semester+"&en="+examname+"&ro="+roll+"&sc="+subcode+"&sn="+subname+"&mese="+maximumese+"&msess="+maximumsess+"&oese="+obtainedese+"&osess="+obtainedsess+"&cv="+carryover+"&ext="+examtype,true);
                xmlhttp.send();
            }
                
            
        </script>
    </head>
    <body>
        <form method="post" action="marksheetfillmarksjsp.jsp" >
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
                    <a href="">
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
                            <a href="">
                                <label class="p6">
                                    Student List
                                    
                                </label>
                                
                            </a>
                            
                        </div>
                        <div class="line"></div>
                        
                        <div class="mid31">
                            <a href="">
                                <label class="p6">
                                    Attendence Mark
                                    
                                </label>
                            </a>
                        </div>
                        <div class="line"></div>
                
                        <div class="mid31">
                            <a href="">
                                <label class="p6">
                                     Booklet Checking
                                     
                                </label>
                            </a>
                        </div>
                        <div class="line"></div>
                
                        <div class="mid31">
                            <a href="">
                                <label class="p6">
                                    Marks Upload
                                    
                                </label>
                            </a>
                        </div>
                        <div class="line"></div>
                        <div class="mid31">
                            <a href="">
                                <label class="p6">
                                    Assement upload
                                    
                                </label>
                            </a>
                        </div>
                        <div class="line"></div>
                        <div class="mid31">
                            <a href="">
                                <label class="p6">
                                
                                </label>
                            </a>
                        </div>
                        <div class="mid31">
                            <a href="">
                                <label class="p6">
                                    
                                </label>
                            </a>
                        </div>
                </td>
                <td style="position: relative; height: auto;width: auto;">
                    <div class="gardesheet">
                        <div class="topgarde">
                            <div class="topgarde1">
                                <label class="m1">Marksheet-Form</label>
                            </div>
                            <div class="markmid"></div>
                            <div class="topdetail">
                                <table border="1px" height="250px" width="1000px" cellpsdding="1px" cellspacing="0px">
                                    <Tr>
                                        <td class="pf1">
                                            <label class="marklebel">Roll No.</label>
                                        </td>
                                        <td class="pf1">
                                            <input type="text" id="t1" name="t1" class="markinput">
                                        </td>
                                        <td class="pf1">
                                            <label class="marklebel">Student's Name</label>
                                        </td>
                                        <td class="pf1">
                                            <input type="text" id="t2" name="t2" class="markinput">
                                        </td>
                                    </Tr>
                                    <Tr>
                                        <td class="pf1">
                                            <label class="marklebel">Father Name</label>
                                        </td>
                                        <td class="pf1">
                                            <input type="text" id="t3" name="t3" class="markinput">
                                        </td>
                                        <td class="pf1">
                                            <label class="marklebel">Mother Name</label>
                                        </td>
                                        <td class="pf1">
                                            <input type="text" id="t4" name="t4" class="markinput">
                                        </td>
                                    </Tr>
                                    <Tr>
                                        <td class="pf1">
                                            <label class="marklebel">Course</label>
                                        </td>
                                        <td class="pf1">
                                            <select id="t5" name="t5" class="markinput" onchange="loadsubject()" >
                                                <option>-- Select --</option>
                                                <option>BTECH</option>
                                                <option>MTECH</option>
                                                <option>MBA</option>
                                                <option>BBA</option>
                                                <option>LLB</option>
                                                <option>BARCH</option>
                                                <option>Other</option>
                                            </select>
                                        </td>
                                        <td class="pf1">
                                            <label class="marklebel">Branch</label>
                                        </td>
                                        <td class="pf1">
                                            <select id="t6" name="t6" class="markinput" onchange="loadsubject()">
                                                <option>-- Select --</option>
                                                <option>Computer Science Engineering</option>
                                                <option>Civil Engineering</option>
                                                <option>Eelectrical Engineering</option>
                                                <option>Mechanical Engineering</option>
                                                <option>Electrical & Electronics Engineering</option>
                                                <option>Bio Technical</option>
                                                <option>Other</option>
                                            </select>
                                        </td>
                                    </Tr>
                                    <Tr>
                                        <td class="pf1">
                                            <label class="marklebel">Semester</label>
                                        </td>
                                        <td class="pf1">
                                            <select id="t7"  name="t7" class="markinput" onchange="loadsubject()" >
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
                                        </td>
                                        <td class="pf1">
                                            <label class="marklebel">Exam Type</label>
                                        </td>
                                        <td class="pf1">
                                            <select id="t8"  name="t8" class="markinput" >
                                                <option>-- Select --</option>
                                                <option>Regular</option>
                                                <option>Back Paper</option>
                                                <option>Special Back</option>
                                                
                                            </select>
                                        </td>
                                    </Tr>
                                    <Tr>
                                        <td class="pf1">
                                            <label class="marklebel">Examination Name</label>
                                        </td>
                                        <td>
                                            <select id="t11"  name="t11" class="markinput" >
                                                <option>-- Select --</option>
                                                <option>ODD SEMESTER 2023-24</option>
                                            </select>
                                        </td>
                                        
                                        <td class="pf1">
                                            <label class="marklebel">Date of Birth</label>
                                        </td>
                                        <td>
                                            <input type="date" id="t10" name="t10" class="markinput">
                                        </td>
                                        
                                    </Tr>
                                    <Tr>
                                        <td class="pf1">
                                            <label class="marklebel">Institute Name & Code</label>
                                        </td>
                                        <td colspan="3">
                                            <input type="text" id="t9" name="t9" style="position: relative; width:750px ; height: 35px; border-color: black; border-radius: 5px;">
                                        </td>
                                        
                                    </Tr>
                                </table>
                            </div>
                            <div class="markmid"></div>
                            <div id="fillmark">
                                
                            </div>
                            
                            <div class="calmark">
                                <input type="submit" value="Submit" class="exb" style="position: relative; left: 350px" >
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

<%-- 
    Document   : Subjectform
    Created on : 24 Feb, 2024, 4:17:41 PM
    Author     : ADHIKARI BISHAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="subjectformcss.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <form method="post" action="subjectformjsp.jsp">
            <div class="topdiv">
        <div class="top1div">
            <div class="top2div"></div>
            <div class="top3div">
                <label class="l1">
                    Subject Form
                </label>
            </div>
        </div>
    </div>

    <div class="contentdiv">
        <div class="content1div">
            <div class="content2div"></div>

            <div id="detaildiv">
                <div id="detail1div">
                    <label style="position: relative; font-size: 18px; font-weight: bold; color: rgb(69, 49, 162); top: 10px; left: 400px;">
                         Fill The Detail Of All Subject
                    </label>

                </div>
                
                <div id="detail2div">
                    <div id="detail21div">
                        <label style="position: relative; font-size: 16px; color: rgb(14, 8, 8); top: 20px; left: 20px; ">
                            course
                        </label>
                    </div>
                    <div id="detail21div">
                        <label style="position: relative; font-size: 16px; color: rgb(14, 8, 8); top: 20px; left: 20px; ">
                            Branch
                        </label>
                    </div>
                    <div id="detail21div">
                        <label style="position: relative; font-size: 16px; color: rgb(14, 8, 8); top: 20px; left: 20px; ">
                            Semester
                        </label>
                    </div>
                </div>

                <div id="detail2div">
                    <div id="detail21div">
                        <select id="s1" name="s1" style="position: relative; height: 30px; border-radius: 5px; width: 350px; left: 20px; ">
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
                    <div id="detail21div">
                        <select id="s2" name="s2" style="position: relative; height: 30px; border-radius: 5px; width: 350px; left: 20px; ">
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
                    <div id="detail21div">
                        <select id="s3" name="s3" style="position: relative; height: 30px; border-radius: 5px; width: 350px; left: 20px; ">
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

                <div id="detail2div">
                    <div id="detail21div">
                        <label style="position: relative; font-size: 16px; color: rgb(14, 8, 8); top: 20px; left: 20px; ">
                            Subject Name
                        </label>
                    </div>
                    <div id="detail21div">
                        <label style="position: relative; font-size: 16px; color: rgb(14, 8, 8); top: 20px; left: 20px; ">
                            Subject Code
                        </label>
                    </div>
                    <div id="detail21div">
                        <label style="position: relative; font-size: 16px; color: rgb(14, 8, 8); top: 20px; left: 20px; ">
                            Subject Type
                        </label>
                    </div>
                </div>

                <div id="detail2div">
                    <div id="detail21div">
                        <input type="text" id="s4" name="s4" placeholder="Enter The Subject Name" style="position: relative; height: 30px; border-radius: 5px; width: 350px; left: 20px;" >

                    </div>
                    <div id="detail21div">
                        <input type="text" id="s5" name="s5" placeholder="Enter The Subject code" style="position: relative; height: 30px; border-radius: 5px; width: 350px; left: 20px;" >
                    </div>
                    <div id="detail21div">
                        <select id="s6" name="s6" style="position: relative; height: 30px; border-radius: 5px; width: 350px; left: 20px; ">
                            <option>-- Select --</option>
                            <option>TH</option>
                            <option>PR</option>
                            
                            
                        </select> >

                    </div>
                </div>

                <div id="detail2div">
                    <div id="detail21div">
                        <label style="position: relative; font-size: 16px; color: rgb(14, 8, 8); top: 20px; left: 20px; ">
                            Credit Hour
                        </label>
                        
                    </div>
                    
                    <div id="detail21div">
                        <label style="position: relative; font-size: 16px; color: rgb(14, 8, 8); top: 20px; left: 20px; ">
                            Maximum External Marks
                        </label>
                        
                    </div>
                    
                    <div id="detail21div">
                        <label style="position: relative; font-size: 16px; color: rgb(14, 8, 8); top: 20px; left: 20px; ">
                            Maximum Sessional Marks
                        </label>
                        
                    </div>
                    
                </div>

                <div id="detail2div">
                    <div id="detail21div">
                        <input type="text" id="s7" name="s7" placeholder="Enter The credit hour" style="position: relative; height: 30px; border-radius: 5px; width: 350px; left: 20px;" >

                    </div>
                    
                    <div id="detail21div">
                        <input type="text" id="s8" name="s8" placeholder="Enter The Maximum External Marks" style="position: relative; height: 30px; border-radius: 5px; width: 350px; left: 20px;" >

                    </div>
                    
                    <div id="detail21div">
                        <input type="text" id="s9" name="s9" placeholder="Enter The Maximum Sessional Marks" style="position: relative; height: 30px; border-radius: 5px; width: 350px; left: 20px;" >

                    </div>
                </div>
                
                <div id="detail2div">
                    <div id="detail21div">
                        <input type="submit" value="ADD" style="position: relative; font-size: 18px; font-weight: bold; color: rgb(7, 17, 14); background-color: aquamarine; height: 30px; border-radius: 10px;  width: 150px; top: 5px; left: 20px;">

                    </div>
                     
                </div>
            </div>
            
            <div class="content2div"></div>    
        </div>
    </div>

    <div class="fotter">
        <div class="fotter1">
            
            <div class="fotter2">
                <label style="position: relative; font-size: 20px; font-weight: bold; color: rgb(11, 10, 10); top: 150px; left: 450px;">
                    Tulas Institute Of Engineering College
                </label>
            </div>
        </div>
    </div>
        </form>
    </body>
</html>

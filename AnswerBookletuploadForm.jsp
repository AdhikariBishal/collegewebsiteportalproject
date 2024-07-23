<%-- 
    Document   : AnswerBookletuploadForm
    Created on : 15 Apr, 2024, 6:40:03 PM
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
        <form method="post" action="AnswerBookletjsp.jsp" enctype="multipart/form-data">
            <div class="topdiv">
        <div class="top1div">
            <div class="top2div">
                <div id="div11">
                    <img src="img/logo.jpg" style="position: relative; height: 150px; width: 150px; border-radius: 100%;">
                </div>
                <div id="div12"></div>
                
                    <P class="p3">तुला तकनीकी विश्वविद्यालय, देहरादून, भारत</P>
                    <P class="p4">Tula's Technical University, Dehradun, India</P>
            </div>
            <div class="top3div">
                <label class="l1">
                    Booklet Upload Form
                </label>
            </div>
        </div>
    </div>

    <div class="contentdiv">
        <div class="content1div">
            <div class="content2div"></div>

            <div id="detaildiv">
                <div id="detail1div">
                    <label style="position: relative; font-size: 18px; font-weight: bold; color: rgb(69, 49, 162); top: 10px; left: 500px;">
                         Fill The Answer Booklet
                    </label>

                </div>
                
                <div id="detail2div">
                    <div id="detail21div">
                        <label style="position: relative; font-size: 16px; color: rgb(14, 8, 8); top: 20px; left: 20px; ">
                            Roll No
                        </label>
                    </div>
                    <div id="detail21div">
                        <label style="position: relative; font-size: 16px; color: rgb(14, 8, 8); top: 20px; left: 20px; ">
                            Course
                        </label>
                    </div>
                    <div id="detail21div">
                        <label style="position: relative; font-size: 16px; color: rgb(14, 8, 8); top: 20px; left: 20px; ">
                            Branch
                        </label>
                    </div>
                </div>

                <div id="detail2div">
                    <div id="detail21div">
                        <input type="text" id="s1" class="s1" placeholder="Enter The Roll No" style="position: relative; height: 30px; border-radius: 5px; width: 350px; left: 20px;" >

                    </div>
                    <div id="detail21div">
                        <select id="s2"  name="s2" style="position: relative; height: 30px; border-radius: 5px; width: 350px; left: 20px;" >
                            
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
                        <select id="s3"  name="s3" style="position: relative; height: 30px; border-radius: 5px; width: 350px; left: 20px;" >
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
                </div>

                

                

                <div id="detail2div">
                    <div id="detail21div">
                        <label style="position: relative; font-size: 16px; color: rgb(14, 8, 8); top: 20px; left: 20px; ">
                            Semester
                        </label>
                    </div>
                    <div id="detail21div">
                        <label style="position: relative; font-size: 16px; color: rgb(14, 8, 8); top: 20px; left: 20px; ">
                            Subject Code
                        </label>
                    </div>
                    <div id="detail21div">
                        <label style="position: relative; font-size: 16px; color: rgb(14, 8, 8); top: 20px; left: 20px; ">
                            Examination Name
                        </label>
                    </div>
                    
                </div>

                <div id="detail2div">
                    <div id="detail21div">
                        <select id="s4"  name="s4" style="position: relative; height: 30px; border-radius: 5px; width: 350px; left: 20px;" >
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
                    <div id="detail21div">
                        <select id="s5"  name="s5" style="position: relative; height: 30px; border-radius: 5px; width: 350px; left: 20px;" >
                            
                            <option>-- Select --</option>
                            <option>Bcst-101</option>
                            <option>Bcst-102</option>
                            <option>Bcst-103</option>
                            
                       
                    </select>
                    </div>
                    <div id="detail21div">
                        <select id="s6"  name="s6" style="position: relative; height: 30px; border-radius: 5px; width: 350px; left: 20px;" >
                            
                            <option>-- Select --</option>
                            <option>ODD SEMESTER 2023-24</option>
                                
                           
                        </select>

                    </div>
                </div>


                <div id="detail2div">
                    <div id="detail21div">
                        <label style="position: relative; font-size: 16px; color: rgb(14, 8, 8); top: 20px; left: 20px; ">
                            Answer Booklet
                        </label>
                    </div>
                    
                    
                </div>

                <div id="detail2div">
                    
                    
                    <div id="detail21div">
                        <input type="file" id="s7" class="s7"  style="position: relative; font-size: 14px; height: 30px; border-radius: 5px; width: 350px; left: 20px;" >
                    </div>
                    <div id="detail21div">
                        <input type="hidden" id="s8" class="s8"  style="position: relative; font-size: 14px; height: 30px; border-radius: 5px; width: 350px; left: 20px;" >
                    </div>
                    
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
                <label style="position: relative; font-size: 20px; font-weight: bold; color: rgb(11, 10, 10); top: 150px; left: 500px;">
                    Tulas Institute Of Engineering College
                </label>
            </div>
        </div>
    </div>
        </form>
    </body>
</html>

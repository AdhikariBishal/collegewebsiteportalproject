<%-- 
    Document   : Enrollregupdate
    Created on : 24 Feb, 2024, 5:15:03 PM
    Author     : ADHIKARI BISHAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="Enrollregcss.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <form method="post" action="Enrollregjsp.jsp">
            <div id="enrolldiv">
        <div id="enrolltopdiv">
            <div id="enrolltop1div">
                <div id="enrolltop2div"></div>
                <div id="enrolltop3div">
                    <label style="position: relative; font-size: 30px; font-weight: bold; color: white; top: 50px; left: 100px;">
                        Enrollment Register
                    </label>
                </div>
            </div>
            <div id="detaildiv">
                <div id="detail1div">
                    <label style="position: relative; font-size: 18px; font-weight: bold; color: rgb(69, 49, 162); top: 10px; left: 350px;">
                         Enrollment Registration Form For Student Detail Update
                    </label>

                </div>
                <div id="detail2div">
                    <div id="detail21div">
                        <label style="position: relative; font-size: 16px; color: rgb(14, 8, 8); top: 20px; left: 20px; ">
                            Student Name
                        </label>
                    </div>
                    <div id="detail21div">
                        <label style="position: relative; font-size: 16px; color: rgb(14, 8, 8); top: 20px; left: 20px; ">
                            Father Name
                        </label>
                    </div>
                    <div id="detail21div">
                        <label style="position: relative; font-size: 16px; color: rgb(14, 8, 8); top: 20px; left: 20px; ">
                            Mother Name
                        </label>
                    </div>
                </div>

                <div id="detail2div">
                    <div id="detail21div">
                        <input type="text" id="t1" name="t1" placeholder="Enter The Sudent Name" style="position: relative; height: 30px; border-radius: 5px; width: 350px; left: 20px; " >

                    </div>
                    <div id="detail21div">
                        <input type="text" id="t2" name="t2" placeholder="Enter The Father Name" style="position: relative; height: 30px; border-radius: 5px; width: 350px; left: 20px;" >
                    </div>
                    <div id="detail21div">
                        <input type="text" id="t3" name="t3" placeholder="Enter The Mother Name" style="position: relative; height: 30px; border-radius: 5px; width: 350px; left: 20px;" >
                    </div>
                </div>

                <div id="detail2div">
                    <div id="detail21div">
                        <label style="position: relative; font-size: 16px; color: rgb(14, 8, 8); top: 20px; left: 20px; ">
                            Date Of Birth
                        </label>
                    </div>
                    <div id="detail21div">
                        <label style="position: relative; font-size: 16px; color: rgb(14, 8, 8); top: 20px; left: 20px; ">
                            Mobile No.
                        </label>
                    </div>
                    <div id="detail21div">
                        <label style="position: relative; font-size: 16px; color: rgb(14, 8, 8); top: 20px; left: 20px; ">
                            Email Id
                        </label>
                    </div>
                </div>

                <div id="detail2div">
                    <div id="detail21div">
                        <input type="date" id="t4" name="t4"  style="position: relative; height: 30px; border-radius: 5px; width: 350px; left: 20px;" >

                    </div>
                    <div id="detail21div">
                        <input type="text" id="t5" name="t5" placeholder="Enter The 10 digit Mobile no" style="position: relative; height: 30px; border-radius: 5px; width: 350px; left: 20px;" >
                    </div>
                    <div id="detail21div">
                        <input type="text" id="t6" name="t6" placeholder="Enter The Email Id" style="position: relative; height: 30px; border-radius: 5px; width: 350px; left: 20px;" >
                    </div>
                </div>

                <div id="detail2div">
                    <div id="detail21div">
                        <label style="position: relative; font-size: 16px; color: rgb(14, 8, 8); top: 20px; left: 20px; ">
                            Gender
                        </label>
                    </div>
                    <div id="detail21div">
                        <label style="position: relative; font-size: 16px; color: rgb(14, 8, 8); top: 20px; left: 20px; ">
                            Adhar Card No.
                        </label>
                    </div>
                    <div id="detail21div">
                        <label style="position: relative; font-size: 16px; color: rgb(14, 8, 8); top: 20px; left: 20px; ">
                            Course
                        </label>
                    </div>
                </div>

                <div id="detail2div">
                    <div id="detail21div">
                        <select id="t7" name="t7" style="position: relative; height: 30px; border-radius: 5px; width: 350px; left: 20px; ">
                            <option>-- Select --</option>
                            <option>Male</option>
                            <option>Female</option>
                            <option>Other</option>
                            
                        </select> >

                    </div>
                    <div id="detail21div">
                        <input type="text" id="t8" name="t8" placeholder="Enter The Adhar card no." style="position: relative; height: 30px; border-radius: 5px; width: 350px; left: 20px;" >
                    </div>
                    <div id="detail21div">
                        
                        <select id="t9" name="t9" style="position: relative; height: 30px; border-radius: 5px; width: 350px; left: 20px; ">
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

                <div id="detail2div">
                    <div id="detail21div">
                        <label style="position: relative; font-size: 16px; color: rgb(14, 8, 8); top: 20px; left: 20px; ">
                            Branch
                        </label>
                    </div>
                    <div id="detail21div">
                        <label style="position: relative; font-size: 16px; color: rgb(14, 8, 8); top: 20px; left: 20px; ">
                            Year
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
                        <select id="s2" name="s2" style="position: relative; height: 30px; border-radius: 5px; width: 350px; left: 20px; ">
                            <option>-- Select --</option>
                            <option>First</option>
                            <option>Second</option>
                            <option>Third</option>
                            <option>Fourth</option>
                            
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
                            Age
                        </label>
                    </div>
                    <div id="detail21div">
                        <label style="position: relative; font-size: 16px; color: rgb(14, 8, 8); top: 20px; left: 20px; ">
                            Session
                        </label>
                    </div>
                    <div id="detail21div">
                        <label style="position: relative; font-size: 16px; color: rgb(14, 8, 8); top: 20px; left: 20px; ">
                            Country
                        </label>
                    </div>
                </div>

                <div id="detail2div">
                    <div id="detail21div">
                        <input type="text" id="s4" name="s4" placeholder="Enter The Age" style="position: relative; height: 30px; border-radius: 5px; width: 350px; left: 20px;" >

                    </div>
                    <div id="detail21div">
                        <input type="text" id="s5" name="s5" placeholder="Enter The Session." style="position: relative; height: 30px; border-radius: 5px; width: 350px; left: 20px;" >
                    </div>
                    <div id="detail21div">
                        <input type="text" id="s6" name="s6" placeholder="Enter The Country Name" style="position: relative; height: 30px; border-radius: 5px; width: 350px; left: 20px;" >
                    </div>
                </div>

                <div id="detail2div">
                    <div id="detail21div">
                        <label style="position: relative; font-size: 16px; color: rgb(14, 8, 8); top: 20px; left: 20px; ">
                            State
                        </label>
                    </div>
                    <div id="detail21div">
                        <label style="position: relative; font-size: 16px; color: rgb(14, 8, 8); top: 20px; left: 20px; ">
                            City
                        </label>
                    </div>
                    <div id="detail21div">
                        <label style="position: relative; font-size: 16px; color: rgb(14, 8, 8); top: 20px; left: 20px; ">
                            Pin-Code
                        </label>
                    </div>
                </div>

                <div id="detail2div">
                    <div id="detail21div">
                        <input type="text" id="s7" name="s7" placeholder="Enter The State Name" style="position: relative; height: 30px; border-radius: 5px; width: 350px; left: 20px;" >

                    </div>
                    <div id="detail21div">
                        <input type="text" id="s8" name="s8" placeholder="Enter The City name" style="position: relative; height: 30px; border-radius: 5px; width: 350px; left: 20px;" >
                    </div>
                    <div id="detail21div">
                        <input type="text" id="s9" name="s9" placeholder="Enter The Pin-Code" style="position: relative; height: 30px; border-radius: 5px; width: 350px; left: 20px;" >
                    </div>
                </div>

                <div id="detail2div">
                    <div id="detail21div">
                        <label style="position: relative; font-size: 16px; color: rgb(14, 8, 8); top: 20px; left: 20px; ">
                            Enter New password
                        </label>
                    </div>
                    <div id="detail21div">
                        <label style="position: relative; font-size: 16px; color: rgb(14, 8, 8); top: 20px; left: 20px; ">
                            Re-enter New Password
                        </label>
                    </div>
                    <div id="detail21div">
                        <label style="position: relative; font-size: 16px; color: rgb(14, 8, 8);; top: 20px; left: 20px; ">
                            Institute Code
                        </label>
                    </div>
                </div>

                <div id="detail2div">
                    <div id="detail21div">
                        <input type="text" id="u1" name="u1" placeholder="Enter The Password" style="position: relative; height: 30px; border-radius: 5px; width: 350px; left: 20px;" >

                    </div>
                    <div id="detail21div">
                        <input type="text" id="u2" name="u2" placeholder="Re-Enter The Password" style="position: relative; height: 30px; border-radius: 5px; width: 350px; left: 20px;" >
                    </div>
                    <div id="detail21div">
                        <input type="text" id="u3" name="u3" placeholder="Enter The Institute-code" style="position: relative; height: 30px; border-radius: 5px;  width: 350px; left: 20px;" >
                    </div>
                </div>

                <div id="detail2div">
                    <div id="detail21div">
                        <label style="position: relative; font-size: 16px; color: rgb(14, 8, 8); top: 20px; left: 20px; ">
                            College ID
                        </label>
                    </div>
                    <div id="detail21div">
                        <label style="position: relative; font-size: 16px; color: rgb(14, 8, 8); top: 20px; left: 20px; ">
                            Registration Number
                        </label>
                    </div>
                    
                </div>

                <div id="detail2div">
                    <div id="detail21div">
                        <input type="text" id="u4" name="u4"   placeholder="Enter The Category" style="position: relative; height: 30px; border-radius: 5px; width: 350px; left: 20px;" >

                    </div>
                    <div id="detail21div">
                        <input type="text" id="u5" name="u5" style="position: relative; height: 30px; border-radius: 5px; width: 350px; left: 20px;" >
                    </div>
                    <div id="detail21div">
                        <input type="hidden" id="u6" name="u6" style="position: relative; height: 30px; border-radius: 5px;  width: 350px; left: 20px;" >
                    </div>
                </div>

                <div id="detail2div">

                    <div id="detail21div">
                        <input type="file"   style="position: relative; height: 30px; border-radius: 5px; width: 350px; left: 20px; top: 20px;" >
                    </div>
                    <div id="detail21div">
                        <input type="Submit" value="Submit" style="position: relative; font-size: 18px; font-weight: bold; color: rgb(7, 17, 14); background-color: aquamarine; height: 30px; border-radius: 10px;  width: 150px; top: 10px; left: 20px;">
                    </div>

                    <!-- Transaction id -->
                    <div id="detail21div">
                        <input type="hidden" id="u7" name="u7"   style="position: relative; height: 30px; border-radius: 5px; width: 350px; left: 20px;" >
                    </div>

                </div>
            </div>
        </div>
    </div>
        </form>
    </body>
</html>

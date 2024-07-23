<%-- 
    Document   : Studentdashboard
    Created on : 27 Feb, 2024, 9:43:57 PM
    Author     : ADHIKARI BISHAL
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
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
             <%
            String url="";
            String user="root";
            String password="root";
            Statement st;
            Connection con;
            PreparedStatement pst;
            ResultSet res;
            
            try
            {
                String UserId=(String)session .getAttribute("userName");
                Class.forName("com.mysql.jdbc.Driver");
                con=DriverManager.getConnection("jdbc:mysql://localhost:/erpportal", "root","root");
                st=con.createStatement();
                String InsertQuery="select * from enrollreg where college_id='"+UserId+"' ";
                res=st.executeQuery(InsertQuery);
                
                
                if(res.next())
                {
                    
             
        %>
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
                    <div class="mid1">
                        <div class="mid12">
                            <p class="p5">Student Name</p>
                        </div>
                        <div class="mid13">:</div>
                        <div class="mid12"><% out.print(res.getString(1)); %></div>
                
                        <div class="mid12">
                            <p class="p5">Father Name</p>
                        </div>
                        <div class="mid13">:</div>
                        <div class="mid12"> <% out.print(res.getString(2)); %></div>
                
                        <div class="mid12">
                            <p class="p5">Mother Name</p>
                        </div>
                        <div class="mid13">:</div>
                        <div class="mid12"><% out.print(res.getString(3)); %></div>
                
                        <div class="mid12">
                            <p class="p5">Date Of Birth</p>
                        </div>
                        <div class="mid13">:</div>
                        <div class="mid12"><% out.print(res.getString(4)); %></div>
                
                        <div class="mid12">
                            <p class="p5">Mobile No.</p>
                        </div>
                        <div class="mid13">:</div>
                        <div class="mid12"><% out.print(res.getString(5)); %></div>
                
                        <div class="mid12">
                            <p class="p5">Email Id</p>
                        </div>
                        <div class="mid13">:</div>
                        <div class="mid12"><% out.print(res.getString(6)); %></div>
                
                        <div class="mid12">
                            <p class="p5">Gender</p>
                        </div>
                        <div class="mid13">:</div>
                        <div class="mid12"><% out.print(res.getString(7)); %></div>
                
                        <div class="mid12">
                            <p class="p5">AdharCard No.</p>
                        </div>
                        <div class="mid13">:</div>
                        <div class="mid12"><% out.print(res.getString(8)); %></div>
                
                        <div class="mid12">
                            <p class="p5">Course</p>
                        </div>
                        <div class="mid13">:</div>
                        <div class="mid12"><% out.print(res.getString(9)); %></div>
                
                        <div class="mid12">
                            <p class="p5">Branch</p>
                        </div>
                        <div class="mid13">:</div>
                        <div class="mid12"><% out.print(res.getString(10)); %></div>
                
                        <div class="mid12">
                            <p class="p5">Year</p>
                        </div>
                        <div class="mid13">:</div>
                        <div class="mid12"><% out.print(res.getString(11)); %></div>
                        
                        <div class="mid12">
                            <p class="p5">Semester</p>
                        </div>
                        <div class="mid13">:</div>
                        <div class="mid12"><% out.print(res.getString(12)); %></div>
                
                        <div class="mid12">
                            <p class="p5">Age</p>
                        </div>
                        <div class="mid13">:</div>
                        <div class="mid12"><% out.print(res.getString(13)); %></div>
                    </div>
        
                    <div class="mid2">
                        <div class="mid21">
                            <img src="img/raghav (1).webp " class="mid23">
                        </div>
                        <div class="mid22">
                
                            <div class="mid12">
                                <p class="p5">Session</p>
                            </div>
                            <div class="mid13">:</div>
                            <div class="mid12"><% out.print(res.getString(14)); %></div>
                
                            <div class="mid12">
                                <p class="p5">Country</p>
                            </div>
                            <div class="mid13">:</div>
                            <div class="mid12"><% out.print(res.getString(15)); %></div>
                
                            <div class="mid12">
                                <p class="p5">State</p>
                            </div>
                            <div class="mid13">:</div>
                            <div class="mid12"><% out.print(res.getString(16)); %></div>
                            
                            <div class="mid12">
                                <p class="p5">City</p>
                            </div>
                            <div class="mid13">:</div>
                            <div class="mid12"><% out.print(res.getString(17)); %></div>
                
                            <div class="mid12">
                                <p class="p5">Pin-Code</p>
                            </div>
                            <div class="mid13">:</div>
                            <div class="mid12"><% out.print(res.getString(18)); %></div>
                            <div class="mid12">
                                <p class="p5">Institute Code</p>
                            </div>
                            <div class="mid13">:</div>
                            <div class="mid12"><% out.print(res.getString(21)); %></div>
                
                            <div class="mid12">
                                <p class="p5">College ID</p>
                            </div>
                            <div class="mid13">:</div>
                            <div class="mid12"><% out.print(res.getString(22)); %></div>
                
                            <div class="mid12">
                                <p class="p5">Registration Number</p>
                            </div>
                            <div class="mid13">:</div>
                            <div class="mid12"><% out.print(res.getString(23)); %></div>
                
                            <div class="mid12">
                                <p class="p5">Enrollment ID</p>
                            </div>
                            <div class="mid13">:</div>
                            <div class="mid12" ><% out.print(res.getString(24)); %></div>
                
                            
                        
                
                            
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
        <%
                       }
            }
            
            catch(Exception error)
            {
                out.print(error);
            }
                    %>
        </form>
    </body>
</html>

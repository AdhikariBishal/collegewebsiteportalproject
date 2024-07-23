<%-- 
    Document   : studentupdateform
    Created on : 29Feb, 2024, 7:33:44 AM
    Author     : ADHIKARI BISHAL
--%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="Dashboardcss.css" rel="stylesheet" type="text/css">
    </head>
    
        <form method="post" action="studentupdateformjsp.jsp">
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
                String UserId=(String)session.getAttribute("userName");
                Class.forName("com.mysql.jdbc.Driver");
                con=DriverManager.getConnection("jdbc:mysql://localhost:/erpportal", "root","root");
                st=con.createStatement();
                String InsertQuery="select * from enrollreg where college_id='"+UserId+"'";
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
                    <div class="exfm">
                        <div class="extop">
                            <label class="extopl">Student Update Form</label>
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
                                <input type="text" id="t1" name="t1" value="<% out.print(res.getString(1)); %>" placeholder="Enter Your Name" class="exi">
                            </div>
                            <div class="exdetail1">
                                <input type="text" id="t2" name="t2" value="<% out.print(res.getString(2)); %>" placeholder="Enter Your Name" class="exi">
                            </div>
                            <div class="exdetail1">
                                <input type="text" id="t3" name="t3" value="<% out.print(res.getString(3)); %>" placeholder="Enter Your Name" class="exi">
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
                                <input type="date" id="t4" name="t4" value="<% out.print(res.getString(4)); %>"  class="exi">
                            </div>
                            <div class="exdetail1">
                                <input type="text" id="t5" name="t5" value="<% out.print(res.getString(5)); %>" placeholder="Enter Your Mobile no" class="exi">
                            </div>
                            <div class="exdetail1">
                                <input type="text" id="t6" name="t6" value="<% out.print(res.getString(6)); %>" placeholder="Enter Your email id" class="exi">
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
                                
                                    <% 
                               
                                        String s1=res.getString(7);
                                        
                                        if(s1.equals("Male"))
                                        {
                                            %>
                                        <select id="t7" name="t7" class="exi" >
                                    <option>-- Select --</option>
                                    <option selected >Male</option>
                                    <option>Female</option>
                                         </select> >
                                    <%
                                            
                                        }
                                        else
                                         {
                                            %>
                                        <select id="t7" name="t7" class="exi" >
                                    <option>-- Select --</option>
                                    <option >Male</option>
                                    <option selected >Female</option>
                                             </select> >
                                    <%
                                        }
                                    %>
                           
                            </div>
                            <div class="exdetail1">
                                <input type="text" id="t8" name="t8" value="<% out.print(res.getString(8)); %>" placeholder="Enter Your Name" class="exi">
                            </div>
                            <div class="exdetail1">
                                <% 
                               
                                        String s2=res.getString(9);
                                        
                                        if(s2.equals("BTECH"))
                                        {
                                            %>
                                <select id="t9" name="t9" class="exi" >
                                    <option>-- Select --</option>
                                    <option selected>BTECH</option>
                                    <option>MTECH</option>
                                    <option>MBA</option>
                                    <option>BBA</option>
                                    <option>LLB</option>
                                    <option>BARCH</option>
                                    <option>Other</option>
                                </select>
                                <%
                                            
                                        }
                                        else if(s2.equals("MTECH"))
                                         {
                                            %>
                                            <select id="t9" name="t9" class="exi" >
                                    <option>-- Select --</option>
                                    <option>BTECH</option>
                                    <option selected>MTECH</option>
                                    <option>MBA</option>
                                    <option>BBA</option>
                                    <option>LLB</option>
                                    <option>BARCH</option>
                                    <option>Other</option>
                                </select>
                               <%
                                            
                                        }
                                        else if(s2.equals("MBA"))
                                         {
                                            %>
                                            <select id="t9" name="t9" class="exi" >
                                    <option>-- Select --</option>
                                    <option>BTECH</option>
                                    <option>MTECH</option>
                                    <option selected>MBA</option>
                                    <option>BBA</option>
                                    <option>LLB</option>
                                    <option>BARCH</option>
                                    <option>Other</option>
                                </select>
                                <%
                                            
                                        }
                                        else if(s2.equals("BBA"))
                                         {
                                            %>
                                            <select id="t9" name="t9" class="exi" >
                                    <option>-- Select --</option>
                                    <option>BTECH</option>
                                    <option>MTECH</option>
                                    <option>MBA</option>
                                    <option selected>BBA</option>
                                    <option>LLB</option>
                                    <option>BARCH</option>
                                    <option>Other</option>
                                </select>
                                <%
                                            
                                        }
                                        else if(s2.equals("LLB"))
                                         {
                                            %>
                                            <select id="t9" name="t9" class="exi" >
                                    <option>-- Select --</option>
                                    <option>BTECH</option>
                                    <option>MTECH</option>
                                    <option>MBA</option>
                                    <option>BBA</option>
                                    <option selected>LLB</option>
                                    <option>BARCH</option>
                                    <option>Other</option>
                                </select>
                                <%
                                            
                                        }
                                        else if(s2.equals("BARCH"))
                                         {
                                            %>
                                            <select id="t9" name="t9" class="exi" >
                                    <option>-- Select --</option>
                                    <option>BTECH</option>
                                    <option>MTECH</option>
                                    <option>MBA</option>
                                    <option>BBA</option>
                                    <option>LLB</option>
                                    <option selected>BARCH</option>
                                    <option>Other</option>
                                </select>
                                <%
                                            
                                        }
                                        else if(s2.equals("Other"))
                                         {
                                            %>  
                                            <select id="t9" name="t9" class="exi" >
                                    <option>-- Select --</option>
                                    <option>BTECH</option>
                                    <option>MTECH</option>
                                    <option>MBA</option>
                                    <option>BBA</option>
                                    <option>LLB</option>
                                    <option>BARCH</option>
                                    <option selected>Other</option>
                                </select>
                                            <%
                                                 }
                                            %>
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
                                <%
                                        String s3=res.getString(10);
                                        if(s3.equals("Computer Science Engineering"))
                                        {
                                    %>
                                <select id="s1" name="s1" class="exi">
                                    
                                    <option>-- Select --</option>
                                    <option selected>Computer Science Engineering</option>
                                    <option>Civil Engineering</option>
                                    <option>Eelectrical Engineering</option>
                                    <option>Mechanical Engineering</option>
                                    <option>Electrical & Electronics Engineering</option>
                                    <option>Bio Technical</option>
                                    <option>Other</option>
                                </select>
                                    <%
                                        }
                                        else if(s3.equals("Civil Engineering"))
                                        {
                                    %>
                                    <select id="s1" name="s1" class="exi">
                                    
                                    <option>-- Select --</option>
                                    <option>Computer Science Engineering</option>
                                    <option selected>Civil Engineering</option>
                                    <option>Eelectrical Engineering</option>
                                    <option>Mechanical Engineering</option>
                                    <option>Electrical & Electronics Engineering</option>
                                    <option>Bio Technical</option>
                                    <option>Other</option>
                                </select>
                                    <%
                                        }
                                        else if(s3.equals("Eelectrical Engineering"))
                                        {
                                    %>
                                    <select id="s1" name="s1" class="exi">
                                    
                                    <option>-- Select --</option>
                                    <option>Computer Science Engineering</option>
                                    <option>Civil Engineering</option>
                                    <option selected>Eelectrical Engineering</option>
                                    <option>Mechanical Engineering</option>
                                    <option>Electrical & Electronics Engineering</option>
                                    <option>Bio Technical</option>
                                    <option>Other</option>
                                </select>
                                    <%
                                        }
                                        else if(s3.equals("Mechanical Engineering"))
                                        {
                                    %>
                                    <select id="s1" name="s1" class="exi">
                                    
                                    <option>-- Select --</option>
                                    <option>Computer Science Engineering</option>
                                    <option>Civil Engineering</option>
                                    <option>Eelectrical Engineering</option>
                                    <option selected>Mechanical Engineering</option>
                                    <option>Electrical & Electronics Engineering</option>
                                    <option>Bio Technical</option>
                                    <option>Other</option>
                                </select>
                                    <%
                                        }
                                        else if(s3.equals("Electrical & Electronics Engineering"))
                                        {
                                    %>
                                    <select id="s1" name="s1" class="exi">
                                    
                                    <option>-- Select --</option>
                                    <option>Computer Science Engineering</option>
                                    <option>Civil Engineering</option>
                                    <option>Eelectrical Engineering</option>
                                    <option>Mechanical Engineering</option>
                                    <option selected>Electrical & Electronics Engineering</option>
                                    <option>Bio Technical</option>
                                    <option>Other</option>
                                </select>
                                    <%
                                        }
                                        else if(s3.equals("Bio Technical"))
                                        {
                                    %>
                                    <select id="s1" name="s1" class="exi">
                                    
                                    <option>-- Select --</option>
                                    <option>Computer Science Engineering</option>
                                    <option>Civil Engineering</option>
                                    <option>Eelectrical Engineering</option>
                                    <option>Mechanical Engineering</option>
                                    <option>Electrical & Electronics Engineering</option>
                                    <option selected>Bio Technical</option>
                                    <option>Other</option>
                                </select>
                                    <%
                                        }
                                        else if(s3.equals("Other"))
                                        {
                                    %>
                                    <select id="s1" name="s1" class="exi">
                                    
                                    <option>-- Select --</option>
                                    <option>Computer Science Engineering</option>
                                    <option>Civil Engineering</option>
                                    <option>Eelectrical Engineering</option>
                                    <option>Mechanical Engineering</option>
                                    <option>Electrical & Electronics Engineering</option>
                                    <option>Bio Technical</option>
                                    <option selected>Other</option>
                                </select>
                                    <%
                                        }
                                    %>
                            </div>
                            <div class="exdetail1">
                                <%
                                        String s4=res.getString(11);
                                        if(s4.equals("First"))
                                        {
                                            
                                        
                                    %>
                                <select id="s2" name="s2" class="exi" >
                                    
                                    <option>-- Select --</option>
                                    <option selected>First</option>
                                    <option>Second</option>
                                    <option>Third</option>
                                    <option>Fourth</option>
                                    
                                </select>
                                    <%
                                        }
                                        else if(s4.equals("Second"))
                                        {
                                    %>
                                    <select id="s2" name="s2" class="exi" >
                                    
                                    <option>-- Select --</option>
                                    <option>First</option>
                                    <option selected>Second</option>
                                    <option>Third</option>
                                    <option>Fourth</option>
                                    
                                </select>
                                    <%
                                        }
                                        else if(s4.equals("Second"))
                                        {
                                    %>
                                    <select id="s2" name="s2" class="exi" >
                                    
                                    <option>-- Select --</option>
                                    <option>First</option>
                                    <option>Second</option>
                                    <option selected>Third</option>
                                    <option>Fourth</option>
                                    
                                </select>
                                    <%
                                        }
                                        else if(s4.equals("Second"))
                                        {
                                    %>
                                    <select id="s2" name="s2" class="exi" >
                                    
                                    <option>-- Select --</option>
                                    <option>First</option>
                                    <option>Second</option>
                                    <option>Third</option>
                                    <option selected>Fourth</option>
                                    
                                </select>
                                    <%
                                        }
                                        
                                    %>
                            </div>
                            <div class="exdetail1">
                                <%
                                        String s5=res.getString(12);
                                        if(s5.equals("1"))
                                        {
                                %>
                                <select id="s3"  name="s3" class="exi" >
                                    <option>-- Select --</option>
                                    <option selected>1</option>
                                    <option>2</option>
                                    <option>3</option>
                                    <option>4</option>
                                    <option>5</option>
                                    <option>6</option>
                                    <option>7</option>
                                    <option>8</option>
                                </select>
                                <%
                                        }
                                        else if(s5.equals("2"))
                                        {
                                %>
                                <select id="s3"  name="s3" class="exi" >
                                    <option>-- Select --</option>
                                    <option>1</option>
                                    <option selected>2</option>
                                    <option>3</option>
                                    <option>4</option>
                                    <option>5</option>
                                    <option>6</option>
                                    <option>7</option>
                                    <option>8</option>
                                </select>
                                 <%
                                        }
                                        else if(s5.equals("3"))
                                        {
                                %>
                                <select id="s3"  name="s3" class="exi" >
                                    <option>-- Select --</option>
                                    <option>1</option>
                                    <option>2</option>
                                    <option selected>3</option>
                                    <option>4</option>
                                    <option>5</option>
                                    <option>6</option>
                                    <option>7</option>
                                    <option>8</option>
                                </select>
                                 <%
                                        }
                                        else if(s5.equals("4"))
                                        {
                                %>
                                <select id="s3"  name="s3" class="exi" >
                                    <option>-- Select --</option>
                                    <option>1</option>
                                    <option>2</option>
                                    <option>3</option>
                                    <option selected>4</option>
                                    <option>5</option>
                                    <option>6</option>
                                    <option>7</option>
                                    <option>8</option>
                                </select>
                                 <%
                                        }
                                        else if(s5.equals("5"))
                                        {
                                %>
                                <select id="s3"  name="s3" class="exi" >
                                    <option>-- Select --</option>
                                    <option>1</option>
                                    <option>2</option>
                                    <option>3</option>
                                    <option>4</option>
                                    <option selected>5</option>
                                    <option>6</option>
                                    <option>7</option>
                                    <option>8</option>
                                </select>
                                 <%
                                        }
                                        else if(s5.equals("6"))
                                        {
                                %>
                                <select id="s3"  name="s3" class="exi" >
                                    <option>-- Select --</option>
                                    <option>1</option>
                                    <option>2</option>
                                    <option>3</option>
                                    <option>4</option>
                                    <option>5</option>
                                    <option selected>6</option>
                                    <option>7</option>
                                    <option>8</option>
                                </select>
                                 <%
                                        }
                                        else if(s5.equals("7"))
                                        {
                                %>
                                <select id="s3"  name="s3" class="exi" >
                                    <option>-- Select --</option>
                                    <option>1</option>
                                    <option>2</option>
                                    <option>3</option>
                                    <option>4</option>
                                    <option>5</option>
                                    <option>6</option>
                                    <option selected>7</option>
                                    <option>8</option>
                                </select>
                                 <%
                                        }
                                        else if(s5.equals("8"))
                                        {
                                %>
                                <select id="s3"  name="s3" class="exi" >
                                    <option>-- Select --</option>
                                    <option>1</option>
                                    <option>2</option>
                                    <option>3</option>
                                    <option>4</option>
                                    <option>5</option>
                                    <option>6</option>
                                    <option>7</option>
                                    <option selected>8</option>
                                </select>
                                 <%
                                        }
                                        
                                %>
                            </div>
                        </div>


                        <div class="exdetail">
                            <div class="exdetail1">
                                <label class="exl">
                                    Age
                                </label>
                            </div>
                            <div class="exdetail1">
                                <label class="exl">
                                    Session
                                </label>
                            </div>
                            <div class="exdetail1">
                                <label class="exl">
                                    Country
                                </label>
                            </div>
                        </div>

                        <div class="exdetail">
                            <div class="exdetail1">
                                <input type="text" id="s4" name="s4" value="<% out.print(res.getString(13)); %>" placeholder="Enter Your Age" class="exi">
                            </div>
                            <div class="exdetail1">
                                <input type="text" id="s5" name="s5" value="<% out.print(res.getString(14)); %>" placeholder="Enter Your Session" class="exi">
                            </div>
                            <div class="exdetail1">
                                <input type="text" id="s6" name="s6" value="<% out.print(res.getString(15)); %>" placeholder="Enter Your Country" class="exi">
                            </div>
                        </div>
                        
                        <div class="exdetail">
                            <div class="exdetail1">
                                <label class="exl">
                                    State
                                </label>
                            </div>
                            <div class="exdetail1">
                                <label class="exl">
                                    City
                                </label>
                            </div>
                            <div class="exdetail1">
                                <label class="exl">
                                    Pin-Code
                                </label>
                            </div>
                        </div>

                        <div class="exdetail">
                            <div class="exdetail1">
                                <input type="text" id="s7" name="s7" value="<% out.print(res.getString(16)); %>" placeholder="Enter Your State" class="exi">
                            </div>
                            <div class="exdetail1">
                                <input type="text" id="s8" name="s8" value="<% out.print(res.getString(17)); %>" placeholder="Enter Your Registration no" class="exi">
                            </div>
                            <div class="exdetail1">
                                <input type="text" id="s9" name="s9" value="<% out.print(res.getString(18)); %>" placeholder="Enter Your Enrollment no" class="exi">
                            </div>
                        </div>
                        
                        <div class="exdetail">
                            <div class="exdetail1">
                                <label class="exl">
                                    Enter New Password
                                </label>
                            </div>
                            <div class="exdetail1">
                                <label class="exl">
                                    Re-enter New Password
                                </label>
                            </div>
                            <div class="exdetail1">
                                <label class="exl">
                                    Institute-Code
                                </label>
                            </div>
                        </div>

                        <div class="exdetail">
                            <div class="exdetail1">
                                <input type="text" id="u1" name="u1" value="<% out.print(res.getString(19)); %>" placeholder="Enter Your Password" class="exi">
                            </div>
                            <div class="exdetail1">
                                <input type="text" id="u2" name="u2" value="<% out.print(res.getString(20)); %>" placeholder="Enter Your Password" class="exi">
                            </div>
                            <div class="exdetail1">
                                <% out.print(res.getString(21)); %>
                            </div>
                        </div>
                        
                        
                        <div class="exdetail">
                            <div class="exdetail1">
                                <label class="exl">
                                    College-Id
                                </label>
                            </div>
                            <div class="exdetail1">
                                <label class="exl">
                                    Registration Number
                                </label>
                            </div>
                            <div class="exdetail1">
                                <label class="exl">
                                    Enrollment Id
                                </label>
                            </div>
                        </div>

                        <div class="exdetail">
                            <div class="exdetail1">
                                <% out.print(res.getString(22)); %>
                            </div>
                            
                            <div class="exdetail1">
                                <% out.print(res.getString(23));%>
                            </div>
                            <div class="exdetail1">
                                <% out.print(res.getString(24));%>
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
                                <input type="hidden" id="u7" name="u7"  class="exi">
                            </div>
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
        <%
                       }
            }
            
            catch(Exception error)
            {
                out.print(error);
            }
                    %>
        </form>
        
    
</html>

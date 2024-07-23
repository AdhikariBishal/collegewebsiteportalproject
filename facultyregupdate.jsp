<%-- 
    Document   : facultyregupdate
    Created on : 28 Feb, 2024, 10:23:41 AM
    Author     : ADHIKARI BISHAL
--%>



<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link href="facultyregcss.css" rel="stylesheet" type="text/css">
    </head>
    <body>
      
       <form method="post" action="facultyregupdatejsp.jsp">
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
                Class.forName("com.mysql.jdbc.Driver");
                con=DriverManager.getConnection("jdbc:mysql://localhost:/erpportal", "root","root");
                st=con.createStatement();
                String InsertQuery="select * from facultyreg";
                res=st.executeQuery(InsertQuery);
                
                if(res.next())
                {
                    
             
        %>
            <div id="enrolldiv">
        <div id="enrolltopdiv">
            <div id="enrolltop1div">
                <div id="enrolltop2div"></div>
                <div id="enrolltop3div">
                    <label style="position: relative; font-size: 30px; font-weight: bold; color: white; top: 50px; left: 100px;">
                        Faculty registration
                    </label>
                </div>
            </div>
            <div id="detaildiv">
                <div id="detail1div">
                    <label style="position: relative; font-size: 18px; font-weight: bold; color: rgb(69, 49, 162); top: 10px; left: 450px;">
                         Registration Form For Staff
                    </label>

                </div>
                <div id="detail2div">
                    <div id="detail21div">
                        <label style="position: relative; font-size: 16px; color: rgb(14, 8, 8); top: 20px; left: 20px; ">
                            Category
                        </label>
                    </div>
                    <div id="detail21div">
                        <label style="position: relative; font-size: 16px; color: rgb(14, 8, 8); top: 20px; left: 20px; ">
                            Full Name
                        </label>
                    </div>
                    <div id="detail21div">
                        <label style="position: relative; font-size: 16px; color: rgb(14, 8, 8); top: 20px; left: 20px; ">
                            Father Name
                        </label>
                    </div>
                </div>

                <div id="detail2div">
                    <div id="detail21div">
                        <select id="t1" name="t1" style="position: relative; height: 30px; border-radius: 5px; width: 350px; left: 20px; ">
                            <option>-- Select --</option>
                            <option>Faculty</option>
                            <option>Library Staff</option>
                            <option>Financial Staff</option>
                            <option>Technical Staff</option>
                            
                        </select>

                    </div>
                    <div id="detail21div">
                        <input type="text " id="t2" value="<% out.print(res.getString(2));%>" name="t2" placeholder="Enter The Full Name" style="position: relative; height: 30px; border-radius: 5px; width: 350px; left: 20px;" >
                    </div>
                    <div id="detail21div">
                        <input type="text " id="t3" name="t3" placeholder="Enter The Father Name" style="position: relative; height: 30px; border-radius: 5px; width: 350px; left: 20px;" >
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
                        <input type="text " id="t5" name="t5" placeholder="Enter The 10 digit Mobile no" style="position: relative; height: 30px; border-radius: 5px; width: 350px; left: 20px;" >
                    </div>
                    <div id="detail21div">
                        <input type="text " id="t6" name="t6" placeholder="Enter The Email Id" style="position: relative; height: 30px; border-radius: 5px; width: 350px; left: 20px;" >
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
                            
                        </select> >

                    </div>
                    <div id="detail21div">
                        <input type="text " id="t8" name="t8" placeholder="Enter The Adhar card no." style="position: relative; height: 30px; border-radius: 5px; width: 350px; left: 20px;" >
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
                            Age
                        </label>
                    </div>
                    <div id="detail21div">
                        <label style="position: relative; font-size: 16px; color: rgb(14, 8, 8); top: 20px; left: 20px; ">
                            Staff Id No.
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
                        <input type="text " id="s4" name="s1" placeholder="Enter The Age" style="position: relative; height: 30px; border-radius: 5px; width: 350px; left: 20px;" >

                    </div>
                    <div id="detail21div">
                        <input type="text " id="s5" name="s2" placeholder="Enter The Session." style="position: relative; height: 30px; border-radius: 5px; width: 350px; left: 20px;" >
                    </div>
                    <div id="detail21div">
                        <input type="text " id="s6" name="s3" placeholder="Enter The Country Name" style="position: relative; height: 30px; border-radius: 5px; width: 350px; left: 20px;" >
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
                        <input type="text " id="s7" name="s4" placeholder="Enter The State Name" style="position: relative; height: 30px; border-radius: 5px; width: 350px; left: 20px;" >

                    </div>
                    <div id="detail21div">
                        <input type="text " id="s8" name="s5" placeholder="Enter The City name" style="position: relative; height: 30px; border-radius: 5px; width: 350px; left: 20px;" >
                    </div>
                    <div id="detail21div">
                        <input type="text " id="s9" name="s6" placeholder="Enter The Pin-Code" style="position: relative; height: 30px; border-radius: 5px; width: 350px; left: 20px;" >
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
                        <input type="text " id="u1" name="s7" placeholder="Enter The Password" style="position: relative; height: 30px; border-radius: 5px; width: 350px; left: 20px;" >

                    </div>
                    <div id="detail21div">
                        <input type="text " id="u2" name="s8" placeholder="Re-Enter The Password" style="position: relative; height: 30px; border-radius: 5px; width: 350px; left: 20px;" >
                    </div>
                    <div id="detail21div">
                        <input type="text " id="u3" name="s9" placeholder="Enter The Category" style="position: relative; height: 30px; border-radius: 5px;  width: 350px; left: 20px;" >
                    </div>
                </div>

                <div id="detail2div">
                    <div id="detail21div">
                        <input type="file"   style="position: relative; height: 30px; border-radius: 5px; width: 350px; left: 20px; top: 20px;" >
                    </div>
                    <div id="detail21div">
                        <input type="submit" value="Submit" style="position: relative; font-size: 18px; font-weight: bold; color: rgb(7, 17, 14); background-color: aquamarine; height: 30px; border-radius: 10px;  width: 150px; top: 10px; left: 20px;">
                    </div>

                    <!-- Transaction id -->
                    <div id="detail21div">
                        <input type="hidden" id="u4" name="u1"   style="position: relative; height: 30px; border-radius: 5px; width: 350px; left: 20px;" >
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="imsdown">
        <div id="imsdowndiv">
            <div id="imsdown1div" style="position: relative; top: 25px;">
                <div id="imsdown11div">
                    <label style="position: relative; font-size: 24px; left: 350px; top: 20px;">
                        Technical Helpline : (Timing 10 AM - 6 PM)
                    </label>
                </div>
                <div id="imsdown12div">
                    <div id="imsdown121div">
                        <label style="position: relative; font-size: 18px; font-weight: bold; left: 60px; top: 15px;">
                            Mobile : (+91) 8797653208, 7078797909
                        </label>
                    </div>
                    <div id="imsdown121div">
                        <label style="position: relative; font-size: 18px; font-weight: bold; left: 100px; top: 15px;">
                            Email ID: helptulas.edu.in
                        </label>
                    </div>
                </div>
                
            </div>
        </div>
        <div id="imsfotterdiv">
            <label style="position: relative; font-size: 20px; font-weight: bold; color: rgb(11, 10, 10); top: 20px; left: 500px;">
                Tulas Institute Of Engineering College
            </label>
        </div>
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

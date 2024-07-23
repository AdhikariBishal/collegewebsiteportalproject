<%-- 
    Document   : normlafetchingpage
    Created on : 26 Feb, 2024, 9:56:51 AM
    Author     : ADHIKARI BISHAL
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="normalfetchcss.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <form method="post" action="">
            <div class="topdiv">
        <div class="topdiv1"><img src="img/logo.jpg"></div>
        <div class="topdiv2">
            <P class="p1">Tula's Technical University, Dehradun</P>
            <p class="p2">A State Government University Established By Uttarakhand State Government </p>
            <p class="p2">Vide Act No.415 of 2005</p>
            <p class="p3">ACADEMIC REGISTRATION PROMOTION FORM : 2023-24</p>
        </div>
    </div>
    <div class="topdiv3"><p class="p4">Personal Detail:</p>
        <div class="topdiv4"></div>
    </div>
    <div class="mid">
        
        <%
            String url="";
            String user="root";
            String password="root";
            Statement st;
            PreparedStatement pst;
            Connection con;
            ResultSet res;
            
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                con=DriverManager.getConnection("jdbc:mysql://localhost:/erpportal", "root", "root");
                st=con.createStatement();
                String InsertQuery="Select *from enrollreg ";
              res= st.executeQuery(InsertQuery);
              if(res.next())
              {
           %>
        
        <div class="mid1">
            <div class="mid12">
                <p class="p5">Student Name</p>
            </div>
            <div class="mid13">:</div>
            <div class="mid12"><% out.print(res.getString(1));%></div>

            <div class="mid12">
                <p class="p5">Father Name</p>
            </div>
            <div class="mid13">:</div>
            <div class="mid12"><% out.print(res.getString(2));%></div>

            <div class="mid12">
                <p class="p5">Mother Name</p>
            </div>
            <div class="mid13">:</div>
            <div class="mid12"><% out.print(res.getString(3));%></div>

            <div class="mid12">
                <p class="p5">Date Of Birth</p>
            </div>
            <div class="mid13">:</div>
            <div class="mid12"><% out.print(res.getString(4));%></div>

            <div class="mid12">
                <p class="p5">Mobile No.</p>
            </div>
            <div class="mid13">:</div>
            <div class="mid12"><% out.print(res.getString(5));%></div>

            <div class="mid12">
                <p class="p5">Email Id</p>
            </div>
            <div class="mid13">:</div>
            <div class="mid12"><% out.print(res.getString(6));%></div>

            <div class="mid12">
                <p class="p5">Gender</p>
            </div>
            <div class="mid13">:</div>
            <div class="mid12"><% out.print(res.getString(7));%></div>

            <div class="mid12">
                <p class="p5">AdharCard No.</p>
            </div>
            <div class="mid13">:</div>
            <div class="mid12"><% out.print(res.getString(8));%></div>

            <div class="mid12">
                <p class="p5">Course</p>
            </div>
            <div class="mid13">:</div>
            <div class="mid12"><% out.print(res.getString(9));%></div>

            <div class="mid12">
                <p class="p5">Branch</p>
            </div>
            <div class="mid13">:</div>
            <div class="mid12"></div>

            <div class="mid12">
                <p class="p5">Year</p>
            </div>
            <div class="mid13">:</div>
            <div class="mid12"></div>
            
            <div class="mid12">
                <p class="p5">Semester</p>
            </div>
            <div class="mid13">:</div>
            <div class="mid12"></div>

            <div class="mid12">
                <p class="p5">Age</p>
            </div>
            <div class="mid13">:</div>
            <div class="mid12"></div>

            

          
        
        </div>

        <div class="mid2">
            <div class="mid21">
                <div class="mid23"></div>
            </div>
            <div class="mid22">

                <div class="mid12">
                    <p class="p5">Session</p>
                </div>
                <div class="mid13">:</div>
                <div class="mid12"></div>
    
                <div class="mid12">
                    <p class="p5">Country</p>
                </div>
                <div class="mid13">:</div>
                <div class="mid12"></div>
    
                <div class="mid12">
                    <p class="p5">State</p>
                </div>
                <div class="mid13">:</div>
                <div class="mid12"></div>
    
                <div class="mid12">
                    <p class="p5">Pin-Code</p>
                </div>
                <div class="mid13">:</div>
                <div class="mid12"></div>
                <div class="mid12">
                    <p class="p5">Institute Code</p>
                </div>
                <div class="mid13">:</div>
                <div class="mid12"></div>

                <div class="mid12">
                    <p class="p5">Colleg ID</p>
                </div>
                <div class="mid13">:</div>
                <div class="mid12"></div>

                <div class="mid12">
                    <p class="p5">Registration Number</p>
                </div>
                <div class="mid13">:</div>
                <div class="mid12"></div>

                <div class="mid12">
                    <p class="p5">Enrollment ID</p>
                </div>
                <div class="mid13">:</div>
                <div class="mid12"></div>

                
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
    </div>

    <div class="fot">
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

        <div class="fot1">
            <label style="position: relative; font-size: 20px; font-weight: bold; color: rgb(11, 10, 10); top: 20px; left: 500px;">
                Tulas Institute Of Engineering College
            </label>
        </div>
    </div>
        </form>
    </body>
</html>

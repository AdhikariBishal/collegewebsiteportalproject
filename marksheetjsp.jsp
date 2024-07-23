<%-- 
    Document   : marksheetjsp
    Created on : 21 Mar, 2024, 8:28:03 AM
    Author     : ADHIKARI BISHAL
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
         <%
    String sem=request.getParameter("se");
    String cou=request.getParameter("co");
    String bran=request.getParameter("ba");
    String user="root";
    String password="root";
    Statement st;
    Connection con;
    PreparedStatement pst;
    ResultSet res;
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:/erpportal", "root", "root");
        st=con.createStatement();
        String FetchQuery="Select * from subject where semester='"+sem+"' and branch='"+bran+"' and course='"+cou+"'   ";
        res=st.executeQuery(FetchQuery);
         %>
         <table border="1px" cellpadding="1px" cellspacing="0px" height="80px " width="1000px">
        <tr>
            <td rowspan="2" width="70px" class="marktd">Sr.No.</td>
            <td rowspan="2" width="140px" class="marktd">Subject Code</td>
            <td rowspan="2" width="200px" class="marktd">Subject Name</td>
            <td colspan="3" width="180px"class="marktd">Maximum Marks</td>
            <td colspan="3" width="180px"class="marktd">Obtained Marks</td>
            <td rowspan="2" width="150px"class="marktd"><p>Grace Mark</p> <p>Carry Papper If Any</p></td>
            <td rowspan="2" width="80px"class="marktd">Input</td>
        </tr>
        <tr>
            
            <td class="marktd">ESE</td>
            <td class="marktd">SESS.</td>
            <td class="marktd">Total</td>
            <td class="marktd">ESE</td>
            <td class="marktd">SESS.</td>
            <td class="marktd">Total</td>
            
        </tr>
        <%
                                    while(res.next())
                                    {
                  %>
                
            
            <td class="marktd">
  
            </td>
            <td class="marktd"><input  type="hidden" name="f1" value="<% out.print(res.getString(5)); %> " ><% out.print(res.getString(5)); %>  </td>
            <td class="marktd"><input  type="hidden" name="f2" value="<% out.print(res.getString(4)); %> " ><% out.print(res.getString(4)); %>  </td>
            <td class="marktd">
                <input  type="hidden" name="f3" value="<% out.print(res.getString(8)); %> " ><% out.print(res.getString(8)); %>  
            </td>
            <td class="marktd">
                <input  type="hidden" name="f4" value="<% out.print(res.getString(9)); %> " ><% out.print(res.getString(9)); %>  
            </td>
            <td class="marktd">
                
            </td>
            <td class="marktd">
                <input type="text" name="f5" class="marktext" >
            </td>
            <td class="marktd">
                <input type="text" name="f6" class="marktext" >
            </td>
            <td class="marktd">
                
            </td>
            <td class="marktd">
                <input type="text" name="f7" class="marktext" >
            </td>
            <td class="marktd">
                <input type="button" value="save" onclick="savemarks()" >
            </td>
        </tr>
               
                  
        <%
                                    }
                 %>
    </table>
    <div class="spacediv"></div>
        <table border="1px" height="50px" width="1000px" cellpsdding="1px" cellspacing="0px">
                                    <tr>
                                        <td class="pf1">
                                            <label class="marklebel">Total Maximum Marks</label>
                                        </td>
                                        <td></td>
                                        <td class="pf1">
                                            <label class="marklebel">Total Obtained Marks</label>
                                        </td>
                                        <td></td>
                                        <td class="pf1">
                                            <label class="marklebel">Count Of SCGPA</label>
                                        </td>
                                        <td></td>
                                    </tr>
                                </table>
    
            <%
    }
    
    catch(Exception error)
    {
        out.print(error);
    }
    
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="Dashboardcss.css" rel="stylesheet" type="text/css">
        <style>
        .marktd{
            text-align: center;
            font-size: 16px;
            font-weight: bold;
            
        }
        .marktext
        {
            position: relative;
            width: 40px;
            height: 50px
            border: 1px;
            border-color: black;
            border-radius: 5px;
            
            
        }
        .spacediv
        {
            position: relative;
            height: 10px;
            width: 1000px;
            background-color: rgb(214, 226, 235);
        }
    </style>
    </head>
    <body>
        
    </body>
</html>

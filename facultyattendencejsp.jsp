<%-- 
    Document   : facultyattendencemarkjsp
    Created on : 4 Apr, 2024, 11:09:49 AM
    Author     : ADHIKARI BISHAL
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String bran=request.getParameter("ba");
    String cou=request.getParameter("co");
    String sem=request.getParameter("se");
    String user="root";
    String password="root";
    Statement st;
    Connection con;
    PreparedStatement pst;
    ResultSet res;
    
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:/erpportal","root","root");
        st=con.createStatement();
        String FetchQuery="Select * from enrollreg where semester='"+sem+"' and course='"+cou+"' and branch='"+bran+"'";
        res=st.executeQuery(FetchQuery);
%>        
        <table border="1px" cellpadding="1px" cellspacing="0px">
            <tr>
                <td height="50px"  width="250px" class="marktd"> Sr.No. </td>
                <td height="50px"  width="250px" class="marktd"> Roll No.</td>
                <td height="50px" width="250px" class="marktd"> Student Name </td>
                <td height="50px" width="250px" class="marktd"> CheckBox </td>
            </tr>
        
            
                <%
                                    while(res.next())
                                    {
                %>
            <tr> 
            
                <td class="marktd"> </td>
                <td class="marktd"><input  type="hidden" name="f1" value="<% out.print(res.getString(22)); %> " ><% out.print(res.getString(22)); %>  </td>
                <td class="marktd"><input  type="hidden" name="f2" value="<% out.print(res.getString(1)); %> " ><% out.print(res.getString(1)); %>  </td>
                <td> <input type="checkbox" name="f3" checked="checked" > </td>
            </tr>    
            <%
                                    }
                 %>
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
        <link rel="stylesheet" href="Dashboardcss.css" type="text/css" />
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
       
    </style>
    </head>
    <body>
        
    </body>
</html>

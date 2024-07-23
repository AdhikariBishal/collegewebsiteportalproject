<%-- 
    Document   : studentresultjsp.jsp
    Created on : 29 Mar, 2024, 8:06:00 AM
    Author     : ADHIKARI BISHAL
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String examname=request.getParameter("t1");
    String examtype=request.getParameter("t2");
    String course=request.getParameter("t3");
    String branch=request.getParameter("t4");
    String semester=request.getParameter("t5");
    String userID=request.getParameter("t6");
    String date=request.getParameter("t7");
//    String captcha=request.getParameter("t8");
    String user="root";
    String password="root";
    Connection con;
    Statement st;
    PreparedStatement pst;
    ResultSet res;
    
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("", "root", "root");
        st=con.createStatement();
        String FetchQuery="Select * from marksheet where rollno='"+userID+"'    ";
        res=st.executeQuery(FetchQuery);
        String FetchQuery1="Select * from marksheet where rollno='"+userID+"'    ";
        res=st.executeQuery(FetchQuery1);
        
        
        if(res.next())
        {
            out.print("Login Successful");
            String loc="http://localhost:8080/myjsp/Tulaserp/web/Studentdashboard.jsp";
            response.setStatus(response.SC_MOVED_TEMPORARILY);
            response.setHeader("Location", loc);
            
            
            session.setAttribute("userName", userID);
        }
        
        else
        {
            out.print("Invalid user Id & password");
        }
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
    </head>
    <body>
        
    </body>
</html>

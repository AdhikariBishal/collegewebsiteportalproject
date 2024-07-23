<%--
    Document   : studentloginjsp
    Created on : 26 Feb, 2024, 10:45:50 AM
    Author     : ADHIKARI BISHAL
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%
    String userID=request.getParameter("t1");
    String password=request.getParameter("t2");
    String url="";
    String user="root";
    String pass="root";
    Statement st;
    PreparedStatement pst;
    Connection con;
    ResultSet res;
    
    
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:/erpportal", "root", "root");
        st=con.createStatement();
        String InsertQuery="Select * from enrollreg where college_id='"+userID+"' and enter_password='"+password+"' ";
        res=st.executeQuery(InsertQuery);
        
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

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
    </body>
</html>

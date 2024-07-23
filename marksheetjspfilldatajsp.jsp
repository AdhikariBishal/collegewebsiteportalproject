<%-- 
    Document   : marksheetjspfilldatajsp
    Created on : 23 Mar, 2024, 6:53:40 PM
    Author     : ADHIKARI BISHAL
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
         <%
    
    String a1=request.getParameter("t1");
    String a2=request.getParameter("t2");
    String a3=request.getParameter("t3");
    String a4=request.getParameter("t4");
    String a5=request.getParameter("t5");
    String a6=request.getParameter("t6");
    String a7=request.getParameter("t7");
    String a8=request.getParameter("t8");
    String a9=request.getParameter("t9");
    String b1=request.getParameter("f1");
    String b2=request.getParameter("f2");
    String b3=request.getParameter("f3");
    String b4=request.getParameter("f4");
    String b5=request.getParameter("f5");
    String b6=request.getParameter("f6");
    String b7=request.getParameter("f7");
    String b8=request.getParameter("t10");
    String b9=request.getParameter("t11");
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
        String InsertQuery="insert  into marksheet  values('"+a1+"','"+a2+"','"+a3+"','"+a4+"','"+a5+"','"+a6+"','"+a7+"','"+a8+"','"+a9+"','"+b1+"','"+b2+"','"+b3+"','"+b4+"','"+b5+"','"+b6+"','"+b7+"','"+b8+"','"+b9+"')";
        st.executeUpdate(InsertQuery);
        
         
         
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

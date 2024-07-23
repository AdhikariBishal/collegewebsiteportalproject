<%-- 
    Document   : marksheetfillmarksjsp
    Created on : 30 Mar, 2024, 7:38:59 PM
    Author     : ADHIKARI BISHAL
--%>


   <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%
    String m1=request.getParameter("ro");
    String m2=request.getParameter("se");
    String m3=request.getParameter("sc");
    String m4=request.getParameter("sn");
    String m5=request.getParameter("mese");
    String m6=request.getParameter("msess");
    String m7=request.getParameter("oese");
    String m8=request.getParameter("osess");
    String m9=request.getParameter("cv");
    String m10=request.getParameter("en");
    String m11=request.getParameter("ext");
    out.print(m1);
    out.print(m2);
    out.print(m3);
    out.print(m4);
    out.print(m5);
    out.print(m6);
    out.print(m7);
    out.print(m8);
    out.print(m9);
    out.print(m10);
    out.print(m11);
    
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
        String InsertQuery="insert  into marksheet  values('"+m1+"','"+m2+"','"+m3+"','"+m4+"','"+m5+"','"+m6+"','"+m7+"','"+m8+"','"+m9+"','"+m10+"','"+m11+"')";
        st.executeUpdate(InsertQuery);
        
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

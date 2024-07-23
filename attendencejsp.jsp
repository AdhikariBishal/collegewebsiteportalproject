<%-- 
    Document   : attendencejsp.jsp
    Created on : 25 Apr, 2024, 5:58:35 PM
    Author     : ADHIKARI BISHAL
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String m1=request.getParameter("f1");
    String m2=request.getParameter("t6");
    String m3=request.getParameter("t5");
    String m4=request.getParameter("t7");
    String m5=request.getParameter("t9");
    String m6=request.getParameter("t8");
    String m7=request.getParameter("f3");
    Connection con;
    Statement st;
    PreparedStatement pst;
    ResultSet res;
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:/erpportal","root","root");
        st=con.createStatement();
        String FetchQuery="insert into attendence values ('"+m1+"','"+m2+"','"+m3+"','"+m4+"','"+m5+"','"+m6+"','"+m7+"')";
        st.executeUpdate(FetchQuery);
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

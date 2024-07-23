<%-- 
    Document   : AnswerBookletjsp
    Created on : 15 Apr, 2024, 6:53:27 PM
    Author     : ADHIKARI BISHAL
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String a1=request.getParameter("s1");
    String b1=request.getParameter("s2");
    String c1=request.getParameter("s3");
    String d1=request.getParameter("s4");
    String e1=request.getParameter("s5");
    String f1=request.getParameter("s6");
    String g1=request.getParameter("s8");
   
            String url="";
            String user="root";
            String password="root";
            PreparedStatement pst;
            Statement st;
            ResultSet rec;
            Connection con;
            
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                con=DriverManager.getConnection("jdbc:mysql://localhost:/erpportal", "root","root");
                st=con.createStatement();
                String InsertQuery="insert into answerbooklet values('"+a1+"','"+b1+"','"+c1+"','"+d1+"','"+e1+"','"+f1+"','"+g1+"')";
                st.executeUpdate(InsertQuery);
                
            }
            catch(Exception Error)
            {
                out.println(Error);
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

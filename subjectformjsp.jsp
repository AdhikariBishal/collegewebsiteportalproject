<%-- 
    Document   : subjectformjsp
    Created on : 24 Feb, 2024, 4:23:47 PM
    Author     : ADHIKARI BISHAL
--%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%
    String a=request.getParameter("s1");
    String b=request.getParameter("s2");
    String c=request.getParameter("s3");
    String d=request.getParameter("s4");
    String e=request.getParameter("s5");
    String f=request.getParameter("s6");
    String g=request.getParameter("s7");
    String h=request.getParameter("s8");
    String i=request.getParameter("s9");
    out.println(a);
    out.println(b);
    out.println(c);
    out.println(d);
    out.println(e);
    out.println(f);
    out.println(g);
    out.println(h);
    out.println(i);
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
                String InsertQuery="insert into subject values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"','"+h+"','"+i+"')";
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

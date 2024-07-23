<%-- 
    Document   : facultyregupdatejsp
    Created on : 27 Feb, 2024, 10:15:41 PM
    Author     : ADHIKARI BISHAL
--%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%
    String a=request.getParameter("t1");
    String b=request.getParameter("t2");
    String c=request.getParameter("t3");
    String d=request.getParameter("t4");
    String e=request.getParameter("t5");
    String f=request.getParameter("t6");
    String g=request.getParameter("t7");
    String h=request.getParameter("t8");
    String i=request.getParameter("t9");
    String j=request.getParameter("s1");
    String k=request.getParameter("s2");
    String l=request.getParameter("s3");
    String m=request.getParameter("s4");
    String n=request.getParameter("s5");
    String o=request.getParameter("s6");
    String p=request.getParameter("s7");
    String q=request.getParameter("s8");
    String r=request.getParameter("s9");
    String s=request.getParameter("u1");
    out.print(a);
    out.print(b);
    out.print(c);
    out.print(d);
    out.print(e);
    out.print(f);
    out.print(g);
    out.print(h);
    out.print(i);
    out.print(j);
    out.print(k);
    out.print(l);
    out.print(m);
    out.print(n);
    out.print(o);
    out.print(p);
    out.print(q);
    out.print(r);
    out.print(s);
    
    
    String url="";
    String user="root";
    String password="root";
    Statement st;
    Connection con;
    PreparedStatement pst;
    ResultSet res;
    
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:/erpportal", "root","root");
        st=con.createStatement();
        String UpdateQuery="update  facultyreg set category='"+a+"' where staffid_no='"+12001+"' ";
        st.executeUpdate(UpdateQuery);
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
        <h1>Hello World!</h1>
    </body>
</html>

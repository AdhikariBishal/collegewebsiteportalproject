<%-- 
    Document   : studentupdateformjsp
    Created on : 29 Feb, 2024, 7:10:54 AM
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
    String t=request.getParameter("u2");
    String u=request.getParameter("u3");
    String v=request.getParameter("u4");
    String w=request.getParameter("u5");
    String x=request.getParameter("u6");
    String y=request.getParameter("u7");
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
    out.print(t);
    out.print(u);
    out.print(v);
    out.print(w);
    out.print(x);
    out.print(y);
    
    String url="";
    String user="root";
    String password="root";
    Statement st;
    Connection con;
    PreparedStatement pst;
    ResultSet res;
    
    try
    {
        String UserId=(String)session.getAttribute("userName");
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:/erpportal", "root","root");
        st=con.createStatement();
        String InsertQuery="Update  enrollreg set student_name='"+a+"',father_name='"+b+"',mother_name='"+c+"',dateofbirth='"+d+"',mobile_no='"+e+"',email_id='"+f+"',gender='"+g+"',adharcard_no='"+h+"',course='"+i+"',branch='"+j+"',year='"+k+"',semester='"+l+"',age='"+m+"',session='"+n+"',country='"+o+"',state='"+p+"',city='"+q+"',state='"+r+"',pincode='"+s+"',enter_password='"+t+"',reenter_password='"+u+"' where college_id='"+UserId+"' "; 
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

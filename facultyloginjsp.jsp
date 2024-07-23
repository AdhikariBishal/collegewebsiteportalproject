<%-- 
    Document   : facultyloginjsp
    Created on : 27 Feb, 2024, 9:51:03 PM
    Author     : ADHIKARI BISHAL
--%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%
    String userId=request.getParameter("t1");
    String password=request.getParameter("t2");
    String url="";
    String user="root";
    String pass="root";
    Statement st;
    Connection con;
    PreparedStatement pst;
    ResultSet res;
   
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:/erpportal", "root", "root");
            st=con.createStatement();
            String InsertQuery="Select * from facultyreg where staffid_no='"+userId+"' and password='"+password+"'";
            res=st.executeQuery(InsertQuery);
            
            if(res.next())
            {
                out.print("Login Sucessfull");
                String pag="http://localhost:8080/myjsp/Tulaserp/web/facultydashboard.jsp";
                response.setStatus(response.SC_MOVED_TEMPORARILY);
                response.setHeader("Location", pag);
            }
            
            else
            {
                out.print("Login UnSucessfull");
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

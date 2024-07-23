<%-- 
    Document   : formajax
    Created on : 15 Mar, 2024, 8:29:52 AM
    Author     : ADHIKARI BISHAL
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String p1=request.getParameter("p");
            String url="";
            String user="root";
            String pass="root";
            Connection con;
            Statement st;
            PreparedStatement pst;
            ResultSet res;
            
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                con=DriverManager.getConnection("jdbc:mysql://localhost:/erpportal", "root", "root");
                st=con.createStatement();
                String InsertQuery="Select * from enrollreg where college_id='"+p1+"'  ";
                res=st.executeQuery(InsertQuery);
             %>   
             <div><h1>
                 <%
                    if(res.next())
                    {
                        out.print("Welcome To The Vision Code You Are Valid User");
                    }
                    
                    else
                    {
                        out.print("User Not Found");
                    }
                 %>
                 </h1></div>
            <%    
            }
            
            catch(Exception error)
            {
                out.print(error);
            }
            
        %>
    </body>
</html>

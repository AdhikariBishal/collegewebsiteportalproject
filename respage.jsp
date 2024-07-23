<%-- 
    Document   : respage
    Created on : 5 Mar, 2024, 4:18:00 PM
    Author     : ADHIKARI BISHAL
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="subjectformcss.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <form method="post" action="">
            <%                      
                                String sem=request.getParameter("se");
                                String cou=request.getParameter("co");
                                String bran=request.getParameter("ba");
                                String user="root";
                                String password="root";
                                Statement st;
                                PreparedStatement pst;
                                Connection con;
                                ResultSet res;
                                
                                try
                                {
                                    Class.forName("com.mysql.jdbc.Driver");
                                    con=DriverManager.getConnection("jdbc:mysql://localhost:/erpportal", "root", "root");
                                    st=con.createStatement();
                                    String InsertQuery="Select * from subject where semester='"+sem+"' and course='"+cou+"' and branch='"+bran+"'  ";
                                    res=st.executeQuery(InsertQuery);
                                    
                                
             %>
             
                 <table   border="1px" cellpadding="1px" cellspacing="0px">
                     <tr><td height="50px" width="300px" >Subject Name</td> 
                     <td height="50px" width="300px">Subject Code</td> 
                     <td height="50px" width="300px">Subject Type</td> 
                     <td height="50px" width="300px">Credit Hour</td></tr>
                 <%
                                    while(res.next())
                                    {
                  %>
                     <tr><td><input  type="hidden" name="t1" value="<% out.print(res.getString(4)); %> " ><% out.print(res.getString(4)); %> </td>
                   <td><% out.print(res.getString(5)); %></td> 
                   <td><% out.print(res.getString(6)); %></td> 
                   <td ><% out.print(res.getString(7)); %></td></tr>
                  <%
                                    }
                 %>
             </table>
        

           


    
            <%
                                   
                                
                            
                                
                                }
                                catch (Exception error)
                                {
                                    out.print(error);
                                }
            %>
        </form>
    </body>
</html>

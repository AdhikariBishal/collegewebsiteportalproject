<%-- 
    Document   : studentregistrationjsp
    Created on : 24 Feb, 2024, 7:37:08 AM
    Author     : ADHIKARI BISHAL
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>

<%
            String sem=request.getParameter("se");
            String cou=request.getParameter("co");
            String bran=request.getParameter("ba");
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
//            out.print(a);
//            out.print(b);
//            out.print(c);
//            out.print(d);
//            out.print(e);
//            out.print(f);
//            out.print(g);
//            out.print(h);
//            out.print(i);
//            out.print(j);
//            out.print(k);
//            out.print(l);
//            out.print(m);
//            out.print(n);
//            out.print(o);
//            out.print(p);
            String url="";
            String user="root";
            String password="root";
            PreparedStatement pst;
            Statement st;
            ResultSet res;
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:/erpportal", "root","root");
                st=con1.createStatement();
//                String InsertQuery="insert into  values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"','"+h+"','"+i+"','"+j+"','"+k+"','"+l+"','"+m+"','"+n+"','"+o+"','"+p+"')";
//                st.executeUpdate(InsertQuery);
                String FetchQuery="Select * from subject where semester='"+sem+"'  and course='"+cou+"' and branch='"+bran+"'  ";
                res=st.executeQuery(FetchQuery);
            
            
             %>
             <div class="sub">
                 <table   border="1px" cellpadding="1px" cellspacing="0px">
                     <tr><td height="50px" width="250px" class="marktd">Select</td> 
                         <td height="50px" width="250px" class="marktd">Subject Name</td> 
                     <td height="50px" width="250px"class="marktd">Subject Code</td> 
                     <td height="50px" width="250px"class="marktd">Subject Type</td> 
                     <td height="50px" width="250px" class="marktd">Credit Hour</td></tr>
                 <%
                                    while(res.next())
                                    {
                  %>
                    <tr>
                        <td class="marktd"><input type="checkbox" name="check1"></td>
                        <td class="marktd"><input  type="hidden" name="hidden1" value="<% out.print(res.getString(4)); %> " ><% out.print(res.getString(4)); %> </td>
                        <td class="marktd"><% out.print(res.getString(5)); %></td> 
                        <td class="marktd"><% out.print(res.getString(6)); %></td> 
                        <td class="marktd"><% out.print(res.getString(7)); %></td>
                    </tr>
                  <%
                                    }
                 %>
             </table>
        </div>

           


    
            <%
            }
            catch(Exception error)
            {
                out.println(error);
            }
         %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
        .marktd{
            text-align: center;
            font-size: 16px;
            font-weight: bold;
            
        }
        .marktext
        {
            position: relative;
            width: 40px;
            height: 50px
            border: 1px;
            border-color: black;
            border-radius: 5px;
            
            
        }
        
    </style>
    </head>
    <body>
        
        
    </body>
</html>

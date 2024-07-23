<%-- 
    Document   : normalfun
    Created on : 5 Mar, 2024, 5:43:15 PM
    Author     : ADHIKARI BISHAL
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="post" action="">
            <table cellpadding="0" cellspacing="0">
        <tr>
            <td>Course</td>
            <td>
                <select>
                    <option>-- Select --</option>
                    <option>BTECH</option>
                    <option>MTECH</option>
                    <option>MBA</option>
                    <option>BBA</option>
                    <option>LLB</option>
                    <option>BARCH</option>
                    <option>Other</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>Subject Name</td>
            <td>
                <select>
                    <%
                      
                         public void getResut()
                         {
                             int i;
                             for(i=1;i<i=5;i++)
                             {
                                      
                    %>
                    <option>
                        <%
                                 out.print(i);
                                 %>
                    </option>
                    <%
                             }
                             return "Nothing";
                         }
                    
                    %>
                </select>
            </td>
        </tr>
    </table>
        </form>
        
    </body>
</html>

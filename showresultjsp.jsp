<%-- 
    Document   : showresultjsp
    Created on : 29 Mar, 2024, 8:58:01 AM
    Author     : ADHIKARI BISHAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="Dashboardcss.css" type="text/css" />
        <style>
        .resmain
        {
            position: relative;
            height: 1000px;
            width: 100%;
           
            
        }
        .resmainmid
        {
            position: relative;
            height: 1000px;
            width: 1000px;
            
            margin-left: 220px;
            
        }
        .resmain1
        {
            position: relative;
            height: 150px;
            width: 1000px;
           
            
        }
        .resmain2
        {
            float: left;
            height: 150px;
            width: 150px;
        
            
        }
        .resmain3
        {
            float: left;
            height: 150px;
            width: 850px;
        
            
        }
        .rescontent
        {
            text-align: center;
            font-size: 18px;
            font-weight: bold;
            margin-top: 20px;


        }
        .resblank
        {
            position: relative;
            height: 10px;
            width: 1000px;
            background-color: white;

        }

        .resfill{
            text-align: center;
            font-size: 16px;
            font-weight: bold;
            
        }
    </style>
    </head>
    <body>
        <form method="post" action="">
            <div class="resmain">
        <div class="resmainmid">
            <div class="resmain1">
                <div class="resmain2">
                    <img src="img/logo.jpg" style="position: relative; height: 150px; width: 150px; border-radius: 100%;">
                </div>
                <div class="resmain3">
                    <P class="rescontent">Tula's Technical University, Dehradun, India</P>
                    <P class="rescontent">Even Semester  2023-24</P>
                    <P class="rescontent">Provisonal Marksheet</P>
                </div>
                
            </div>
            <div class="resblank"></div>
            <table border="1px" height="200px" width="1000px" cellpsdding="1px" cellspacing="0px">
                <Tr>
                    <td class="pf1">
                        <label class="marklebel">Roll No.</label>
                    </td>
                    <td class="pf1">
                        
                    </td>
                    <td class="pf1">
                        <label class="marklebel">Student's Name</label>
                    </td>
                    <td class="pf1">
                        
                    </td>
                </Tr>
                <Tr>
                    <td class="pf1">
                        <label class="marklebel">Father Name</label>
                    </td>
                    <td class="pf1">
                        
                    </td>
                    <td class="pf1">
                        <label class="marklebel">Mother Name</label>
                    </td>
                    <td class="pf1">
                        
                    </td>
                </Tr>
                <Tr>
                    <td class="pf1">
                        <label class="marklebel">Course</label>
                    </td>
                    <td class="pf1">
                       
                    </td>
                    <td class="pf1">
                        <label class="marklebel">Branch</label>
                    </td>
                    <td class="pf1">
                        
                    </td>
                </Tr>
                <Tr>
                    <td class="pf1">
                        <label class="marklebel">Semester</label>
                    </td>
                    <td class="pf1">
                        
                    </td>
                    <td class="pf1">
                        <label class="marklebel">Exam Type</label>
                    </td>
                    <td class="pf1">
                        
                    </td>
                </Tr>
                <Tr>
                    <td class="pf1">
                        <label class="marklebel">Institute Name & Code</label>
                    </td>
                    <td colspan="3">
                        
                    </td>
                    
                </Tr>
            </table>
            <div class="resblank"></div>
            <table border="1px" cellpadding="1px" cellspacing="0px" height="80px " width="1000px">
                <tr>
                    <td rowspan="2" width="70px" class="resfill" >Sr.No.</td>
                    <td rowspan="2" width="140px" class="resfill">Subject Code</td>
                    <td rowspan="2" width="280px" class="resfill">Subject Name</td>
                    <td colspan="3" width="180px" class="resfill">Maximum Marks</td>
                    <td colspan="3" width="180px" class="resfill">Obtained Marks</td>
                    <td rowspan="2" width="150px" class="resfill"><p>Grace Mark</p> <p>Carry Papper If Any</p></td>
                </tr>
                <tr>
                    
                    <td class="resfill">ESE</td>
                    <td class="resfill">SESS.</td>
                    <td class="resfill">Total</td>
                    <td class="resfill">ESE</td>
                    <td class="resfill">SESS.</td>
                    <td class="resfill">Total</td>
                    
                </tr>
                <tr>
                    
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    
                </tr>
            </table>
            
            <div class="resblank"></div>
        
        
            <table border="1px" height="50px" width="1000px" cellpsdding="1px" cellspacing="0px">
                <tr>
                    <td class="pf1">
                        <label class="marklebel">Total Maximum Marks</label>
                    </td>
                    <td></td>
                    <td class="pf1">
                        <label class="marklebel">Total Obtained Marks</label>
                    </td>
                    <td></td>
                    <td class="pf1">
                        <label class="marklebel">Count Of SCGPA</label>
                    </td>
                    <td></td>
                </tr>
            </table>
        </div>
        
        
        
    </div>
        </form>
    </body>
</html>

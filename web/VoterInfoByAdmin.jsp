<%-- 
    Document   : VoterInfoByAdmin
    Created on : Oct 3, 2019, 2:25:23 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="db.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
    <head>
        <title>E-Voting</title>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <link rel="stylesheet" href="images/Techmania.css" type="text/css" />
    </head>
    <body>        
        <div id="wrap">
            <div id="header">
                <h1 id="logo-text">E-Voting<span class="gray">&nbsp;using Block Chain</span></h1>
                <h2 id="slogan">E-Voting</h2>
                <div id="header-tabs">
                    <ul>
                        <li><a href="ElectionDate.jsp"><span>Election Date</span></a></li>
                        <li><a href="NomineeInfo.jsp"><span>Nominee Info</span></a></li>
                        <li><a href="VoterInfoByAdmin.jsp"><span>Voter Info</span></a></li>
                        <li><a href="FieldOfficerInfo.jsp"><span>Field Officer Info</span></a></li>
                        <li><a href="DeclareResult.jsp"><span>Declare Result</span></a></li>
                        <li><a href="ResetResult.jsp"><span>Reset Result</span></a></li>
                        <li><a href="logout.jsp"><span>Logout</span></a></li>
                    </ul>
                </div>
            </div>
            <div id="content-wrap">
                <div id="main"> <a name="TemplateInfo"></a>
                    <h1>E-Voting</h1>
                    <table cellspacing="10">
                        <tr>
                            <th colspan="8" style="font-size: large;text-align: center;">View Voter Info</th>
                        </tr>
                        <tr>
                            <th>Voter Id</th>
                            <th>Voter Name</th>
                            <th>Gender</th>
                            <th>Mail Id</th>
                            <th>State</th>
                            <th>Constituency</th>
                            <th>Aadhaar No</th>                            
                            <th>Photo</th>
                        </tr>                    
                    <%!
                        ResultSet rs;
                    %>
                    <%
                        ps=con.prepareStatement("select * from VoterRegistration where status='Accepted'");
                        rs=ps.executeQuery();
                        while(rs.next()){
                    %>
                    <tr>
                        <td><%=rs.getString(1)%></td>
                        <td><%=rs.getString(2)%></td>
                        <td><%=rs.getString(3)%></td>
                        <td><%=rs.getString(9)%></td>
                        <td><%=rs.getString(10)%></td>
                        <td><%=rs.getString(11)%></td>
                        <td><%=rs.getString(12)%></td>
                        <td><img src="VoterPhotos/<%=rs.getString(13)%>" style="width:50px;height:50px;"/></td>
                    </tr>
                    <%
                        }
                        rs.close();
                        ps.close();
                    %>
                    </table>
                    <br><br><br><br><br><br><br><br><br><br><br><br><br><br></br><br></br>
                </div>
                <div id="sidebar" style="line-height: 35px">
                    <h1>Admin Links</h1>
                    <ul class="sidemenu">
                        <li><a href="ElectionDate.jsp">Election Date</a></li>
                        <li><a href="FieldOfficerRegistration.jsp">Field Officer Registration</a></li>
                        <li><a href="NomineeInfo.jsp">Nominee Info</a></li>
                        <li><a href="VoterInfoByAdmin.jsp">Voter Info</a></li>
                        <li><a href="FieldOfficerInfo.jsp">Field Officer Info</a></li>
                        <li><a href="DeclareResult.jsp">Declare Result</a></li>
                        <li><a href="ViewResultByAdmin.jsp">View Election Result</a></li>
                        <li><a href="ResetResult.jsp">Reset Result</a></li>
                        <li><a href="logout.jsp">Logout</a></li>
                    </ul>
                </div>
            </div>
            <div id="footer"> <span id="footer-left"> &copy; 2019 <strong>SR InfoTech</strong> | Design by: <strong><a href="http://www.styleshout.com/">AMS</a></strong> | Valid: <a href="http://validator.w3.org/check?uri=referer">XHTML</a> | <a href="http://jigsaw.w3.org/css-validator/check/referer">CSS</a> </span> <span id="footer-right"> <a href="#">Home</a> | <a href="#">About Us</a> | <a href="#">Contact Us</a> </span> </div>
        </div>
    </body>
</html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="LIS.DbConnect"%>
<%@page import="java.sql.Connection"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>LIS</title>

<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
a:link {
	text-decoration: none;
}
a:visited {
	text-decoration: none;
}
a:hover {
	text-decoration: none;
}
a:active {
	text-decoration: none;
}
-->
</style>
<link href="../css/style.css" rel="stylesheet" type="text/css" />

<link rel="shortcut icon" href="../images/favicon.ico" type="image/x-icon">
<link rel="icon" href="../images/favicon.ico" type="image/x-icon">

<style type="text/css">
<!--
.style2 {font-family: calibri}
-->
</style>
</head>

<body>
    <%
        String loginid = (String)session.getAttribute("loginid");

    %>
<table width="850" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td bgcolor="#FFFFFF"><table width="850" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="849" align="left" valign="top"><table width="850" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="10" rowspan="2" align="left" valign="top">&nbsp;</td>
            <td width="311" rowspan="2" align="left" valign="top"><img src="../images/logopic.jpg" width="35" height="40"  border="0" /><br/>
              <img src="../images/logotext.png" width="274" height="23"><br>
                <br></td>
            <td width="331" rowspan="2" align="right" valign="middle">			</td>
            <td width="198" height="33" colspan="3" align="right" valign="middle"><table width="100" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="22" align="left" valign="middle"><%= loginid %></td>
                  <td width="12" align="left" valign="middle">&nbsp;</td>
                  <td width="12" align="left" valign="top"><a href="AgentProfile.jsp"></a></td>
                  <td width="17" align="left" valign="top">&nbsp;</td>
                </tr>
            </table></td>
          </tr>
          <tr>
            <td height="19" colspan="3" align="left" valign="top">&nbsp;</td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td align="left" valign="top" ><table width="100" border="0" cellspacing="0" cellpadding="0">
            <tr>
			  <td align="left" valign="top">&nbsp;<a href="AdminHome.jsp" class="button"/>Home</a>&nbsp;</td>
               <td align="left" valign="top">&nbsp;<a href="scheme.jsp" class="button"/>Scheme</a>&nbsp;</td>
				<td align="left" valign="top"><a href="ViewPolicy.jsp" class="button"/>View&nbsp;Policy</a>&nbsp;</td>
              <td align="left" valign="top"><a href="Viewallfeedback.jsp" class="button"/>Feedback</a>&nbsp;</td>
			  <td align="left" valign="top"><a href="notice.jsp" class="button"/>Notice</a>&nbsp;</td>
			  <td align="left" valign="top"><a href="logout.jsp" class="button"/>Logout</a>&nbsp;</td>

            </tr>
        </table><br></td>
      </tr>
      <tr>
        <td align="left" valign="top" ><p>&nbsp;</p>
		</td>
      </tr>
      <tr>
        <td align="left" valign="top" height="7"></td>
      </tr>
      <tr>
        <td align="left" valign="top"><table width="850" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="178" height="221" align="left" valign="top">&nbsp;</td>
              <td width="428" align="left" valign="top"><table width="419" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="419" align="left" valign="top"><div class="tableboder" style="width:620px; height:425px;" >
                        <table width="616" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="421" height="23" align="left" valign="middle" class="heading">Policyholder Information </td>
                          </tr>
                          <tr>
                            <td align="left" valign="top"><img src="images/hori1.gif" width="280" height="5" /></td>
                          </tr>
                          <tr>
                            <td align="left" valign="top" class="text">
							<div align="justify">
							  <table width="600" border="1" cellpadding="7" cellspacing="0">
                                <tr>
                                  <td bgcolor="#009966"><span class="style2">PID </span></td>
                                  <td bgcolor="#009966"><span class="style2">Phone Numer </span></td>
                                  <td bgcolor="#009966"><span class="style2">Amount</span></td>
                                  <td bgcolor="#009966"><span class="style2">Agent Email ID </span></td>
                                  <td bgcolor="#009966"><span class="style2">Status</span></td>
                                </tr>
                                <%
                                    Connection con = DbConnect.getConnect();
                                    Statement st = con.createStatement();
                                    ResultSet rs = st.executeQuery("select * from payment");
                                    while(rs.next())
                                    {
                                        String pid = rs.getString("pid");
                                        String pemail="",pno="",amount="";
                                        String aemail="",status="";
                                        if(pid.startsWith("P"))
                                        {
                                        Statement st1 = con.createStatement();
                                        ResultSet rs1 = st1.executeQuery("select * from policyholder where pid='"+pid+"'");
                                        
                                        if(rs1.next())
                                        {
                                            pemail = rs1.getString("email");
                                            pno = rs.getString("pno");
                                            amount = rs.getString("amount");
                                            status = rs.getString("status");
                                        }
                                        Statement st2 = con.createStatement();
                                        ResultSet rs2 = st2.executeQuery("select * from liscode where pemail='"+pemail+"'");
                                       
                                        if(rs2.next())
                                        {
                                            aemail = rs2.getString("aemail");
                                        }
                                       
                                        %>
                                            <tr>
                                                <td><span class="style2"><%= pid %></span></td>
                                              <td><span class="style2"><%= pno %></span></td>
                                              <td><span class="style2"><%= amount %></span></td>
                                              <td><span class="style2"><a href="AgentCom.jsp?email=<%=aemail%>&amount=<%= rs.getString("amount") %>"><%= aemail %></a></span></td>
                                              <td><span class="style2"><%= status %></span></td>
                                            </tr>

                                        <%
                                        }
                                    }
                                %>
                                 </table>
							  <p>&nbsp;</p>
								</div></td>
                          </tr>
                          <tr>
                            <td align="right" valign="top"><a href="aboutus.jsp"></a>&nbsp;&nbsp;</td>
                          </tr>
                        </table>
                    </div></td>
                  </tr>
                  <tr>
                    <td height="4"></td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                  </tr>
              </table></td>
              <td width="244" align="left" valign="top"><br>
              <br><br><br></td></tr>
        </table></td>
      </tr>
      <tr>
        <td align="center" valign="top" class="futer_bg"><table width="97%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td height="22" align="left" valign="middle" class="futertext"><div align="center">Designed and Developed by Balaram Mandal </div></td>
              </tr>

        </table></td>
      </tr>
    </table></td>
  </tr>
</table>

<table width="133" border="0" cellspacing="0" cellpadding="3"><tr><td align="center"><!--<a href="#"><img src="http://www.website-hit-counters.com/cgi-bin/image.pl?URL=607750-3431" alt="http://www.safariguideafrica.com" title="" border="0" ></a>--></td></tr><tr></tr></table>

</body>
</html>

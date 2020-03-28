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
.style8 {font-family: calibri}
.style10 {font-family: calibri; color: #000033; }
.style12 {font-family: calibri; color: #666666; }
.style13 {color: #666666}
.style17 {font-size: 16px}
.style18 {font-family: calibri; font-size: 16px; }
.style19 {color: #000033}
-->
</style>


</head>
<body>
    <%
        String loginid = (String)session.getAttribute("loginid");
        
        Connection con = DbConnect.getConnect();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from agent where aid='"+loginid+"'");
        String fname="",lname="",pic="",email="",pno="",gender="",dob="",lmark="",country="",state="",city="",pin="";
        if(rs.next())
        {
            fname = rs.getString("fname");
            lname = rs.getString("lname");
            pic = rs.getString("pic");
            email = rs.getString("email");
            pno  = rs.getString("mobno");
            gender  = rs.getString("gender");
            dob  = rs.getString("dob");
            lmark  = rs.getString("lmark");
            country  = rs.getString("country");
            state  = rs.getString("state");
            city  = rs.getString("city");
            pin  = rs.getString("pin");
        }
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
                  <td width="22" align="left" valign="middle"><%= fname %></td>
                  <td width="12" align="left" valign="middle">&nbsp;<%= lname  %></td>
                  <td width="12" align="left" valign="top"><a href="AgentProfile.jsp"><img src="../images/<%= pic %>" width="50" height="50" border="0" style="border-radius:45px;"/></a></td>
                  <td width="17" align="left" valign="top"><img src="../images/s3.gif" width="20" height="25" /></td>
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
			  <td align="left" valign="top">&nbsp;<a href="AgentHome.jsp" class="button"/>Home</a>&nbsp;</td>
               <td align="left" valign="top">&nbsp;<a href="scheme.jsp" class="button"/>Policy&nbsp;Scheme</a>&nbsp;</td>
				<td align="left" valign="top"><a href="ViewPolicyholder.jsp" class="button"/>View&nbsp;Policyholder</a>&nbsp;</td>
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
              <td width="178" height="221" align="left" valign="top">
			  
                <table width="150" border="0" cellpadding="7" cellspacing="0">
                  <tr>
                    <td><div align="center"><img src="../images/<%= pic %>" height="150" width="150"/><br>
                            <font color="#0066CC"></font>
                    </div></td>
                  </tr>
                  <tr>
                    <td><a href="AgentProfile.jsp"><img src="../images/linkicon1.jpg" width="15" height="15">View Profile </a></td>
                  </tr>
                  <tr>
                    <td><a href="EditAgentProfile.jsp"><img src="../images/linkicon1.jpg" width="15" height="15">Edit Profile </a></td>
                  </tr>
                  <tr>
                    <td><a href="ChangeAgentPassword.jsp"><img src="../images/linkicon1.jpg" width="15" height="15">Change Password </a></td>
                  </tr>
                  <tr>
                    <td><a href="ChangeAgentImage.jsp"><img src="../images/linkicon1.jpg" width="15" height="15">Change Picture </a></td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                  </tr>
                </table>
				
			    </td>
              <td width="428" align="left" valign="top"><table width="419" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="419" align="left" valign="top"><div class="tableboder" style="width:420px; height:125px;" >
                        <table width="421" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="421" height="23" align="left" valign="middle" class="heading">Agent Profile </td>
                          </tr>
                          <tr>
                            <td align="left" valign="top"><img src="images/hori1.gif" width="280" height="5" /></td>
                          </tr>
                          <tr>
                            <td align="left" valign="top" class="text">
							<div align="justify">
							  <table width="399" border="1" cellpadding="7" cellspacing="0">
                                <tr>
                                  <td width="138" height="21"><div align="right" class="style8 style19">
                                    <div align="right"><span class="style17">First Name </span></div>
                                  </div></td>
                                  <td width="183"><span class="style12 style8"><%= fname %></span></td>
                                </tr>
                                <tr>
                                  <td><div align="right" class="style8 style19">
                                    <div align="right"><span class="style17">Last Name </span></div>
                                  </div></td>
                                  <td><span class="style12 style8"><%= lname %></span></td>
                                </tr>
                                <tr>
                                  <td><div align="right" class="style8 style19">
                                    <div align="right"><span class="style17">Email</span></div>
                                  </div></td>
                                  <td><span class="style12 style8"><%= email %></span></td>
                                </tr>
                                <tr>
                                  <td height="26"><div align="right" class="style8 style19">
                                    <div align="right"><span class="style17">Mobile Number </span></div>
                                  </div></td>
                                  <td><span class="style12 style8"><%= pno %></span></td>
                                </tr>
                                <tr>
                                  <td><div align="right" class="style10">
                                    <div align="right" class="style17">Gender</div>
                                  </div></td>
                                  <td><span class="style12 style8"><%= gender %></span></td>
                                </tr>
                                <tr>
                                  <td><div align="right" class="style19"><span class="style18">DOB</span></div></td>
                                  <td><span class="style13 style8"><%= dob %></span></td>
                                </tr>
                                <tr>
                                  <td><div align="right" class="style19"><span class="style18">Land Mark </span></div></td>
                                  <td><span class="style13 style8"><%= lmark %></span></td>
                                </tr>
                                <tr>
                                  <td><div align="right" class="style19"><span class="style18">Country</span></div></td>
                                  <td><span class="style13 style8"><%= country %></span></td>
                                </tr>
                                <tr>
                                  <td><div align="right" class="style19"><span class="style18">State</span></div></td>
                                  <td><span class="style13 style8"><%= state %></span></td>
                                </tr>
                                <tr>
                                  <td><div align="right" class="style19"><span class="style18">City</span></div></td>
                                  <td><span class="style13 style8"><%= city %></span></td>
                                </tr>
                                <tr>
                                  <td><div align="right" class="style19"><span class="style18">Pin</span></div></td>
                                  <td><span class="style13 style8"><%= pin %></span></td>
                                </tr>
                              </table>
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
              <td height="22" align="left" valign="middle" class="futertext"><div align="center">Designed and Developed by Balaram Mandal</div></td>
              <td width="8" align="left" valign="middle" class="futertext">&nbsp;</td>
            </tr>

        </table></td>
      </tr>
    </table></td>
  </tr>
</table>

<table width="133" border="0" cellspacing="0" cellpadding="3"><tr><td align="center"><!--<a href="#"><img src="http://www.website-hit-counters.com/cgi-bin/image.pl?URL=607750-3431" alt="http://www.safariguideafrica.com" title="" border="0" ></a>--></td></tr><tr></tr></table>

</body>
</html>

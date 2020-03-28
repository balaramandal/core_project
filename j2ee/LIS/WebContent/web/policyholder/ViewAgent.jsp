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

<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
<link rel="icon" href="images/favicon.ico" type="image/x-icon">
</head>

<body>
    <%
        String loginid = (String)session.getAttribute("loginid");
        Connection con = DbConnect.getConnect();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from policyholder where pid='"+loginid+"'");
        String fname="",lname="",pic="",email="",pno="",gender="",dob="",sal="",age="",lmark="",country="",state="",city="",pin="";
        if(rs.next())
        {
            fname = rs.getString("fname");
            lname = rs.getString("lname");
            pic = rs.getString("pic");
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
                <img src="../images/logotext.png" width="274" height="23"><br><br></td>
            <td width="331" rowspan="2" align="right" valign="middle">			</td>
            <td width="198" height="33" colspan="3" align="right" valign="middle">
			<table width="107" border="0" cellspacing="2" cellpadding="2">
                <tr>
                  <td width="22" align="left" valign="middle"><%= fname %></td>
                  <td width="12" align="left" valign="middle"><%= lname  %></td>
                  <td width="12" align="left" valign="middle"></td>
                  <td width="12" align="left" valign="top"><a href="Profile.jsp"><img src="../images/<%= pic %>"  width="50" height="50" border="0" style="border-radius:45px;" align="middle"/></a></td>
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
			  <td align="left" valign="top">&nbsp;<a href="PolicyholderHome.jsp" class="button"/>Home</a>&nbsp;</td>
               <td align="left" valign="top">&nbsp;<a href="scheme.jsp" class="button"/>Policy&nbsp;Scheme</a>&nbsp;</td>
                <td align="left" valign="top">&nbsp;<a href="ViewAgent.jsp" class="button"/>View&nbsp;Agent</a>&nbsp;</td>
                <td align="left" valign="top"><a href="Policy.jsp" class="button"/>Policy</a>&nbsp;</td>
                <td align="left" valign="top"><a href="feedback.jsp" class="button"/>Feedback</a>&nbsp;</td>
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
                    <td><a href="ViewAgent.jsp"><img src="../images/linkicon1.jpg" width="15" height="15">View Agent </a></td>
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
              <td width="428" align="left" valign="top">
			  <table width="648" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="419" align="left" valign="top"><div class="tableboder" style="width:620px; height:615px;" >
                      <table width="620" border="1" cellpadding="7" cellspacing="0">
                        <tr>
                          <td width="27" bgcolor="#006699"><div align="center"></div></td>
                          <td width="133" bgcolor="#006699"><div align="center"><strong>Name</strong></div></td>
                          <td width="191" bgcolor="#006699"><div align="center"><strong>Email ID </strong></div></td>
                          <td width="133" bgcolor="#006699"><div align="center"><strong>Mobno</strong></div></td>
                          <td width="54" bgcolor="#006699"><div align="center"></div></td>
                        </tr>
                        <%
                            Statement st1 = con.createStatement();
                            ResultSet rs1 = st1.executeQuery("select * from agent");
                            while(rs1.next())
                            {
                                String aid = rs1.getString("aid");
                                %>
                                    <tr>
                                        <td><div align="center"><img src="../images/<%= rs1.getString("pic") %>" width="50" height="50"/></div></td>
                                        <td><div align="center"><%= rs1.getString("fname") %>&nbsp;<%= rs1.getString("lname") %></div></td>
                                      <td><div align="center"><%= rs1.getString("email") %></div></td>
                                      <td><div align="center"><%= rs1.getString("mobno") %></div></td>
                                      <td><div align="center"><a href="viewagentdetails.jsp?aid=<%= aid %>">view more</a></div></td>
                                    </tr>

                                <%
                            }
                        %>
                        </table>
                    </div></td>
                  </tr>
                  <tr>
                    <td height="4"></td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                  </tr>
              </table>
			    <p>&nbsp;</p>
			    <p>&nbsp; </p></td>
              <td width="244" align="left" valign="top"><br>
              <br><br><br><br></td></tr>
        </table></td>
            </tr>
      <tr>
        <td align="center" valign="top" class="futer_bg"><table width="97%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td height="22" align="left" valign="middle" class="futertext"><div align="center">Designed and Developed by Balaram Mandal </div></td>
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

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
<link href="css/style.css" rel="stylesheet" type="text/css" />

<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
<link rel="icon" href="images/favicon.ico" type="image/x-icon">

<style type="text/css">
<!--
.style1 {
	color: #0099FF;
	font-family: calibri;
}
-->
</style>
</head>

<body>
<table width="850" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td bgcolor="#FFFFFF"><table width="850" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="849" align="left" valign="top"><table width="850" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="10" rowspan="2" align="left" valign="top">&nbsp;</td>
            <td width="311" rowspan="2" align="left" valign="top"><img src="images/logopic.jpg"  border="0" /><br/><img src="images/logotext.png" width="274" height="23"><br><br></td>
            <td width="331" rowspan="2" align="right" valign="middle">			</td>
            <td width="198" height="33" colspan="3" align="right" valign="middle"><table width="100" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="22" align="left" valign="middle"></td>
                  <td width="12" align="left" valign="middle">&nbsp;</td>
                  <td width="12" align="left" valign="top"><a href="contactus.jsp"></a></td>
                  <td width="17" align="left" valign="top"><img src="images/s3.gif" width="20" height="25" /></td>
                </tr>
            </table></td>
          </tr>
          <tr>
            <td height="19" colspan="3" align="left" valign="top">&nbsp;</td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td align="left" valign="top" ><br></td></tr>
      <tr>
        <td align="left" valign="top" ><p>&nbsp;</p>
		</td>
      </tr>
      <tr>
        <td align="left" valign="top" height="2"></td>
      </tr>
      <tr>
        <td align="left" valign="top"><table width="850" height="308" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td width="178" height="308" align="left" valign="top">&nbsp;</td>
              <td width="428" align="left" valign="top"><table width="593" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="419" align="left" valign="top"><div class="tableboder" style="width:620px; height:125px;" >
                        <table width="616" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="421" height="23" align="left" valign="middle" class="heading">Feedback</td>
                          </tr>
                          <tr>
                            <td align="left" valign="top"><img src="images/hori1.gif" width="280" height="5" /></td>
                          </tr>
                          <tr>
                            <td align="left" valign="top" class="text">
							<div align="justify">
							  <table width="597" border="1" class="table1">


                         <%
                            Connection con = DbConnect.getConnect();
                            Statement st = con.createStatement();
                            ResultSet rs = st.executeQuery("select * from feedback");
                            while(rs.next())
                            {
								String aid = rs.getString("aid");
								Statement st1 = con.createStatement();
                                 ResultSet rs1 = st1.executeQuery("select * from agent where aid='"+aid+"'");
								 String pic="";
								 if(rs1.next())
								 {
								 	pic = rs1.getString("pic");
								 }
                                %>
                             <tr>
                                 <td><img src="images/<%= pic %>" width="60" height="60"></td> 
                                  <td><%= rs.getString("name") %></td>
                                  <td><%= rs.getString("msg") %></td>
                                  <td><%= rs.getString("tdate") %></td>
                                </tr>
                        <%
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
              <td height="25" align="left" valign="middle" class="futertext">Designed and Developed by Balaram Mandal</td>
              <td width="43" align="center" valign="middle" class="futertext"><a href="index.jsp" class="futer_rolover">Home</a></td>
              <td width="8" align="left" valign="middle" class="futertext">|</td>
              <td width="69" align="center" valign="middle" class="futertext"><a href="aboutus.jsp" class="futer_rolover">About Us</a></td>
              <td width="8" align="left" valign="middle" class="futertext">|</td>
              <td width="71" align="center" valign="middle" class="futertext"><a href="contactus.jsp" class="futer_rolover">Contact Us</a> </td>
              <td width="8" align="left" valign="middle" class="futertext">|</td>
            </tr>

        </table></td>
      </tr>
    </table></td>
  </tr>
</table>

<table width="133" border="0" cellspacing="0" cellpadding="3"><tr><td align="center"><!--<a href="#"><img src="http://www.website-hit-counters.com/cgi-bin/image.pl?URL=607750-3431" alt="http://www.safariguideafrica.com" title="" border="0" ></a>--></td></tr><tr></tr></table>

</body>
</html>

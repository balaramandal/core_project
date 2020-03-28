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
.style3 {
	font-size: 16px;
	color: #FF0000;
}
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
				<td align="left" valign="top"><a href="notice.jsp" class="button"/>Notice</a>&nbsp;</td>
                                <td align="left" valign="top"><a href="ViewPolicy.jsp" class="button"/>View&nbsp;Policy</a>&nbsp;</td>
                                <td align="left" valign="top"><a href="Viewallfeedback.jsp" class="button"/>feedback</a>&nbsp;</td>
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
                    <td><a href="scheme.jsp"><img src="../images/linkicon1.jpg" width="15" height="15">Add Scheme </a></td>
                  </tr>
                  <tr>
                    <td><a href="ViewScheme.jsp"></a></td>
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
              <td width="428" align="left" valign="top"><table width="619" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="419" align="left" valign="top"><div class="tableboder" style="width:520px; height:560px;" >
                        <table width="618" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="421" height="23" align="left" valign="middle" class="heading">Scheme</td>
                          </tr>
                          <tr>
                            <td align="left" valign="top"><img src="images/hori1.gif" width="280" height="5" /></td>
                          </tr>
                          <tr>
                            <td align="left" valign="top" class="text">
							<div align="justify">
							  <form name="form1" method="post" action="InsertScheme.jsp">
							    <table width="500" border="1" cellpadding="7">
                                  <tr>
                                    <td width="206"><div align="right"><span class="style2">Premium Name </span></div></td>
                                    <td width="254"><span class="style2">
                                      <label>
                                      <select name="select">
                                        <option selected>select</option>
                                        <option>Single Premium Endowment Plan</option>
                                        <option>New Endowment Plan(UIN: 512N277V01)</option>
                                        <option>NEW JEEVAN ANAND (UIN: 512N279V01)</option>
                                      </select>
                                      </label>
                                    </span></td>
                                    </tr>
                                  <tr>
                                    <td colspan="2"><div align="center" class="style2 style3">Condition</div></td>
                                    </tr>
                                  <tr>
                                    <td><span class="style2">Minimum Sum Assured </span></td>
                                    <td><span class="style2">Maximum Sum assured </span></td>
                                  </tr>
                                  <tr>
                                    <td><span class="style2">
                                      <input name="textfield2" type="text" class="textfield1">
                                    </span></td>
                                    <td><span class="style2">
                                      <input name="textfield3" type="text" class="textfield1">
                                    </span></td>
                                  </tr>
                                  <tr>
                                    <td><span class="style2">Minimum entry age </span></td>
                                    <td><span class="style2">Maximum entry age</span></td>
                                  </tr>
                                  <tr>
                                    <td><span class="style2">
                                      <input name="textfield5" type="text" class="textfield1">
                                    </span></td>
                                    <td><span class="style2">
                                      <input name="textfield4" type="text" class="textfield1">
                                    </span></td>
                                  </tr>
                                  <tr>
                                    <td><span class="style2">Minimum policy term </span></td>
                                    <td><span class="style2">Maximum policy term </span></td>
                                  </tr>
                                  <tr>
                                    <td><span class="style2">
                                      <input name="textfield6" type="text" class="textfield1">
                                    </span></td>
                                    <td><span class="style2">
                                      <input name="textfield7" type="text" class="textfield1">
                                    </span></td>
                                  </tr>
                                  <tr>
                                    <td height="59"><span class="style2">Premium payment mode</span></td>
                                    <td><span class="style2">Sum Assured will be in multipless of : </span></td>
                                  </tr>
                                  <tr>
                                    <td><span class="style2">
                                      <input name="textfield8" type="text" class="textfield1">
                                    </span></td>
                                    <td><span class="style2">
                                      <input name="textfield9" type="text" class="textfield1">
                                    </span></td>
                                  </tr>
                                  <tr>
                                    <td colspan="2"><label>
                                      <div align="center">
                                        <input name="Submit" type="submit" class="button1" value="Save">
                                        </div>
                                    </label></td>
                                    </tr>
                                </table>
                                  </form>
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

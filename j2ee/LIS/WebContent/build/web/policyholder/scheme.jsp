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
.style3 {color: #666666}
.style4 {font-family: calibri; color: #666666; }
.style6 {font-family: calibri}
-->
</style>
</head>

<body>
     <%
        String loginid = (String)session.getAttribute("loginid");
        Connection con = DbConnect.getConnect();
        Statement st6 = con.createStatement();
        ResultSet rs6 = st6.executeQuery("select * from policyholder where pid='"+loginid+"'");
        String fname="",lname="",pic="";
        if(rs6.next())
        {
            fname = rs6.getString("fname");
            lname = rs6.getString("lname");
            pic = rs6.getString("pic");
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
        <td align="left" valign="top" >&nbsp;</td>
      </tr>
      <tr>
        <td align="left" valign="top" height="7"></td>
      </tr>
      <tr>
        <td align="left" valign="top"><table width="850" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="178" height="221" align="left" valign="top"><p><a href="Viewallfeedback.jsp" target="_blank"></a> </p></td>
              <td width="428" align="left" valign="top">

                  <table width="419" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="419" align="left" valign="top"><div class="tableboder" style="width:420px; height:425px;" >

                            <table width="421" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="421" height="23" align="left" valign="middle" class="heading">Scheme Information </td>
                          </tr>
                          <tr>
                            <td align="left" valign="top"><img src="images/hori1.gif" width="280" height="5" /></td>
                          </tr>
                          <tr>
                            <td align="left" valign="top" class="text">
                            <div align="justify">
                                <%
                                    String srec = request.getParameter("srec");
                                    int startrec=0;
                                    if(srec!=null)
                                    {
                                        startrec = Integer.parseInt(srec);
                                    }
                                    Statement st3=con.createStatement();
                                    ResultSet rs3=st3.executeQuery("select * from schemeinfo");
                                    int totalrecord=0;
                                    int recordperpage=1;
                                    int value=0;
                                    while(rs3.next())
                                    {
                                            totalrecord++;
                                    }
                                    if(totalrecord % recordperpage==0)
                                    {
                                            value=totalrecord/recordperpage;
                                    }
                                    else
                                    {
                                            value=(totalrecord/recordperpage)+1;
                                    }

                                    Statement st4=con.createStatement();
                                    ResultSet rs4=st3.executeQuery("select * from schemeinfo");
                                    String pname="",minsa="",maxsa="",minea="",maxea="",minpterm="",maxpterm="",ppmode="",pmul="";
                                    while(rs4.next())
                                    {
                                        pname = rs4.getString("pname");
                                        minsa = rs4.getString("minsa");
                                        maxsa = rs4.getString("maxsa");
                                        minea = rs4.getString("minea");
                                        maxea = rs4.getString("maxea");
                                        minpterm = rs4.getString("minpterm");
                                        maxpterm = rs4.getString("maxpterm");
                                        ppmode = rs4.getString("ppmode");
                                        pmul = rs4.getString("pmul");

                                    }
                                %>
                                    <table width="392" border="1" cellpadding="7">
                                  <tr>
                                    <td colspan="2"><div align="center" class="style6 style3"><%= pname %> </div></td>
                                    </tr>
                                  <tr>
                                    <td width="181"><span class="style6 style3">Minimum Sum Assured</span></td>
                                    <td width="171"><span class="style6 style3"><%= minsa %></span></td>
                                  </tr>
                                  <tr>
                                    <td height="33"><span class="style6 style3">Maximum Sum assured </span></td>
                                    <td><span class="style4"><%= maxsa %></span></td>
                                  </tr>
                                  <tr>
                                    <td><span class="style6 style3">Minimum entry age </span></td>
                                    <td><span class="style4"><%= minea %></span></td>
                                  </tr>
                                  <tr>
                                    <td><span class="style6 style3">Maximum entry age </span></td>
                                    <td><span class="style4"><%= maxea %></span></td>
                                  </tr>
                                  <tr>
                                    <td><span class="style6 style3">Minimum policy term</span></td>
                                    <td><span class="style4"><%= minpterm %></span></td>
                                  </tr>
                                  <tr>
                                    <td><span class="style6 style3">Maximum policy term</span></td>
                                    <td><span class="style4"><%= maxpterm %></span></td> 
                                  </tr>
                                  <tr>
                                    <td><span class="style6 style3">Premium payment mode</span></td>
                                    <td><span class="style4"><%= ppmode %></span></td>
                                  </tr>
                                  <tr>
                                    <td colspan="2"><span class="style6 style3">Sum Assured will be in multiples of Rs.<%= pmul %> /- only. </span></td>
                                    </tr>
                                </table>
					 <center><br><br><br><br>
                                  <%
                                    for(int i=1;i<=value;i++)
                                    {
                                        int prec= ((i-1)*1);
                                        %>
                                        <b><a href="scheme.jsp?srec=<%= prec %>"><%= i %></a>&nbsp;</b>
                                        <%
                                    }
                                  %>
                              </center>
                              

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

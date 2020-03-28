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

<script language="javascript">
   var counter = 1
          function changeIt()
          {
	if (counter == 1) {
		document.searchImage.src = "slide/a.jpg"
		counter = 2
	}
	else if (counter == 2) {
		document.searchImage.src = "slide/b.jpg"
		counter = 3
	}
	else if (counter == 3) {
		document.searchImage.src = "slide/c.jpg"
		counter = 4
	}
	else
            {
		document.searchImage.src = "slide/d.jpg"
		counter = 1
	}
            setTimeout('changeIt()',2000);
           }

   </script>
<style type="text/css">
<!--
.style1 {
	color: #0099FF;
	font-family: calibri;
}
-->
</style>
</head>

<body onLoad="changeIt()">
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
                  <td width="27" align="left" valign="top"><a href="index.jsp"><img src="images/home_icn.gif" width="27" height="25" border="0" title="Home" /></a></td>
                  <td width="10" align="left" valign="top"><img src="images/s1.gif" width="6" height="25" /></td>
                  <td width="22" align="left" valign="top"><a href="join.jsp"><img src="images/join_us.gif" width="26" height="25" border="0" title="Join" /></a></td>
                  <td width="12" align="left" valign="top"><img src="images/s2.gif" width="7" height="25" /></td>
                  <td width="12" align="left" valign="top"><a href="contactus.jsp"><img src="images/contact_icn.gif" width="29" height="25" border="0" title="Contact Us" /></a></td>
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
        <td align="left" valign="top" ><table width="100" border="0" cellspacing="0" cellpadding="0">
            <tr>
               <td align="left" valign="top">&nbsp;<a href="scheme.jsp" class="button"/>Policy&nbsp;Scheme</a>&nbsp;</td>
                <td align="left" valign="top">&nbsp;<a href="login.jsp" class="button"/>Login</a>&nbsp;</td>
				<td align="left" valign="top"><a href="help.jsp" class="button"/>Help&nbsp;and&nbsp;support</a>&nbsp;</td>
              <td align="left" valign="top"><a href="contactus.jsp" class="button"/>Contact&nbsp;Us</a>&nbsp;</td>
              <td align="left" valign="top"><a href="aboutus.jsp" class="button"/>About&nbsp;Us</a>&nbsp;</td>

            </tr>
        </table><br></td>
      </tr>
      <tr>
        <td align="left" valign="top" ><p>&nbsp;</p>
          <table width="423" border="1" align="center" cellpadding="9" class="table1">
          <tr>
            <td width="115"><div align="center" class="style1">Admin</div></td>
            <td width="116"><div align="center" class="style1">Agent</div></td>
            <td width="130"><div align="center" class="style1">Policy Holder </div></td>
          </tr>
          <tr>
            <td><div align="center"><img src="images/admin.jpg" width="62" height="89"></div></td>
            <td><div align="center"><img src="images/agent.jpg" width="78" height="89"></div></td>
            <td><div align="center"><img src="images/pl.jpg" width="61" height="89">            </div></td>
          </tr>
          <tr>
            <td><label>
              <div align="center">
               <form action="admin/AdminLogin.jsp"> 
			   		<input type="submit" name="Submit" value="Go" style="background:#FF9900;border-radius:45px;">
                </form></div>
            </label></td>
            <td><div align="center">
			<form action="agent/AgentLogin.jsp">
              <input type="submit" name="Submit2" value="Go" style="background:#FF9900;border-radius:45px;">
            </form></div></td>
            <td><div align="center">
              <form action="policyholder/PLLogin.jsp"><input type="submit" name="Submit3" value="Go" style="background:#FF9900;border-radius:45px;"></form>
            </div></td>
          </tr>
        </table>
          <p>&nbsp;</p></td>
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
                    <td width="419" align="left" valign="top"><div class="tableboder" style="width:520px; height:135px;" >
                        <table width="495" border="0" align="center" cellpadding="0" cellspacing="0">
                          <tr>
                            <td width="421" height="23" align="left" valign="middle" class="heading">Welcome to LIS </td>
                          </tr>
                          <tr>
                            <td align="left" valign="top"><img src="images/hori1.gif" width="280" height="5" /></td>
                          </tr>
                          <tr>
                            <td align="left" valign="top" class="text">
							<div align="justify">
								<p>LIS is a Limited Premium Payment, Non-Participating, Non Linked, Individual Endowment Plan. The key features of this plan are:								 </p>
								<p> Guaranteed maturity/death benefit of 115% of the sum assured</p>
								<p>*
								  Choice of 2 policy terms, 15 and 17 years.
								  Premium Payment Term of 10 and 12 years.</p>
								<p> Option to take policy benefit in monthly installments over a period of 5 or 10 years.More value for money with high Sum Assured rebate on premium.								  </p>
								<p>* you will receive 115% of your sum assured as maturity/death benefit, provided all due premiums have been paid. </p>
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
              <td height="22" align="left" valign="middle" class="futertext">Designed and Developed by Balaram Mandal</td>
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

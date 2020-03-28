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

<script language="javascript">
  function checkField()
{
	loginid = document.form1.textfield.value;
	pwd = document.form1.textfield2.value;
	
	var flag=true;
	if(loginid=="")
	{
		document.getElementById("loginL").innerHTML="Eneter Login ID";
		flag = false;
	}
	else
	{
		document.getElementById("loginL").innerHTML="";
	}
	if(pwd=="")
	{
		document.getElementById("pwdL").innerHTML="Eneter Login ID";
		flag = false;
	}
	else
	{
		document.getElementById("pwdL").innerHTML="";
	}
	return flag;
}
</script>
<style type="text/css">
<!--
.style2 {
	font-family: calibri;
	font-size: 18px;
	color: #333333;
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
            <td width="311" rowspan="2" align="left" valign="top"><img src="../images/logopic.jpg" width="35" height="40"  border="0" /><br/>
              <img src="../images/logotext.png" width="274" height="23"><br>
                <br></td>
            <td width="331" rowspan="2" align="right" valign="middle">			</td>
            <td width="198" height="33" colspan="3" align="right" valign="middle"><table width="100" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="27" align="left" valign="top"><a href="../index.jsp"><img src="../images/home_icn.gif" width="27" height="25" border="0" title="Home" /></a></td>
                  <td width="10" align="left" valign="top"><img src="../images/s1.gif" width="6" height="25" /></td>
                  <td width="22" align="left" valign="top"><a href="join.jsp"><img src="../images/join_us.gif" width="26" height="25" border="0" title="Join" /></a></td>
                  <td width="12" align="left" valign="top"><img src="../images/s2.gif" width="7" height="25" /></td>
                  <td width="12" align="left" valign="top"><a href="contactus.jsp"><img src="../images/contact_icn.gif" width="29" height="25" border="0" title="Contact Us" /></a></td>
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
               <td align="left" valign="top">&nbsp;<a href="../scheme.jsp" class="button"/>Policy&nbsp;Scheme</a>&nbsp;</td>
                <td align="left" valign="top">&nbsp;<a href="../login.jsp" class="button"/>Login</a>&nbsp;</td>
				<td align="left" valign="top"><a href="../help.jsp" class="button"/>Help&nbsp;and&nbsp;support</a>&nbsp;</td>
              <td align="left" valign="top"><a href="../contactus.jsp" class="button"/>Contact&nbsp;Us</a>&nbsp;</td>
              <td align="left" valign="top"><a href="../aboutus.jsp" class="button"/>About&nbsp;Us</a>&nbsp;</td>

            </tr>
        </table><br></td>
      </tr>
      <tr>
        <td align="left" valign="top" ><p>&nbsp;</p>
          <p>&nbsp;</p>
          <form action="AdminValidation.jsp" name="form1" onSubmit="return checkField()">
          <table width="366" border="1" align="center" cellpadding="9" class="table1">
		  <caption>
		  <span class="style2">Admin Panel</span> 
		  </caption>
		   <tr>
            <td>
			  <div align="center"><font color="#990000">
			    <%
					String msg = request.getParameter("msg");
					if(msg!=null)
					{
						out.println(msg);
					}
				%>
			    </font>
			      </div></td>
          </tr>
          <tr>
            <td width="115"><label>
              <div align="center">
                <input name="textfield" type="text" class="textfieldi2" placeholder="Enter Login ID">
                <br>
				<label id="loginL"></label></div>
            </label></td>
            </tr>
          <tr>
            <td><div align="center">
              <input name="textfield2" type="password" class="textfieldip" placeholder="Enter Password">
			   <br><label id="pwdL"></label>
            </div></td>
            </tr>
          <tr>
            <td><label>
              <div align="center">
                <input name="Submit" type="submit" class="button1" value="Submit">
                </div>
            </label></td>
            </tr>
          <tr>
            <td>&nbsp;</td>
          </tr>
        </table>
		</form>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p></td>
      </tr>
      <tr>
        <td align="left" valign="top" height="7"></td>
      </tr>
      <tr>
        <td align="left" valign="top">&nbsp;</td>
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

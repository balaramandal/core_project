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

<script type="text/javascript">
			function validate()
			{
                            var email = document.form1.email1.value;
                            if(email=="")
                            {
                                alert("Enter your Email Id");
                                document.form1.email1.focus();
                                return false;
                            }
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
                  <td width="27" align="left" valign="top"><a href="index.jsp"><img src="../images/home_icn.gif" width="27" height="25" border="0" title="Home" /></a></td>
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
        <td align="left" valign="top" ><br></td></tr>
      <tr>
        <td align="left" valign="top" >
			 <form name="form1" method="post" action="forgot_processing.jsp" onSubmit="return validate()">
		   <p>&nbsp;</p>
		   <table width="556" border="0" align="center" cellpadding="7">
             <tr>
               <td width="323">
			     <div align="center"><font size="5" face="Times New Roman, Times, serif"><span class="style4" >
		         <%
			String msg = request.getParameter("msg");
			if(msg!=null)
			{
				out.println(msg);
			}
		%>
                 </span></font>	             </div></td>
             </tr>
             <tr>
               <td><span class="style2">
                 <label>Forgot your password?</label>
               </span></td>
             </tr>
             <tr>
               <td><span class="style2">Enter your email address to reset your password. You may need to check your spam folder.</span></td>
             </tr>
             <tr>
               <td><label>
                 <input name="email1" type="email" size="89" style="height:30px;" placeholder="Email">
               </label></td>
             </tr>
             <tr>
               <td><label>
                 <div align="right">
                   <input name="Submit" type="submit" class="button1" value="Submit">
                   </div>
               </label></td>
             </tr>
           </table>
           <p>&nbsp;</p>
           <p>&nbsp;</p>
           <p>&nbsp;</p>
           <p>&nbsp;</p>
           <p>&nbsp;</p>
           <p>&nbsp;</p>
           <p>&nbsp;</p>
			 </form>
		</td>
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

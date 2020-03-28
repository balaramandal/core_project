<%-- 
    Document   : PLSignup
    Created on : 31 Mar, 2014, 7:57:41 AM
    Author     : Monalika
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

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

         function checkBlankField()
            {
                len = document.frm1.elements.length;
                for(i=0;i<len-1;i++)
                {
                    if(document.frm1.elements[i].value=="" || document.frm1.elements[i].value=="--select--" || document.frm1.elements[i].value=="click here")
                    {
                       document.frm1.elements[i].focus();
                       document.getElementById("checkr").innerHTML ="You must fill in all of the fields";
                       document.getElementById("checkr").style.background="#FFFF99";
                       document.getElementById("checkr").style.border="1px solid #FF0000";
                       return false;
                    }
                }
            }

            function calculateAge()
            {
                var sdate = document.frm1.txtCalendar.value;
                
                document.frm1.age.value = 12;
            }
   </script>
 <link rel='stylesheet' href='../JsCal/calendar.css' title='calendar'/>
 <script language="javascript" src="../JsCal/calendar.js"></script>

<style type="text/css">
<!--
.style2 {
	font-family: calibri;
	font-size: 18px;
}
.style3 {color: #FF0000}
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
                  <td width="22" align="left" valign="top"><a href="../join.jsp"><img src="../images/join_us.gif" width="26" height="25" border="0" title="Join" /></a></td>
                  <td width="12" align="left" valign="top"><img src="../images/s2.gif" width="7" height="25" /></td>
                  <td width="12" align="left" valign="top"><a href="../contactus.jsp"><img src="../images/contact_icn.gif" width="29" height="25" border="0" title="Contact Us" /></a></td>
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
          
		  
            <form name="frm1" method="post" action="InsertPLInfo.jsp" onSubmit="return checkBlankField()">
		        <table width="563" height="630" border="1" align="center" cellpadding="5" cellspacing="0" class="table1">
				<caption>PolicyHolder Registration</caption>
                  <tr>
                    <td width="322"><span class="style3">*</span>FirstName</td>
                    <td width="201" colspan="2"><label></label>
                      <span class="style3">*</span>LastName</td>
                  </tr>
                  <tr>
                    <td><input name="textfield" type="text" class="textfield1"></td>
                    <td colspan="2"><input name="textfield3" type="text" class="textfield1"></td>
                  </tr>
                  <tr>
                    <td><p><span class="style3">*</span>Password </p></td>
                    <td colspan="2"><span class="style3">*</span>Retype Password</td>
                  </tr>
                  <tr>
                    <td><input name="pwd" type="password" class="textfield1" id="pwd"></td>
                    <td colspan="2"><input name="rpwd" type="password" class="textfield1" id="rpwd"></td>
                  </tr>
                  <tr>
                    <td><span class="style3">*</span>EmailID</td>
                    <td colspan="2"><span class="style3">*</span>Phone Number </td>
                  </tr>
                  <tr>
                    <td><input name="email" type="email" class="textfield1" id="email"></td>
                    <td colspan="2"><input name="pno" type="text" class="textfield1" id="pno" maxlength="10"></td>
                  </tr>
                  <tr>
                    <td><span class="style3">*</span>Gender 
                      <label></label></td>
                    <td colspan="2"><span class="style3">*</span>DOB </td>
                  </tr>
                  <tr>
                    <td><input name="gender" type="radio" value="Male">
Male
  <input name="gender" type="radio" value="Female">
Female </td>
                    <td>
					 <input name='txtCalendar' id='idCalendar' class='inputBoxStyle' style="
	border:1px solid #456879;
	height: 28px;
	width: 180px;
	font-size:14px;
	font-family:'Times New Roman', Times, serif;" readonly>		</td>
                    <td><img src='../JsCal/cal.gif' align='absmiddle' onMouseOver="fnInitCalendar(this, 'idCalendar')" height="30" width="30"></td>
                  </tr>
                  <tr>
                    <td><span class="style3">*</span>Salary</td>
                    <td>Age</td>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td><label>
                      <input name="sal" type="text" class="textfield1" id="sal">
                    </label></td>
                    <td><input name="age" type="text" class="textfield1" id="age" maxlength="10"  value="click here"></td>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td colspan="3"><div align="center" class="style2">Address</div></td>
                  </tr>
                  <tr>
                    <td colspan="3"><table width="537" border="1">
                      <tr>
                        <td width="255"><span class="style3">*</span>Address Line </td>
                        <td><span class="style3">*</span>Country</td>
                      </tr>
                      <tr>
                        <td rowspan="3"><label>
                          <textarea name="textarea" cols="23" rows="5"></textarea>
                        </label></td>
                        <td><select name="select3" class="textfield1">
                            <option>--select--</option>
                            <option>India</option>
                            <option>Pakistan</option>
                            <option>USA</option>
                            <option>AUS</option>
                        </select></td>
                      </tr>
                      <tr>
                        <td><span class="style3">*</span>State</td>
                      </tr>
                      <tr>
                        <td><select name="select2" class="textfield1">
                            <option selected>--select--</option>
                            <option>Odisha</option>
                            <option>Jharkhand</option>
                        </select></td>
                      </tr>
                      <tr>
                        <td><span class="style3">*</span>Pincode</td>
                        <td width="266"><span class="style3">*</span>City</td>
                      </tr>
                      <tr>
                        <td><input name="pin" type="text" class="textfield1" id="pin" maxlength="7"></td>
                        <td><label>
                          <select name="select" class="textfield1">
                            <option selected>--select--</option>
                            <option>Cuttack</option>
                            <option>Talcher</option>
                            <option>BBSR</option>
                          </select>
                        </label></td>
                      </tr>
                    </table>                    </td>
                  </tr>
                  <tr>
                    <td height="117" colspan="3"><div align="center">
                      <input name="Submit" type="submit" class="button1" value="Submit">                      
                    </div>                      <label></label></td>
                  </tr>
              </table>
	        </form>
<div id="checkr" style="margin-top: 15px;width:300px;height:30px;margin-left:280px;text-align:center;" ></div>
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
              <td height="22" align="left" valign="middle" class="futertext">Designed and Developed by Balaram Mandal </td>
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

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
.style1 {font-family: calibri}
-->
</style>
<script language="javascript">
    function calculateChar(data)
    {
        len = parseInt(data.length);
        rchar = 200-len;
        document.form1.countdown1.value = rchar;
    }
    function calculateChar1(data)
    {
        len = parseInt(data.length);
        rchar = 200-len;
        document.form1.countdown.value = rchar;
    }
    function copyAddress()
    {
        add2 = document.form1.add2.value;
        state = document.form1.state.value;
        city = document.form1.city.value;
        area = document.form1.area.value;
        pin = document.form1.pin.value;
        tel = document.form1.tel.value;
        if(add2=="" || state=="" || city=="" || area=="" || pin=="" || tel=="")
        {
            document.getElementById("errorL").innerHTML="* All fields are mandatory";
        }
        else
        {
            document.getElementById("errorL").innerHTML="";
            document.form1.add1.value= add2;
            document.form1.state1.value=state;
            document.form1.city1.value=city;
            document.form1.area1.value=area;
            document.form1.pin1.value=pin;
            document.form1.tel1.value=tel;
        }
    }

</script>
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
                    <td><a href="Policy.jsp"><img src="../images/linkicon1.jpg" width="15" height="15">Proposal Form </a></td>
                  </tr>
                  <tr>
                    <td><a href="OnlinePayment.jsp"><img src="../images/linkicon1.jpg" width="15" height="15">Online Payment </a></td>
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
                    <td width="419" align="left" valign="top"><div class="tableboder" style="width:620px; height:790px;" >
					<form action="InsertProposal.jsp" name="form1" method="post" enctype="multipart/form-data">
                      <table width="618" border="1" cellpadding="7">
                        <tr>
                          <td width="143" height="40">Select Package </td>
                          <td colspan="2"><label>
                            <select name="select">
                                        <option selected>select</option>
                                        <option>Single Premium Endowment Plan</option>
                                        <option>New Endowment Plan(UIN: 512N277V01)</option>
                                        <option>NEW JEEVAN ANAND (UIN: 512N279V01)</option>
                                      </select>
                          </label></td>
                          </tr>
                        <tr>
                          <td>Select Agent </td>
                          <td colspan="2"><label>
                          <input name="select2" type="text" class="textfield1" id="select2">
                          </label></td>
                        </tr>
                        <tr>
                          <td>Annual Income</td>
                          <td colspan="2"><label>
                            <input name="textfield" type="text" class="textfield1">
                          </label></td>
                        </tr>
                        <tr>
                          <td>Occupation</td>
                          <td colspan="2"><input name="textfield2" type="text" class="textfield1" autocomplete="off"></td>
                        </tr>
                        <tr>
                          <td>ID Proof </td>
                          <td width="121"><label>
                            <select name="idf" id="idf">
								<option>Select</option>
<option value="DL">Driving License</option>
<option value="Ration Card">Ration Card</option>
<option value="PP">Passport</option>
<option value="VI">Voters Id</option>on>
<option value="PC">Pan Card</option>
                            </select>
                          </label></td>
                          <td width="296"><input type="file" name="uploadfile"></td>
                        </tr>
                        <tr>
                          <td>Address Proof </td>
                          <td>
						  <select name="adf" id="adf">
						  <option value="">Select Address Proof</option>
						<option value="Driving License">Driving License</option>
						<option value="Passport">Passport</option>
						<option value="Electricity Bill">Electricity Bill</option>
						<option value="Telephone Bill">Telephone Bill</option>
						<option value="Voter ID Card">Voter ID Card</option>
						<option value="Ration Card">Ration Card</option>
						<option value="Bank Statement">Bank Statement</option></select>						  </td>
                          <td><input name="uploadfile1" type="file" id="uploadfile1"></td>
                        </tr>
                        <tr>
                          <td colspan="3">

						  <fieldset>
<legend>Proposed Insured Address Details</legend>
	<table width="39%" border="00" cellspacing="00" cellpadding="00">
		<tr>
			<td>&nbsp;</td>
			<td>
				<table width="98%" border="0" cellspacing="1" cellpadding="1">
					<tr>
						<td height="10" align="left"  colspan="4">&nbsp;</td>
					</tr>

					<tr>
					  <td  colspan="2" height="25" align="left"><span class="style1"><strong>a. Permanent Address</strong>&nbsp;&nbsp; &nbsp;</span> </td>
						<td colspan="2" height="25" align="left"  ><span class="style1"><strong>b. Current Mailing Address</strong> </span></td>
					</tr>

					<tr>
					  <td  colspan="2" height="25" align="left"><span class="style1">
					  <font color="#FF0000" face="calibri"><label id="errorL"></label></font>
					  </span></td>
						<td colspan="2" height="25" align="left"  ><span class="style1">
						  <input name="addChk" id="addChk" type="checkbox" onClick="copyAddress()" value="" tabindex="74"/>
                          <input type="hidden" name="p_proposer_obj.addressSame" value="" id="p_proposer_obj.addressSame" locked="false">
Same as Policy Address </span></td>
					</tr>

					<tr>
					  <td  colspan="1" align="left"><span class="style1"></span></td>
					  <td align="left" valign="top"><span class="note_title style1">*</span><span class="style1">Address Line </span></td>
					  <td  colspan="1" align="left"><span class="style1"></span></td>
					  <td align="left" valign="top"><span class="note_title style1">*</span><span class="style1">Address Line 1 </span></td>
					  </tr>
					<tr>
					  <td  colspan="1" align="left"><span class="style1"></span></td>
					  <td align="left" valign="top"><span class="style1">
					    <textarea name="add2" cols="30" rows="3"   id="add2"  onkeydown="limitText(this.form.add2,this.form.countdown1,200);" onKeyUp="calculateChar(this.value)"  maxlength="200" tabindex="75"></textarea>
                          <input type="hidden" name="p_proposer_obj.insuredPerAdd" value="" id="p_proposer_obj.insuredPerAdd" locked="false">
                          </span></td>
						<td  colspan="1" align="left"><span class="style1"></span></td>
						<td align="left" valign="top">
						  <span class="style1">
                            <textarea name="add1" cols="30" rows="3" id="add1" onKeyDown="limitText(this.form.add1,this.form.countdown,200);"
						onKeyUp="calculateChar1(this.value)" tabindex="76"></textarea>
                            <input type="hidden" name="p_proposer_obj.insuredAddressLine" value="" id="p_proposer_obj.insuredAddressLine" locked="false">
                            </span></td>
					</tr>

					<tr>
					  <td colspan="1" align="left"><span class="style1"></span></td>
					  <td colspan="1" align="left"><span class="style1"><font color="red">(Maximum characters: 200) , Characters left&nbsp;&nbsp;</font>
                          <input readonly="readonly" type="text" class="ip_field_1" name="countdown1" id= "countdown1" size="4" value="200" />
                          </span></td>
						<td colspan="1" align="left"><span class="style1"></span></td>
						<td colspan="1" align="left"><span class="style1"><font color="red">(Maximum characters: 200) , Characters left&nbsp;&nbsp;</font>
                            <input readonly="readonly" type="text" class="ip_field_1" name="countdown" id= "countdown" size="2" value="200" />
                            </span></td>
					</tr>

					<tr>
					  <td colspan="1" align="left"><span class="style1"></span></td>
					  <td align="left" valign="top"><span class="note_title style1">*</span><span class="style1">State </span></td>
					  <td colspan="1" align="left"><span class="style1"></span></td>
					  <td align="left" valign="top"><span class="note_title style1">*</span><span class="style1">State </span></td>
					  </tr>
					<tr>
					  <td colspan="1" align="left"><span class="style1"></span></td>
					  <td align="left" valign="top"><select name="state" class="ip_field_1 style1" id="state" style="width:250px" tabindex="78" locked="false">
					    <option value="">-- Select --</option>
                          <option value="ANDAMAN &amp; NICOBAR ISLANDS">ANDAMAN &amp; NICOBAR ISLANDS</option>
                          <option value="ANDHRA PRADESH">ANDHRA PRADESH</option>
                          <option value="ARUNACHAL PRADESH">ARUNACHAL PRADESH</option>
                          <option value="ASSAM">ASSAM</option>
                          <option value="BIHAR">BIHAR</option>
                          <option value="CHANDIGARH">CHANDIGARH</option>
                          <option value="CHATTISGARH">CHATTISGARH</option>
                          <option value="DADRA &amp; NAGAR HAVELI">DADRA &amp; NAGAR HAVELI</option>
                          <option value="DAMAN &amp; DIU">DAMAN &amp; DIU</option>
                          <option value="DELHI">DELHI</option>
                          <option value="GOA">GOA</option>
                          <option value="GUJARAT">GUJARAT</option>
                          <option value="HARYANA">HARYANA</option>
                          <option value="HIMACHAL PRADESH">HIMACHAL PRADESH</option>
                          <option value="JAMMU AND KASHMIR">JAMMU AND KASHMIR</option>
                          <option value="JHARKHAND">JHARKHAND</option>
                          <option value="KARNATAKA">KARNATAKA</option>
                          <option value="KERALA">KERALA</option>
                          <option value="LAKSHADWEEP ISLANDS">LAKSHADWEEP ISLANDS</option>
                          <option value="MADHYA PRADESH">MADHYA PRADESH</option>
                          <option value="MAHARASHTRA">MAHARASHTRA</option>
                          <option value="MANIPUR">MANIPUR</option>
                          <option value="MEGHALAYA">MEGHALAYA</option>
                          <option value="MIZORAM">MIZORAM</option>
                          <option value="NAGALAND">NAGALAND</option>
                          <option value="ORISSA">ORISSA</option>
                          <option value="PUDUCHERRY">PUDUCHERRY</option>
                          <option value="PUNJAB">PUNJAB</option>
                          <option value="RAJASTHAN">RAJASTHAN</option>
                          <option value="SIKKIM">SIKKIM</option>
                          <option value="TAMIL NADU">TAMIL NADU</option>
                          <option value="TRIPURA">TRIPURA</option>
                          <option value="UTTAR PRADESH">UTTAR PRADESH</option>
                          <option value="UTTARAKHAND">UTTARAKHAND</option>
                          <option value="UTTARANCHAL">UTTARANCHAL</option>
                          <option value="WEST BENGAL">WEST BENGAL</option></select>                      </td>
						<td colspan="1" align="left"><span class="style1"></span></td>
						<td align="left" valign="top"><select name="state1" class="ip_field_1 style1" id="state1" style="width:250px" tabindex="77" locked="false">
						  <option value="">-- Select --</option>
                            <option value="ANDAMAN &amp; NICOBAR ISLANDS">ANDAMAN &amp; NICOBAR ISLANDS</option>
                            <option value="ANDHRA PRADESH">ANDHRA PRADESH</option>
                            <option value="ARUNACHAL PRADESH">ARUNACHAL PRADESH</option>
                            <option value="ASSAM">ASSAM</option>
                            <option value="BIHAR">BIHAR</option>
                            <option value="CHANDIGARH">CHANDIGARH</option>
                            <option value="CHATTISGARH">CHATTISGARH</option>
                            <option value="DADRA &amp; NAGAR HAVELI">DADRA &amp; NAGAR HAVELI</option>
                            <option value="DAMAN &amp; DIU">DAMAN &amp; DIU</option>
                            <option value="DELHI">DELHI</option>
                            <option value="GOA">GOA</option>
                            <option value="GUJARAT">GUJARAT</option>
                            <option value="HARYANA">HARYANA</option>
                            <option value="HIMACHAL PRADESH">HIMACHAL PRADESH</option>
                            <option value="JAMMU AND KASHMIR">JAMMU AND KASHMIR</option>
                            <option value="JHARKHAND">JHARKHAND</option>
                            <option value="KARNATAKA">KARNATAKA</option>
                            <option value="KERALA">KERALA</option>
                            <option value="LAKSHADWEEP ISLANDS">LAKSHADWEEP ISLANDS</option>
                            <option value="MADHYA PRADESH">MADHYA PRADESH</option>
                            <option value="MAHARASHTRA">MAHARASHTRA</option>
                            <option value="MANIPUR">MANIPUR</option>
                            <option value="MEGHALAYA">MEGHALAYA</option>
                            <option value="MIZORAM">MIZORAM</option>
                            <option value="NAGALAND">NAGALAND</option>
                            <option value="ORISSA">ORISSA</option>
                            <option value="PUDUCHERRY">PUDUCHERRY</option>
                            <option value="PUNJAB">PUNJAB</option>
                            <option value="RAJASTHAN">RAJASTHAN</option>
                            <option value="SIKKIM">SIKKIM</option>
                            <option value="TAMIL NADU">TAMIL NADU</option>
                            <option value="TRIPURA">TRIPURA</option>
                            <option value="UTTAR PRADESH">UTTAR PRADESH</option>
                            <option value="UTTARAKHAND">UTTARAKHAND</option>
                            <option value="UTTARANCHAL">UTTARANCHAL</option>
                            <option value="WEST BENGAL">WEST BENGAL</option></select>                        </td>
					</tr>

					<tr>
					  <td align="left"><span class="style1"></span></td>
					  <td ><span class="note_title style1">*</span><span class="style1"> City </span></td>
					  <td align="left"><span class="style1"></span></td>
					  <td ><span class="note_title style1">*</span><span class="style1"> City </span></td>
					  </tr>
					<tr>
					  <td align="left"><span class="style1"></span></td>
					  <td ><input name="city" type="text" class="ip_field_1 " id="city" tabindex="80" value="" size="40" maxlength="40" locked="false">                      </td>
						<td align="left"><span class="style1"></span></td>
						<td ><input name="city1" type="text" class="ip_field_1 " id="city1" tabindex="79" value="" size="40" maxlength="40" locked="false">                        </td>
					</tr>

					<tr>
					  <td  align="left"  ><span class="style1"></span></td>
					  <td ><span class="note_title style1">*</span><span class="style1">Area</span></td>
					  <td align="left"  ><span class="style1"></span></td>
					  <td ><span class="note_title style1">*</span><span class="style1">Area </span></td>
					  </tr>
					<tr>
					  <td  align="left"  ><span class="style1"></span></td>
					  <td ><input name="area" type="text" class="ip_field_1 " id="area" tabindex="82" value="" size="40" maxlength="40" locked="false">                      </td>
						<td align="left"  ><span class="style1"></span></td>
						<td ><input name="area1" type="text" class="ip_field_1 " id="area1" tabindex="81" value="" size="40" maxlength="40" locked="false">                        </td>
					</tr>

					<tr>
					  <td align="left"  ><span class="style1"></span></td>
					  <td ><span class="note_title style1">*</span><span class="style1">Pincode</span></td>
					  <td align="left"  ><span class="style1"></span></td>
					  <td ><span class="note_title style1">*</span><span class="style1">Pincode </span></td>
					  </tr>
					<tr>
					  <td align="left"  ><span class="style1"></span></td>
					  <td ><input name="pin" type="text" class="ip_field_1 " id="pin" tabindex="84" value="" size="40" maxlength="6" locked="false">                      </td>
						<td align="left"  ><span class="style1"></span></td>
						<td ><input name="pin1" type="text" class="ip_field_1 " id="pin1" tabindex="83" value="" size="40" maxlength="6" locked="false">                        </td>
					</tr>

					<tr>
					  <td align="left"><span class="style1"></span></td>
					  <td ><span class="note_title style1">*</span><span class="style1">Telephone </span></td>
					  <td align="left"><span class="style1"></span></td>
					  <td ><span class="note_title style1">*</span><span class="style1">Telephone</span></td>
					  </tr>
					<tr>
					  <td align="left"><span class="style1"></span></td>
					  <td ><input name="tel" type="text" class="ip_field_1 " id="tel" tabindex="86" value="" size="40" maxlength="11" locked="false">                      </td>
						<td align="left"><span class="style1"></span></td>
						<td ><input name="tel1" type="text" class="ip_field_1 " id="tel1" tabindex="85" value="" size="40" maxlength="11" locked="false">                        </td>
					</tr>
				</table>			</td>
			<td width="10">&nbsp;</td>
		</tr>
	</table>
</fieldset>						  </td>
                          </tr>
                        <tr>
                          <td colspan="3" ><label>
                            <input type="checkbox" name="checkbox" value="checkbox">
                            Confirm</label></td>
                        </tr>

                        <tr>
                          <td>&nbsp;</td>
                          <td colspan="2"><label>
                            <input name="Submit" type="submit" class="button1" value="Submit">
                          </label></td>
                        </tr>
                      </table>
					  </form>
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

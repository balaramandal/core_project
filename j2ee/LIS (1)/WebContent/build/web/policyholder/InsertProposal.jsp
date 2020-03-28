<%@page import="java.sql.ResultSet"%>
<%@page import="LIS.DbConnect"%>
<%@page import="LIS.SendNotification"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" import="javazoom.upload.*,java.util.*,java.io.*"%>

<%
    String loginid = (String)session.getAttribute("loginid");
    Connection con = DbConnect.getConnect();
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("select * from policyholder where pid='"+loginid+"'");
    String email="";
    if(rs.next())
    {
        email = rs.getString("email");
    }
    String systemPath = session.getServletContext().getRealPath("/").replace("\\","/");
    String filePath=systemPath+"policyholder/upload/"+loginid+"/";
    File ob = new File(filePath);
    if(!ob.exists())
    {
        ob.mkdirs();
    }
%>

<jsp:useBean id="upBean" scope="page" class="javazoom.upload.UploadBean" >
    <jsp:setProperty name="upBean" property="folderstore" value="<%=filePath%>" />
    <jsp:setProperty name="upBean" property="parser" value="<%= MultipartFormDataRequest.CFUPARSER %>"/>
</jsp:useBean>

<%
     String idproof="",addproof="";
     MultipartFormDataRequest mrequest = new MultipartFormDataRequest(request);
     Hashtable files = mrequest.getFiles();
     if ( (files != null) && (!files.isEmpty()) )
     {
        UploadFile file = (UploadFile) files.get("uploadfile");
        upBean.store(mrequest, "uploadfile");
        idproof=file.getFileName();
        UploadFile file1 = (UploadFile) files.get("uploadfile1");
        upBean.store(mrequest, "uploadfile1");
        addproof=file1.getFileName();
     }

    String pname = mrequest.getParameter("select");
    String agentname = mrequest.getParameter("select2");
    String income = mrequest.getParameter("textfield");
    String occp = mrequest.getParameter("textfield2");
    String idpname = mrequest.getParameter("idf");
    String adf = mrequest.getParameter("adf");
    String padd = mrequest.getParameter("add2");
    String pstate = mrequest.getParameter("state");
    String pcity = mrequest.getParameter("city");
    String parea = mrequest.getParameter("area");
    String ppin = mrequest.getParameter("pin");
    String ptel = mrequest.getParameter("tel");
    String tadd = mrequest.getParameter("add1");
    String tstate = mrequest.getParameter("state1");
    String tcity = mrequest.getParameter("city1");
    String tarea = mrequest.getParameter("area1");
    String tpin = mrequest.getParameter("pin1");
    String ttel = mrequest.getParameter("tel1");

    String data = idproof+","+addproof;

    String content = "";
    content = content +"<form action='http://localhost:8084/LifeInsurance/SendCode.jsp' target='_blank'><input type='hidden' name='agentname' value="+agentname+"><input type='hidden' name='email' value="+email+"><table width='618' border='1' cellpadding='7' cellspacing='0' align='center' style='background:#E0F8F1'>";
    content = content +"<tr>";
    content = content +"<td width='143' height='40'>Select Package </td>";
    content = content+"<td><label>";
    content = content+pname;
    content = content+"</label></td>";
    content = content+"</tr>";
    content = content+"<tr>";
    content = content+"<td>Annual Income</td>";
    content = content+"<td><label>";
    content = content+income;
    content = content+"</label></td>";
    content = content+"</tr>";
    content = content+"<tr>";
    content = content+"<td>Occupation</td>";
    content = content+"<td>";
    content = content+occp;
    content = content+"</td>";
    content = content+"</tr>";
    content = content+"<tr><td>ID Proof </td><td width='121'><label>";
    content = content+idpname;
    content = content+"</label></td></tr><tr><td>Address Proof </td>";
    content = content+"<td>";
    content = content+adf;
    content = content+"</td></tr><tr><td colspan='13'>";
    content = content+"<fieldset><legend>Proposed Insured Address Details</legend>";
    content = content+"<table border='0' cellspacing='0' cellpadding='0'>";
    content = content+"<tr><td>&nbsp;</td><td>";
    content = content+"<table width='150%' border='1' cellspacing='0' cellpadding='7'>";
    content = content+"<tr><td height='10' align='left'  colspan='4'>&nbsp;</td>";
    content = content+"</tr><tr><td colspan='2' height='25' align='left'><span class='style1'><strong>a. Permanent Address</strong>&nbsp;&nbsp; &nbsp;</span> </td>";
    content = content+"<td colspan='2' height='25' align='left'><span class='style1'><strong>b. Current Mailing Address</strong> </span></td>";
    content = content+"</tr><tr><td width='2%'  colspan='1' align='left'><span class='style1'></span></td>";
    content = content+"<td width='40%' align='left' valign='top'><span class='note_title style1'></span><span class='style1'>Address Line </span></td>";
    content = content+"<td width='7%'  colspan='1' align='left'><span class='style1'></span></td>";
    content = content+"<td width='51%' align='left' valign='top'><span class='note_title style1'></span><span class='style1'>Address Line 1 </span></td>";
    content = content+"</tr><tr><td  colspan='1' align='left'><span class='style1'></span></td>";
    content = content+"<td align='left' valign='top'><span class='style1'>";
    content = content+padd;
    content = content+"</td><td  colspan='1' align='left'><span class='style1'></span></td>";
    content = content+"<td align='left' valign='top'>";
    content = content+"<span class='style1'>";
    content = content+tadd;
    content = content+"</td></tr><tr><td colspan='1' align='left'><span class='style1'></span></td>";
    content = content+"<td colspan='1' align='left'>&nbsp;</td>";
    content = content+"<td colspan='1' align='left'>&nbsp;</td><td colspan='1' align='left'>&nbsp;</td>";
    content = content+"</tr>";
    content = content+"<tr>";
    content = content+"<td colspan='1' align='left'><span class='style1'></span></td>";
    content = content+"<td align='left' valign='top'><span class='note_title style1'>*</span><span class='style1'>State </span></td>";
    content = content+"<td colspan='1' align='left'><span class='style1'></span></td>";
    content = content+"<td align='left' valign='top'><span class='note_title style1'>*</span><span class='style1'>State </span></td>";
    content = content+"</tr>";
    content = content+"<tr><td colspan='1' align='left'><span class='style1'></span></td><td align='left' valign='top'>";
    content = content+pstate;
    content = content+"</td><td colspan='1' align='left'><span class='style1'></span></td>";
    content = content+"<td align='left' valign='top'>"+tstate+"</td></tr><tr>";
    content = content+"<td align='left'><span class='style1'></span></td>";
    content = content+"<td ><span class='note_title style1'>*</span><span class='style1'> City </span></td>";
    content = content+"<td align='left'><span class='style1'></span></td><td ><span class='note_title style1'>*</span><span class='style1'> City </span></td>";
    content = content+"</tr><tr><td align='left'><span class='style1'></span></td><td >";
    content = content+pcity;
    content = content+"</td><td align='left'><span class='style1'></span></td><td >";
    content = content+tcity;
    content = content+"</td></tr><tr><td align='left'><span class='style1'></span></td>";
    content = content+"<td ><span class='note_title style1'></span><span class='style1'>Area</span></td>";
    content = content+"<td align='left'><span class='style1'></span></td>";
    content = content+"<td ><span class='note_title style1'></span><span class='style1'>Area </span></td>";
    content = content+"</tr><tr><td  align='left'><span class='style1'></span></td><td >";
    content = content+parea;
    content = content+"</td><td align='left'><span class='style1'></span></td><td >";
    content = content+tarea;
    content = content+"</td></tr><tr><td align='left'><span class='style1'></span></td>";
    content = content+"<td><span class='note_title style1'>*</span><span class='style1'>Pincode</span></td><td align='left'  ><span class='style1'></span></td>";
    content = content+"<td><span class='note_title style1'>*</span><span class='style1'>Pincode </span></td></tr><tr>";
    content = content+"<td align='left'><span class='style1'></span></td><td>";
    content = content+ppin;
    content = content+"</td><td align='left'><span class='style1'></span></td><td >";
    content = content+tpin;
    content = content+"</td></tr><tr><td align='left'><span class='style1'></span></td><td ><span class='note_title style1'>*</span><span class='style1'>Telephone </span></td>";
    content = content+"<td align='left'><span class='style1'></span></td><td ><span class='note_title style1'>*</span><span class='style1'>Telephone</span></td></tr>";
    content = content+"<tr><td align='left'><span class='style1'></span></td><td >";
    content = content+ptel;
    content = content+"</td><td align='left'><span class='style1'></span></td><td>";
    content = content+ttel;
    content = content+"</td></tr></table></td><td width='10'>&nbsp;</td></tr></table></fieldset></td></tr>";
    content = content+"<tr align='center'><td colspan='3'><label>";
    content = content+"<input name='Submit' style='width:100px;height:35px;background:#0066FF;border-radius:20px;cursor:pointer;' type='submit'  value='Confirm'></label></td></tr></table></form>";
    SendNotification sn = new SendNotification();
    sn.setEmail(agentname);
    sn.setPath(filePath);
    sn.setData(data);
    sn.setContent(content);
    String status = sn.sendEmail();
    if(status.equals("success"))
    {
        out.println("Send...");
    }
    else
    {
        out.println("Error : "+status);
    }

    %>
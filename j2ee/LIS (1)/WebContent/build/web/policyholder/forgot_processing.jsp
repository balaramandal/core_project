<%@page import="LIS.SendMail"%>

<%
    String email = request.getParameter("email1");
    String msg = "<center><div style='border:1px solid #0000ff'>";
    msg = msg + "Hi there,<br>";
    msg = msg +"Someone requested a password change for your Life Insurance System account. <br>If this was you, you can set a new password here:<br>";
    msg = msg+"<form action='http://localhost:8084/LifeInsurance/policyholder/recover_password.jsp'><input type='hidden' name='email' value="+email+"><input style='width:200px;height:35px;background:#0099FF;color:#FFFFFF;font-size:16px;' type='submit' value='Verify Your Email'><br></form>";
    msg  = msg +"if you don't want to change your password or didn't request this, just <br>ignore and delete this message.";
    msg  = msg +"Thanks, <br> Life Insurance System</div></center>";

    SendMail ob = new SendMail();
    ob.setSub("Password Recovery");
    ob.setEmail(email);
    ob.setMessage(msg);
    String status = ob.sendEmail();
    if("Success".equals(status))
    {
        String msg1 = "Message sent successfully to your mail account";
        response.sendRedirect("PLLogin.jsp?msg="+msg1);
    }
    else
    {
        out.println("error..."+status);
    }
%>
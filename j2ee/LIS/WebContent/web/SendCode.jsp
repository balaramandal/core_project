<%@page import="java.sql.Statement"%>
<%@page import="LIS.DbConnect"%>
<%@page import="java.sql.Connection"%>
<%@page import="LIS.SendMail"%>
<%@page import="java.util.Random"%>
<%
    String email = request.getParameter("email");
    String agentname = request.getParameter("agentname");
    Random ob = new Random();
    int code = ob.nextInt(1000);
    SendMail sm = new SendMail();
    sm.setSub("LIS Code Infomation");
    sm.setEmail(email);
    
    sm.setMessage("Enter this code to confirm your proposal : "+code);
    String status = sm.sendEmail();
    if(status.equals("Success"))
    {
        Connection con = DbConnect.getConnect();
        Statement st = con.createStatement();
        st.execute("insert into liscode values('"+agentname+"','"+email+"','"+code+"')");
        out.println("Message send successfully...");
    }
    else
    {
        out.println("Error : "+status);
    }
%>
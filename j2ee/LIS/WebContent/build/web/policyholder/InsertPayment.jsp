<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="LIS.DbConnect"%>
<%@page import="java.sql.Connection"%>
<%
    String amount = request.getParameter("textfield6");
    String loginid = (String)session.getAttribute("loginid");
    Connection con = DbConnect.getConnect();
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("select * from policyholder where pid='"+loginid+"'");
    String pno="",fname="",lname="";
    if(rs.next())
    {
        pno = rs.getString("pno");
    }
    String msg = "Congratulation, "+fname+" "+lname+" Your policy payment has been successfully received";
    st.execute("insert into payment(pid,pno,amount,status,msg) values('"+loginid+"','"+pno+"','"+amount+"','pending','"+msg+"')");
    out.println("Transaction completed successfully..");
%>
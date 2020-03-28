<%@page import="java.sql.Statement"%>
<%@page import="LIS.DbConnect"%>
<%@page import="java.sql.Connection"%>
<%
    String camount = request.getParameter("textfield");
    String pno = request.getParameter("textfield2");
    String aemail = request.getParameter("aemail");
    String msg = "your policyholder payment has been received successfully.Your respective Commission Amount is "+camount+"You are doing great job";
    Connection con = DbConnect.getConnect();
    Statement st = con.createStatement();
    st.execute("insert into payment(pid,pno,amount,status,msg)  value('"+aemail+"','"+pno+"','"+camount+"','pending','"+msg+"')");
    response.sendRedirect("ViewPolicy.jsp"); 
%>
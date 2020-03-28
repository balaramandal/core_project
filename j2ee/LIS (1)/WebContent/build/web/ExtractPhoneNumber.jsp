<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="LIS.DbConnect"%>
<%@page import="java.sql.Connection"%>
<%
    Connection con = DbConnect.getConnect();
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("select * from payment where status='pending'");
    String pno="",msg="";
    String data="";
    while(rs.next())
    {
        String payid = rs.getString("pid");
        Statement st1 = con.createStatement();
        st1.execute("update payment set status='send' where pid='"+payid+"'");
        
        pno = rs.getString("pno");
        msg = rs.getString("msg");
        data = data+pno+"=="+msg+"!!";
    }
    out.println(data); 
%>
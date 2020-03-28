<%@page import="java.sql.Statement"%>
<%@page import="LIS.DbConnect"%>
<%@page import="java.sql.Connection"%>
<%
    
    String fid = request.getParameter("fid");
    Connection con =DbConnect.getConnect();
    Statement st = con.createStatement();
    st.execute("delete from feedback where aid='"+fid+"'");
    response.sendRedirect("Viewallfeedback.jsp"); 
%>
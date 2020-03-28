<%@page import="java.sql.Statement"%>
<%@page import="LIS.DbConnect"%>
<%@page import="java.sql.Connection"%>
<%
    String nid = request.getParameter("nid");
    Connection con = DbConnect.getConnect();
    Statement st = con.createStatement();
    st.execute("delete from notice where msg='"+nid+"'");
    response.sendRedirect("ViewNotice.jsp"); 
%>
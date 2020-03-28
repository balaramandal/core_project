<%@page import="java.sql.Statement"%>
<%@page import="LIS.DbConnect"%>
<%@page import="java.sql.Connection"%>
<%
    String prename = request.getParameter("select");
    String minsa = request.getParameter("textfield2");
    String maxsa = request.getParameter("textfield3");
    String minea = request.getParameter("textfield5");
    String maxea = request.getParameter("textfield4");
    String mpterm = request.getParameter("textfield6");
    String maxpterm = request.getParameter("textfield7");
    String paymode = request.getParameter("textfield8");
    String amult = request.getParameter("textfield9");

    Connection con = DbConnect.getConnect();
    Statement st = con.createStatement();
    st.execute("insert into schemeinfo values('"+prename+"','"+minsa+"','"+maxsa+"','"+minea+"','"+maxea+"','"+mpterm+"','"+maxpterm+"','"+paymode+"','"+amult+"')");
    response.sendRedirect("scheme.jsp"); 
%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="LIS.DbConnect"%>
<%@page import="java.sql.Connection"%>
<%
    String loginid = request.getParameter("textfield");
    String pwd = request.getParameter("textfield2");
    Connection con = DbConnect.getConnect();
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("select * from agent where aid='"+loginid+"' and pwd='"+pwd+"'");
    if(rs.next())
    {
        session.setAttribute("loginid",loginid); 
        response.sendRedirect("AgentHome.jsp");
    }
    else
    {
        response.sendRedirect("AgentLogin.jsp?msg=Invalid User ID/Password");
    }
%>    
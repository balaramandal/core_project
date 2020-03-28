<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="LIS.DbConnect"%>
<%@page import="java.sql.Connection"%>
<%
    String loginid = request.getParameter("textfield");
    String pwd = request.getParameter("textfield2");
    Connection con = DbConnect.getConnect();
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("select * from policyholder where pid='"+loginid+"' and pwd='"+pwd+"'");
    if(rs.next())
    {
        session.setAttribute("loginid",loginid);
        response.sendRedirect("PolicyholderHome.jsp");
    }
    else
    {
        response.sendRedirect("PLLogin.jsp?msg=Invalid User ID/Password");
    }
%>    
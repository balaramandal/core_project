<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="LIS.DbConnect"%>
<%@page import="java.sql.Connection"%>
<%
    String loginid = request.getParameter("textfield");
    String pwd = request.getParameter("textfield2");
    Connection con = DbConnect.getConnect();
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("select * from admin where loginid='"+loginid+"' and pwd='"+pwd+"'");
    if(rs.next())
    {
        session.setAttribute("loginid",loginid);
        response.sendRedirect("AdminHome.jsp");
    }
    else
    {
        response.sendRedirect("AdminLogin.jsp?msg=Invalid User ID/Password");
    }
%>
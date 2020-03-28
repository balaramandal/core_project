<%@page import="LIS.DbConnect"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    String loginid = (String)session.getAttribute("loginid");

    String cpwd = request.getParameter("textfield");
    String npwd = request.getParameter("textfield2");

    Connection con = DbConnect.getConnect();
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("select * from policyholder where pwd='"+cpwd+"' and pid='"+loginid+"'");
    if(rs.next())
    {
        Statement st1 = con.createStatement();
        st1.execute("update policyholder set pwd='"+npwd+"' where pid='"+loginid+"'");
        response.sendRedirect("ChangePassword.jsp?msg=Password Updated");
    }
    else
    {
        response.sendRedirect("ChangePassword.jsp?msg=Password Mismatch");
    }
%>
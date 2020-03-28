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
    ResultSet rs = st.executeQuery("select * from agent where pwd='"+cpwd+"' and aid='"+loginid+"'");
    if(rs.next())
    {
        Statement st1 = con.createStatement();
        st1.execute("update agent set pwd='"+npwd+"' where aid='"+loginid+"'");
        response.sendRedirect("ChangeAgentPassword.jsp?msg=Password Updated");
    }
    else
    {
        response.sendRedirect("ChangeAgentPassword.jsp?msg=Password Mismatch");
    }
%>
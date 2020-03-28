<%@page import="LIS.DbConnect"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
    String email = request.getParameter("email");
    String cpwd = request.getParameter("npwd");
    Connection con = DbConnect.getConnect();
    Statement st = con.createStatement();
    st.execute("update agent set pwd='"+cpwd+"' where email='"+email+"'");
    String msg = "Password updated successfully";
    response.sendRedirect("AgentLogin.jsp?msg="+msg);

%>
<%@page import="java.sql.Statement"%>
<%@page import="LIS.DbConnect"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%
    String msg = request.getParameter("textarea");
    SimpleDateFormat sdf = new SimpleDateFormat("dd/MMM/yyyy hh:mm:ss a");
    String cdate = sdf.format(new Date());
    Connection con = DbConnect.getConnect();
    Statement st = con.createStatement();
    st.execute("insert into notice(msg,pdate) values('"+msg+"','"+cdate+"')");

    response.sendRedirect("ViewNotice.jsp");
%>
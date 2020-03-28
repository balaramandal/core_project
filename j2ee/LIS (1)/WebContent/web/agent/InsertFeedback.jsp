<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="LIS.DbConnect"%>
<%@page import="java.sql.Connection"%>
<%
    String loginid = (String)session.getAttribute("loginid");
    Connection con = DbConnect.getConnect();
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("select fname,lname,pic from agent where aid='"+loginid+"'");
    String fname="",lname="";
    String pic="";
    if(rs.next())
    {
        fname = rs.getString("fname");
        lname = rs.getString("lname");
        pic = rs.getString("pic");
    }
    String msg = request.getParameter("textarea");
    SimpleDateFormat sdf = new SimpleDateFormat("dd/mm/yyyy hh:mm:ss a");
    String cdate = sdf.format(new Date());
    String name = fname+" "+lname;
    Statement st1 = con.createStatement();
    st1.execute("insert into feedback(name,msg,tdate,aid,pic) values('"+name+"','"+msg+"','"+cdate+"','"+loginid+"','"+pic+"')");
    response.sendRedirect("feedback.jsp?msg=sent successfully");
%>
<%@page import="java.sql.Statement"%>
<%@page import="LIS.DbConnect"%>
<%@page import="java.sql.Connection"%>
<%
    String loginid = (String)session.getAttribute("loginid");
    String fname = request.getParameter("textfield");
    String lname = request.getParameter("textfield2");
    String email = request.getParameter("textfield3");
    String mobno = request.getParameter("textfield4");
    String gender = request.getParameter("textfield5");
    String dob = request.getParameter("textfield6");
    String sal = request.getParameter("textfield62");
    String age = request.getParameter("textfield63");
    String lmark = request.getParameter("textfield7");
    String country = request.getParameter("textfield8");
    String state = request.getParameter("textfield9");
    String city = request.getParameter("textfield10");
    String pin = request.getParameter("textfield11");

    Connection con = DbConnect.getConnect();
    Statement st = con.createStatement();
    st.execute("update policyholder set fname='"+fname+"',lname='"+lname+"',email='"+email+"',pno='"+mobno+"',gender='"+gender+"',sal='"+sal+"',age='"+age+"',dob='"+dob+"',lmark='"+lmark+"',country='"+country+"',state='"+state+"',city='"+city+"',pin='"+pin+"' where pid='"+loginid+"'");
    response.sendRedirect("Profile.jsp");
%>
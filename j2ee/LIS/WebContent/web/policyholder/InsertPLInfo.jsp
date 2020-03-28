<%@page import="LIS.SendMail"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="LIS.DbConnect"%>
<%@page import="java.sql.Connection"%>
<%
    String fname = request.getParameter("textfield");
    String lname = request.getParameter("textfield3");
    String pwd = request.getParameter("pwd");
    String email = request.getParameter("email");
    String pno = request.getParameter("pno");
    String gender = request.getParameter("gender");
    String dob = request.getParameter("txtCalendar");
    String sal = request.getParameter("sal");
    String age = request.getParameter("age");
    String lmark = request.getParameter("textarea");
    String country = request.getParameter("select3");
    String state = request.getParameter("select2");
    String city = request.getParameter("select");
    String pin = request.getParameter("pin");
    String pic="";
    if(gender.equals("Male"))
    {
        pic = "male.jpg";
    }
    else
    {
        pic = "female.gif";
    }

    Connection con = DbConnect.getConnect();
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("select * from policyholder");
    String pid="";
    int count=0;
    while(rs.next())
    {
        count=1;
        pid = rs.getString("pid");
    }
    if(count==0)
    {
        pid = "P0000";
    }
    String pid1 = pid.substring(0,1);
    String pid2 = pid.substring(1);
    int len1 = pid2.length();
    int pid3 = Integer.parseInt(pid2)+1;
    int len2 = (pid3+"").length();
    int len3 = len1-len2;
    String addzero="";
    for(int i=0;i<len3;i++)
    {
        addzero = addzero+"0";
    }
    String npid = pid1+addzero+pid3;

   Statement st1 = con.createStatement();
     st1.execute("insert into policyholder values('"+fname+"','"+lname+"','"+npid+"','"+pwd+"','"+email+"','"+pno+"','"+gender+"','"+dob+"','"+sal+"','"+age+"','"+lmark+"','"+country+"','"+state+"','"+city+"','"+pin+"','"+pic+"')");
             session.setAttribute("loginid",npid);  
     response.sendRedirect("PolicyholderHome.jsp");

        //response.sendRedirect("PLLogin.jsp");
%>
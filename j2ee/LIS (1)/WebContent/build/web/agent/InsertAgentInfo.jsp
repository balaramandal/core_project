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
    ResultSet rs = st.executeQuery("select * from agent");
    String aid="";
    int count=0;
    while(rs.next())
    {
        count=1;
        aid = rs.getString("aid");
    }
    if(count==0)
    {
        aid = "A0000";
    }
    String aid1 = aid.substring(0,1);
    String aid2 = aid.substring(1);
    int len1 = aid2.length();
    int aid3 = Integer.parseInt(aid2)+1;
    int len2 = (aid3+"").length();
    int len3 = len1-len2;
    String addzero="";
    for(int i=0;i<len3;i++)
    {
        addzero = addzero+"0";
    }
    String naid = aid1+addzero+aid3;

        Statement st1 = con.createStatement();
        st1.execute("insert into agent values('"+fname+"','"+lname+"','"+naid+"','"+pwd+"','"+email+"','"+pno+"','"+gender+"','"+dob+"','"+lmark+"','"+country+"','"+state+"','"+city+"','"+pin+"','"+pic+"')");
        session.setAttribute("loginid",naid);
        response.sendRedirect("AgentHome.jsp");
        //response.sendRedirect("AgentLogin.jsp");
%>
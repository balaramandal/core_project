<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <title>Logout Page</title>
        <link rel="stylesheet" type="text/css" href="css/normalize.css">
        <link rel="stylesheet" type="text/css" href="css/cand_home.css">

        <head>
       <script type="text/javascript">
           window.setTimeout('window.location="../login.jsp"; ',2000);
        window.history.forward();
        function noBack()
        {
            window.history.forward();
        }
    </script>
    </head>
    <body onLoad="noBack();" onpageshow="if (event.persisted) noBack();" onUnload="">
        <%
            session.invalidate();
        %>
        <center>
        <div id="logout">
            <h1>Hi You have successful logged out</h1>
            <h3><a href="../login.jsp">click here</a>&nbsp;&nbsp;for login again.</h3>
        </div>
        </center>
    </body>
</html>

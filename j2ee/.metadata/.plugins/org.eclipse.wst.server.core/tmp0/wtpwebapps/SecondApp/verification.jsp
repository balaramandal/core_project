<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		String name=request.getParameter("name");
		int age=Integer.parseInt(request.getParameter("age"));
		RequestDispatcher rd = request.getRequestDispatcher("validuser.jsp");
		if(age>18)
		{
			rd.forward(request, response);
		}
		else
		{
			rd=request.getRequestDispatcher("index.jsp");
			rd.include(request, response);
			out.println("you are not a valid user");
		}
		
	%>	
</body>
</html>
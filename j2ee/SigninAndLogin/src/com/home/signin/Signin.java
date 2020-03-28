package com.home.signin;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Signin extends HttpServlet {
	
	
	public void service(HttpServletRequest request,HttpServletResponse response)throws IOException,ServletException
	{
		PrintWriter out = response.getWriter();
		String userid=request.getParameter("name");
		String password=request.getParameter("pwd");
		out.println(userid+"   "+password);
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","system");
			Statement st = con.createStatement();
			st.executeUpdate("insert into record values('"+userid+"',"+"'"+password+"')");
			out.println("hello world");
		}
		catch(Exception e)
		{
			out.println(e);
		}
	}
}

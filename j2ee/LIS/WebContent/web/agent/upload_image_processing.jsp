<%@page import="LIS.DbConnect"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="org.apache.commons.fileupload.*,java.util.*,java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
          String loginid = (String)session.getAttribute("loginid");

          String filename="";
          ServletContext context = session.getServletContext();
          String wpath= context.getRealPath("/").replace("\\","/");
          String filepath =wpath+"images/";

          DiskFileUpload upload = new DiskFileUpload();
          List items =  upload.parseRequest(request);
          FileItem name = (FileItem)items.get(0);
          filename = name.getName();
          long size = name.getSize();
          if(size < 8000000)
           {
              filename = loginid+filename;
              File ob = new File(filepath+filename);
              name.write(ob);

              Connection con = DbConnect.getConnect();
              Statement st = con.createStatement();
              st.execute("update agent set pic='"+filename+"' where aid='"+loginid+"'");

              response.sendRedirect("AgentProfile.jsp");
            }
          else
           {
                out.println("Size exceed.....");
           }
 %>
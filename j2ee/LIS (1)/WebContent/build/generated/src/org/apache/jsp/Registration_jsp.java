package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Registration_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  private org.apache.jasper.runtime.ResourceInjector _jspx_resourceInjector;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.apache.jasper.runtime.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\r\n");
      out.write("   \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <title>JSP Page</title>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("    <form name=\"form1\" method=\"post\" action=\"FetchData.jsp\">\r\n");
      out.write("      <table width=\"386\" border=\"0\" align=\"center\" cellpadding=\"7\" cellspacing=\"0\">\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td width=\"155\">First Name </td>\r\n");
      out.write("          <td width=\"203\"><label>\r\n");
      out.write("            <input type=\"text\" name=\"textfield\">\r\n");
      out.write("          </label></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td>Last Name </td>\r\n");
      out.write("          <td><input type=\"text\" name=\"textfield2\"></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td>Email ID </td>\r\n");
      out.write("          <td><input type=\"text\" name=\"textfield3\"></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td>Telephone</td>\r\n");
      out.write("          <td><input type=\"text\" name=\"textfield4\"></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td>Gender</td>\r\n");
      out.write("          <td><label>\r\n");
      out.write("            <input name=\"radiobutton\" type=\"radio\" value=\"Male\">\r\n");
      out.write("          Male\r\n");
      out.write("          <input name=\"radiobutton\" type=\"radio\" value=\"Female\">\r\n");
      out.write("          Female</label></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td>Country</td>\r\n");
      out.write("          <td><label>\r\n");
      out.write("            <select name=\"select\">\r\n");
      out.write("              <option selected>Select</option>\r\n");
      out.write("              <option>India</option>\r\n");
      out.write("              <option>Pakistan</option>\r\n");
      out.write("              <option>Aus</option>\r\n");
      out.write("              <option>Sa</option>\r\n");
      out.write("            </select>\r\n");
      out.write("          </label></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td>&nbsp;</td>\r\n");
      out.write("          <td><label>\r\n");
      out.write("            <input type=\"submit\" name=\"Submit\" value=\"Send\">\r\n");
      out.write("          </label></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("      </table>\r\n");
      out.write("    </form>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}

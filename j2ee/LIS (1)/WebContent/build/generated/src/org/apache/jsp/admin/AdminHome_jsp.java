package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import LIS.DbConnect;
import java.sql.Connection;

public final class AdminHome_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=iso-8859-1\" />\r\n");
      out.write("<title>LIS</title>\r\n");
      out.write("\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("<!--\r\n");
      out.write("body {\r\n");
      out.write("\tmargin-left: 0px;\r\n");
      out.write("\tmargin-top: 0px;\r\n");
      out.write("\tmargin-right: 0px;\r\n");
      out.write("\tmargin-bottom: 0px;\r\n");
      out.write("}\r\n");
      out.write("a:link {\r\n");
      out.write("\ttext-decoration: none;\r\n");
      out.write("}\r\n");
      out.write("a:visited {\r\n");
      out.write("\ttext-decoration: none;\r\n");
      out.write("}\r\n");
      out.write("a:hover {\r\n");
      out.write("\ttext-decoration: none;\r\n");
      out.write("}\r\n");
      out.write("a:active {\r\n");
      out.write("\ttext-decoration: none;\r\n");
      out.write("}\r\n");
      out.write("-->\r\n");
      out.write("</style>\r\n");
      out.write("<link href=\"../css/style.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("\r\n");
      out.write("<link rel=\"shortcut icon\" href=\"../images/favicon.ico\" type=\"image/x-icon\">\r\n");
      out.write("<link rel=\"icon\" href=\"../images/favicon.ico\" type=\"image/x-icon\">\r\n");
      out.write("\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("<!--\r\n");
      out.write(".style1 {\r\n");
      out.write("\tcolor: #0099FF;\r\n");
      out.write("\tfont-family: calibri;\r\n");
      out.write("}\r\n");
      out.write("-->\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("    ");

        String loginid = (String)session.getAttribute("loginid");
       
    
      out.write("\r\n");
      out.write("<table width=\"850\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td bgcolor=\"#FFFFFF\"><table width=\"850\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td width=\"849\" align=\"left\" valign=\"top\"><table width=\"850\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
      out.write("          <tr>\r\n");
      out.write("            <td width=\"10\" rowspan=\"2\" align=\"left\" valign=\"top\">&nbsp;</td>\r\n");
      out.write("            <td width=\"311\" rowspan=\"2\" align=\"left\" valign=\"top\"><img src=\"../images/logopic.jpg\" width=\"35\" height=\"40\"  border=\"0\" /><br/>\r\n");
      out.write("              <img src=\"../images/logotext.png\" width=\"274\" height=\"23\"><br>\r\n");
      out.write("                <br></td>\r\n");
      out.write("            <td width=\"331\" rowspan=\"2\" align=\"right\" valign=\"middle\">\t\t\t</td>\r\n");
      out.write("            <td width=\"198\" height=\"33\" colspan=\"3\" align=\"right\" valign=\"middle\"><table width=\"100\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
      out.write("                <tr>\r\n");
      out.write("                  <td width=\"22\" align=\"left\" valign=\"middle\">");
      out.print( loginid );
      out.write("</td>\r\n");
      out.write("                  <td width=\"12\" align=\"left\" valign=\"middle\">&nbsp;</td>\r\n");
      out.write("                  <td width=\"12\" align=\"left\" valign=\"top\"><a href=\"AgentProfile.jsp\"></a></td>\r\n");
      out.write("                  <td width=\"17\" align=\"left\" valign=\"top\">&nbsp;</td>\r\n");
      out.write("                </tr>\r\n");
      out.write("            </table></td>\r\n");
      out.write("          </tr>\r\n");
      out.write("          <tr>\r\n");
      out.write("            <td height=\"19\" colspan=\"3\" align=\"left\" valign=\"top\">&nbsp;</td>\r\n");
      out.write("          </tr>\r\n");
      out.write("        </table></td>\r\n");
      out.write("      </tr>\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td align=\"left\" valign=\"top\" ><table width=\"100\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
      out.write("            <tr>\r\n");
      out.write("\t\t\t  <td align=\"left\" valign=\"top\">&nbsp;<a href=\"AdminHome.jsp\" class=\"button\"/>Home</a>&nbsp;</td>\r\n");
      out.write("               <td align=\"left\" valign=\"top\">&nbsp;<a href=\"scheme.jsp\" class=\"button\"/>Scheme</a>&nbsp;</td>\r\n");
      out.write("\t\t\t  <td align=\"left\" valign=\"top\"><a href=\"notice.jsp\" class=\"button\"/>Notice</a>&nbsp;</td>\r\n");
      out.write("                          <td align=\"left\" valign=\"top\"><a href=\"ViewPolicy.jsp\" class=\"button\"/>View&nbsp;Policy</a>&nbsp;</td>\r\n");
      out.write("                          <td align=\"left\" valign=\"top\"><a href=\"Viewallfeedback.jsp\" class=\"button\"/>feedback</a>&nbsp;</td>\r\n");
      out.write("\t\t\t  <td align=\"left\" valign=\"top\"><a href=\"logout.jsp\" class=\"button\"/>Logout</a>&nbsp;</td>\r\n");
      out.write("                          \r\n");
      out.write("\r\n");
      out.write("            </tr>\r\n");
      out.write("        </table><br></td>\r\n");
      out.write("      </tr>\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td align=\"left\" valign=\"top\" ><p>&nbsp;</p>\r\n");
      out.write("\t\t</td>\r\n");
      out.write("      </tr>\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td align=\"left\" valign=\"top\" height=\"7\"></td>\r\n");
      out.write("      </tr>\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td align=\"left\" valign=\"top\"><table width=\"850\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td width=\"178\" height=\"221\" align=\"left\" valign=\"top\">&nbsp;</td>\r\n");
      out.write("              <td width=\"428\" align=\"left\" valign=\"top\"><table width=\"419\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
      out.write("                  <tr>\r\n");
      out.write("                    <td width=\"419\" align=\"left\" valign=\"top\"><div class=\"tableboder\" style=\"width:520px; height:425px;\" >\r\n");
      out.write("                        <table width=\"522\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
      out.write("                          <tr>\r\n");
      out.write("                            <td width=\"421\" height=\"23\" align=\"left\" valign=\"middle\" class=\"heading\">Welcome to LIS </td>\r\n");
      out.write("                          </tr>\r\n");
      out.write("                          <tr>\r\n");
      out.write("                            <td align=\"left\" valign=\"top\"><img src=\"images/hori1.gif\" width=\"280\" height=\"5\" /></td>\r\n");
      out.write("                          </tr>\r\n");
      out.write("                          <tr>\r\n");
      out.write("                            <td align=\"left\" valign=\"top\" class=\"text\">\r\n");
      out.write("\t\t\t\t\t\t\t<div align=\"justify\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<p>LIS is a Limited Premium Payment, Non-Participating, Non Linked, Individual Endowment Plan. The key features of this plan are:\t\t\t\t\t\t\t\t </p>\r\n");
      out.write("\t\t\t\t\t\t\t\t<p> Guaranteed maturity/death benefit of 115% of the sum assured</p>\r\n");
      out.write("\t\t\t\t\t\t\t\t<p>*\r\n");
      out.write("\t\t\t\t\t\t\t\t  Choice of 2 policy terms, 15 and 17 years.\r\n");
      out.write("\t\t\t\t\t\t\t\t  Premium Payment Term of 10 and 12 years.</p>\r\n");
      out.write("\t\t\t\t\t\t\t\t<p> Option to take policy benefit in monthly installments over a period of 5 or 10 years.More value for money with high Sum Assured rebate on premium.\t\t\t\t\t\t\t\t  </p>\r\n");
      out.write("\t\t\t\t\t\t\t\t<p>* you will receive 115% of your sum assured as maturity/death benefit, provided all due premiums have been paid. </p>\r\n");
      out.write("\t\t\t\t\t\t\t\t<p>* you will receive 115% of your sum assured as maturity/death benefit, provided all due premiums have been paid. </p>\r\n");
      out.write("\t\t\t\t\t\t\t\t<p>* you will receive 115% of your sum assured as maturity/death benefit, provided all due premiums have been paid. </p>\r\n");
      out.write("\t\t\t\t\t\t\t</div></td>\r\n");
      out.write("                          </tr>\r\n");
      out.write("                          <tr>\r\n");
      out.write("                            <td align=\"right\" valign=\"top\"><a href=\"aboutus.jsp\"></a>&nbsp;&nbsp;</td>\r\n");
      out.write("                          </tr>\r\n");
      out.write("                        </table>\r\n");
      out.write("                    </div></td>\r\n");
      out.write("                  </tr>\r\n");
      out.write("                  <tr>\r\n");
      out.write("                    <td height=\"4\"></td>\r\n");
      out.write("                  </tr>\r\n");
      out.write("                  <tr>\r\n");
      out.write("                    <td>&nbsp;</td>\r\n");
      out.write("                  </tr>\r\n");
      out.write("              </table></td>\r\n");
      out.write("              <td width=\"244\" align=\"left\" valign=\"top\"><br>\r\n");
      out.write("              <br><br><br></td></tr>\r\n");
      out.write("        </table></td>\r\n");
      out.write("      </tr>\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td align=\"center\" valign=\"top\" class=\"futer_bg\"><table width=\"97%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td height=\"22\" align=\"left\" valign=\"middle\" class=\"futertext\"><div align=\"center\">Designed and Developed by Balaram Mandal</div></td>\r\n");
      out.write("              </tr>\r\n");
      out.write("\r\n");
      out.write("        </table></td>\r\n");
      out.write("      </tr>\r\n");
      out.write("    </table></td>\r\n");
      out.write("  </tr>\r\n");
      out.write("</table>\r\n");
      out.write("\r\n");
      out.write("<table width=\"133\" border=\"0\" cellspacing=\"0\" cellpadding=\"3\"><tr><td align=\"center\"><!--<a href=\"#\"><img src=\"http://www.website-hit-counters.com/cgi-bin/image.pl?URL=607750-3431\" alt=\"http://www.safariguideafrica.com\" title=\"\" border=\"0\" ></a>--></td></tr><tr></tr></table>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}

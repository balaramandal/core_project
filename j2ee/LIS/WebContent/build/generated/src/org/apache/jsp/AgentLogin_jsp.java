package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class AgentLogin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.apache.jasper.runtime.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

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
      out.write("<link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("\r\n");
      out.write("<link rel=\"shortcut icon\" href=\"images/favicon.ico\" type=\"image/x-icon\">\r\n");
      out.write("<link rel=\"icon\" href=\"images/favicon.ico\" type=\"image/x-icon\">\r\n");
      out.write("\r\n");
      out.write("<script language=\"javascript\">\r\n");
      out.write("   var counter = 1\r\n");
      out.write("          function changeIt()\r\n");
      out.write("          {\r\n");
      out.write("\tif (counter == 1) {\r\n");
      out.write("\t\tdocument.searchImage.src = \"slide/a.jpg\"\r\n");
      out.write("\t\tcounter = 2\r\n");
      out.write("\t}\r\n");
      out.write("\telse if (counter == 2) {\r\n");
      out.write("\t\tdocument.searchImage.src = \"slide/b.jpg\"\r\n");
      out.write("\t\tcounter = 3\r\n");
      out.write("\t}\r\n");
      out.write("\telse if (counter == 3) {\r\n");
      out.write("\t\tdocument.searchImage.src = \"slide/c.jpg\"\r\n");
      out.write("\t\tcounter = 4\r\n");
      out.write("\t}\r\n");
      out.write("\telse\r\n");
      out.write("            {\r\n");
      out.write("\t\tdocument.searchImage.src = \"slide/d.jpg\"\r\n");
      out.write("\t\tcounter = 1\r\n");
      out.write("\t}\r\n");
      out.write("            setTimeout('changeIt()',2000);\r\n");
      out.write("           }\r\n");
      out.write("\r\n");
      out.write("   </script>\r\n");
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
      out.write("<body onLoad=\"changeIt()\">\r\n");
      out.write("<table width=\"850\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td bgcolor=\"#FFFFFF\"><table width=\"850\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td width=\"849\" align=\"left\" valign=\"top\"><table width=\"850\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
      out.write("          <tr>\r\n");
      out.write("            <td width=\"10\" rowspan=\"2\" align=\"left\" valign=\"top\">&nbsp;</td>\r\n");
      out.write("            <td width=\"311\" rowspan=\"2\" align=\"left\" valign=\"top\"><img src=\"images/logopic.jpg\"  border=\"0\" /><br/><img src=\"images/logotext.png\" width=\"274\" height=\"23\"><br><br></td>\r\n");
      out.write("            <td width=\"331\" rowspan=\"2\" align=\"right\" valign=\"middle\">\t\t\t</td>\r\n");
      out.write("            <td width=\"198\" height=\"33\" colspan=\"3\" align=\"right\" valign=\"middle\"><table width=\"100\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
      out.write("                <tr>\r\n");
      out.write("                  <td width=\"27\" align=\"left\" valign=\"top\"><a href=\"index.jsp\"><img src=\"images/home_icn.gif\" width=\"27\" height=\"25\" border=\"0\" title=\"Home\" /></a></td>\r\n");
      out.write("                  <td width=\"10\" align=\"left\" valign=\"top\"><img src=\"images/s1.gif\" width=\"6\" height=\"25\" /></td>\r\n");
      out.write("                  <td width=\"22\" align=\"left\" valign=\"top\"><a href=\"join.jsp\"><img src=\"images/join_us.gif\" width=\"26\" height=\"25\" border=\"0\" title=\"Join\" /></a></td>\r\n");
      out.write("                  <td width=\"12\" align=\"left\" valign=\"top\"><img src=\"images/s2.gif\" width=\"7\" height=\"25\" /></td>\r\n");
      out.write("                  <td width=\"12\" align=\"left\" valign=\"top\"><a href=\"contactus.jsp\"><img src=\"images/contact_icn.gif\" width=\"29\" height=\"25\" border=\"0\" title=\"Contact Us\" /></a></td>\r\n");
      out.write("                  <td width=\"17\" align=\"left\" valign=\"top\"><img src=\"images/s3.gif\" width=\"20\" height=\"25\" /></td>\r\n");
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
      out.write("               <td align=\"left\" valign=\"top\">&nbsp;<a href=\"scheme.jsp\" class=\"button\"/>Policy&nbsp;Scheme</a>&nbsp;</td>\r\n");
      out.write("                <td align=\"left\" valign=\"top\">&nbsp;<a href=\"login.jsp\" class=\"button\"/>Login</a>&nbsp;</td>\r\n");
      out.write("\t\t\t\t<td align=\"left\" valign=\"top\"><a href=\"help.jsp\" class=\"button\"/>Help&nbsp;and&nbsp;support</a>&nbsp;</td>\r\n");
      out.write("              <td align=\"left\" valign=\"top\"><a href=\"contactus.jsp\" class=\"button\"/>Contact&nbsp;Us</a>&nbsp;</td>\r\n");
      out.write("              <td align=\"left\" valign=\"top\"><a href=\"aboutus.jsp\" class=\"button\"/>About&nbsp;Us</a>&nbsp;</td>\r\n");
      out.write("\r\n");
      out.write("            </tr>\r\n");
      out.write("        </table><br></td>\r\n");
      out.write("      </tr>\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td align=\"left\" valign=\"top\" ><p>&nbsp;</p>\r\n");
      out.write("          <table width=\"269\" border=\"1\" align=\"center\" cellpadding=\"9\" class=\"table1\">\r\n");
      out.write("\t\t  <caption>\r\n");
      out.write("\t\t  Agent Login\r\n");
      out.write("\t\t  </caption>\r\n");
      out.write("          <tr>\r\n");
      out.write("            <td width=\"115\"><label>\r\n");
      out.write("              <div align=\"center\">\r\n");
      out.write("                <input name=\"textfield\" type=\"text\" class=\"textfieldi2\" placeholder=\"Enter Login ID\">\r\n");
      out.write("                </div>\r\n");
      out.write("            </label></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("          <tr>\r\n");
      out.write("            <td><div align=\"center\">\r\n");
      out.write("              <input name=\"textfield2\" type=\"password\" class=\"textfieldip\" placeholder=\"Enter Password\">\r\n");
      out.write("            </div></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("          <tr>\r\n");
      out.write("            <td><label>\r\n");
      out.write("              <div align=\"center\">\r\n");
      out.write("                <input name=\"Submit\" type=\"submit\" class=\"button1\" value=\"Submit\">\r\n");
      out.write("                </div>\r\n");
      out.write("            </label></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("          <tr>\r\n");
      out.write("            <td><div align=\"center\"><a href=\"AgentSignup.jsp\">New User? Sign Up </a></div></td>\r\n");
      out.write("          </tr>\r\n");
      out.write("          <tr>\r\n");
      out.write("            <td><div align=\"center\">Forgot Password? </div></td>\r\n");
      out.write("          </tr>\r\n");
      out.write("        </table>\r\n");
      out.write("          <p>&nbsp;</p></td>\r\n");
      out.write("      </tr>\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td align=\"left\" valign=\"top\" height=\"7\"></td>\r\n");
      out.write("      </tr>\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td align=\"left\" valign=\"top\"><table width=\"850\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td width=\"178\" height=\"221\" align=\"left\" valign=\"top\"><table width=\"100\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
      out.write("\r\n");
      out.write("                  <tr>\r\n");
      out.write("                    <td align=\"left\" valign=\"top\">Login Page </td>\r\n");
      out.write("                  </tr>\r\n");
      out.write("                  </table>\r\n");
      out.write("\t\t\t\t  </td>\r\n");
      out.write("              <td width=\"428\" align=\"left\" valign=\"top\"><table width=\"419\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
      out.write("                  <tr>\r\n");
      out.write("                    <td width=\"419\" align=\"left\" valign=\"top\"><div class=\"tableboder\" style=\"width:420px; height:125px;\" >\r\n");
      out.write("                        <table width=\"421\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
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
      out.write("              <td width=\"244\" align=\"left\" valign=\"top\"><table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
      out.write("                <tr>\r\n");
      out.write("                  <td align=\"left\" valign=\"top\"><div class=\"tableboder\" style=\"width:235px; height:200px;\">\r\n");
      out.write("                    <table width=\"237\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
      out.write("                      <tr>\r\n");
      out.write("                        <td width=\"4\" align=\"left\" valign=\"top\">&nbsp;</td>\r\n");
      out.write("                        <td width=\"49\" align=\"left\" valign=\"top\">&nbsp;</td>\r\n");
      out.write("                        <td width=\"178\" align=\"left\" valign=\"middle\" class=\"mobileno\">News &amp; Events </td>\r\n");
      out.write("                        <td width=\"4\" align=\"left\" valign=\"top\">&nbsp;</td>\r\n");
      out.write("                      </tr>\r\n");
      out.write("                      <tr>\r\n");
      out.write("                        <td colspan=\"4\" align=\"left\" valign=\"top\"><img src=\"images/hori2.gif\" width=\"192\" height=\"6\" /></td>\r\n");
      out.write("                      </tr>\r\n");
      out.write("                      <tr>\r\n");
      out.write("                        <td colspan=\"4\" align=\"left\" valign=\"top\" height=\"5\"></td>\r\n");
      out.write("                      </tr>\r\n");
      out.write("                      <tr>\r\n");
      out.write("                        <td align=\"left\" valign=\"top\">&nbsp;</td>\r\n");
      out.write("                        <td colspan=\"2\" rowspan=\"7\" align=\"left\" valign=\"top\" class=\"text\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<marquee  width=\"230px;\" scrollamount=\"3\" behavior=\"scroll\" direction=\"up\"  height=\"150px;\"  onmouseover=\"this.stop()\" onMouseOut=\"this.start()\">\r\n");
      out.write("  Content\r\n");
      out.write("</marquee>\r\n");
      out.write("                        </td>\r\n");
      out.write("                        <td rowspan=\"7\" align=\"left\" valign=\"top\">&nbsp;</td>\r\n");
      out.write("                      </tr>\r\n");
      out.write("                      <tr>\r\n");
      out.write("                        <td align=\"left\" valign=\"top\">&nbsp;</td>\r\n");
      out.write("                      </tr>\r\n");
      out.write("                      <tr>\r\n");
      out.write("                        <td align=\"left\" valign=\"top\">&nbsp;</td>\r\n");
      out.write("                      </tr>\r\n");
      out.write("                      <tr>\r\n");
      out.write("                        <td align=\"left\" valign=\"top\">&nbsp;</td>\r\n");
      out.write("                      </tr>\r\n");
      out.write("                      <tr>\r\n");
      out.write("                        <td align=\"left\" valign=\"top\">&nbsp;</td>\r\n");
      out.write("                      </tr>\r\n");
      out.write("                      <tr>\r\n");
      out.write("                        <td align=\"left\" valign=\"top\">&nbsp;</td>\r\n");
      out.write("                      </tr>\r\n");
      out.write("                      <tr>\r\n");
      out.write("                        <td height=\"130\" align=\"left\" valign=\"top\">&nbsp;</td>\r\n");
      out.write("                      </tr>\r\n");
      out.write("                    </table>\r\n");
      out.write("                  </div></td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                  <td align=\"center\" valign=\"top\">&nbsp;</td>\r\n");
      out.write("                </tr>\r\n");
      out.write("              </table><br><br><br><br></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("        </table></td>\r\n");
      out.write("      </tr>\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td align=\"center\" valign=\"top\" class=\"futer_bg\"><table width=\"97%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td height=\"22\" align=\"left\" valign=\"middle\" class=\"futertext\">Designed and Developed by Deepa,Monalika,Sweta &amp; Siddharth </td>\r\n");
      out.write("              <td width=\"43\" align=\"center\" valign=\"middle\" class=\"futertext\"><a href=\"index.jsp\" class=\"futer_rolover\">Home</a></td>\r\n");
      out.write("              <td width=\"8\" align=\"left\" valign=\"middle\" class=\"futertext\">|</td>\r\n");
      out.write("              <td width=\"69\" align=\"center\" valign=\"middle\" class=\"futertext\"><a href=\"aboutus.jsp\" class=\"futer_rolover\">About Us</a></td>\r\n");
      out.write("              <td width=\"8\" align=\"left\" valign=\"middle\" class=\"futertext\">|</td>\r\n");
      out.write("              <td width=\"71\" align=\"center\" valign=\"middle\" class=\"futertext\"><a href=\"contactus.jsp\" class=\"futer_rolover\">Contact Us</a> </td>\r\n");
      out.write("              <td width=\"8\" align=\"left\" valign=\"middle\" class=\"futertext\">|</td>\r\n");
      out.write("            </tr>\r\n");
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
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}

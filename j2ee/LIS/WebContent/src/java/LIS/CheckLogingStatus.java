/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package LIS;

/**
 *
 * @author padmanava
 */
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class CheckLogingStatus implements Filter
{
    public void init(FilterConfig arg0) throws ServletException {}

    public void doFilter(ServletRequest req, ServletResponse resp,
    FilterChain chain) throws IOException, ServletException {
     resp.setContentType("text/html");
    HttpSession session = ((HttpServletRequest)req).getSession();
    String loginid = (String)session.getAttribute("loginid");
    if(loginid==null)
    {
        ((HttpServletResponse)resp).sendRedirect("login.jsp");
    }
    else
    {
        chain.doFilter(req, resp);
    }
    }
    public void destroy() {}
}


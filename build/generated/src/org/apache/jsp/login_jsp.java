package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Iniciar Sesión</title>\n");
      out.write("        <link href=\"bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"bootstrap/css/estilos.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <form action=\"ValidarSesion\" method=\"post\">\n");
      out.write("            <div class=\"login-wrap\">\n");
      out.write("                <div class=\"login-html\">\n");
      out.write("                    <input id=\"tab-1\" type=\"radio\" name=\"tab\" class=\"sign-in\" checked><label for=\"tab-1\" class=\"tab\">Sign In</label>\n");
      out.write("                    <input id=\"tab-2\" type=\"radio\" name=\"tab\" class=\"for-pwd\"><label for=\"tab-2\" class=\"tab\">Forgot Password</label>\n");
      out.write("                    <div class=\"login-form\">\n");
      out.write("                        <div class=\"sign-in-htm\">\n");
      out.write("                            <div class=\"group\">\n");
      out.write("                                <label for=\"user\" class=\"label\">Username or Email</label>\n");
      out.write("                                <input id=\"user\" type=\"text\" class=\"input\" name=\"correo\">\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"group\">\n");
      out.write("                                <label for=\"pass\" class=\"label\">Password</label>\n");
      out.write("                                <input id=\"pass\" type=\"password\" class=\"input\" data-type=\"password\" name=\"contrasena\">\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"group\">\n");
      out.write("                                <input type=\"submit\" class=\"button\" value=\"Sign In\">\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"hr\"></div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"for-pwd-htm\">\n");
      out.write("                            <div class=\"group\">\n");
      out.write("                                <label for=\"user\" class=\"label\">Username or Email</label>\n");
      out.write("                                <input id=\"user\" type=\"text\" class=\"input\">\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"group\">\n");
      out.write("                                <input type=\"submit\" class=\"button\" value=\"Reset Password\">\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"hr\"></div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </form>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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

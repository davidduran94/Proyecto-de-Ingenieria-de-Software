package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Usuario_005fFinal_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"es\">\n");
      out.write("    <head>\n");
      out.write("            <meta charset='utf-8'>\n");
      out.write("            <title>Usuario</title>\n");
      out.write("            <!-- Hojas de estilo -->\n");
      out.write("            <link rel=\"stylesheet\" href=\"CSS/Estilos_paginas.css\">\n");
      out.write("            <link rel=\"stylesheet\" href=\"CSS/feature-carousel.css\" charset=\"utf-8\" />\n");
      out.write("            <!-- Scripts de Jquery -->\n");
      out.write("            <script src=\"http://code.jquery.com/jquery-1.7.1.min.js\"></script>\n");
      out.write("            <script src=\"JS/Carusel.js\"></script>\n");
      out.write("            <script src=\"JS/jquery-1.7.min.js\" type=\"text/javascript\" charset=\"utf-8\"></script>\n");
      out.write("            <script src=\"JS/jquery.featureCarousel.min.js\" type=\"text/javascript\" charset=\"utf-8\"></script>\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <img class='Logo' src=\"Imagenes/Logo.png\"/>\n");
      out.write("        <div class=\"principal\"> \n");
      out.write("            <h1>Hall events Brody's</h1>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"segundo\">\n");
      out.write("            <header>\n");
      out.write("                <nav>\n");
      out.write("                    <ul>\n");
      out.write("                        <li><a href=\"Boda_1.jsp\"> Boda </a></li>   \n");
      out.write("                        <li><a href=\"XV_1.jsp\"> XV Años </a></li>    \n");
      out.write("                        <li><a href=\"Bautizo_1.jsp\"> Bautizo </a></li>    \n");
      out.write("                        <li><a href=\"Cumple_1.jsp\"> Cumpleaños </a></li>\n");
      out.write("                        <li><a href=\"#\"> Mis Eventos </a></li>\n");
      out.write("                        <li><a href=\"Cerrar_sesion.jsp\"> Cerrar Sesion </a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </nav>\n");
      out.write("            </header>    \n");
      out.write("        </div>\n");
      out.write("        ");

            HttpSession sesion=request.getSession();
            String nom;
            nom=(String)sesion.getAttribute("Nombre_Administrador");
            sesion.setAttribute("Nombre_Administrador",nom );
            
        
      out.write("\n");
      out.write("        \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            <!--  EN ESTA SECCION SE LE ANUNCIA AL USUARIO QUE SU EVENTO HA SIDO REGISTRADO SATISFACTORIAMENTE-->\n");
      out.write("            \n");
      out.write("            <!--  Y AGREGARLE MAS INFORMACION SOBRE SUS EVENTOS Y PROMOCIONES PERO AHORA NO SE ME OCURRE NADA-->\n");
      out.write("            \n");
      out.write("       \n");
      out.write("            \n");
      out.write("        \n");
      out.write("            \n");
      out.write("            \n");
      out.write("        <div id='Contenido'>    \n");
      out.write("            <section>\n");
      out.write("                ");
 out.println("<h3> &iexcl;&iexcl;&iexcl;Bienvenido!!! "+nom+"</h3>");
      out.write("  \n");
      out.write("             </section>\n");
      out.write("        </div>\n");
      out.write("             \n");
      out.write("             \n");
      out.write("             <!--  CAMBIAR EL PIE DE PAGINA-->\n");
      out.write("             \n");
      out.write("        <footer class=\"pie\">\n");
      out.write("            <br/>\n");
      out.write("               \n");
      out.write("            <a href=\"https://facebook.com/\" title=\"Facebook\" > <img src=\"Imagenes/face.jpg\" alt=\"\" width=\"25\" height=\"24\" />@brody_party</a>\n");
      out.write("            <a href=\"https://facebook.com/\" title=\"Facebook\" > <img src=\"Imagenes/twitter.png\" alt=\"\" width=\"25\" height=\"24\"/>@brody_party</a>\n");
      out.write("            \n");
      out.write("        </footer>  \n");
      out.write("    </body> \n");
      out.write("</html>\n");
      out.write("\n");
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

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
            <meta charset='utf-8'>
            <title>Usuario</title>
            <!-- Hojas de estilo -->
            <link rel="stylesheet" href="CSS/Estilos_paginas.css">
            <link rel="stylesheet" href="CSS/feature-carousel.css" charset="utf-8" />
            <!-- Scripts de Jquery -->
            <script src="http://code.jquery.com/jquery-1.7.1.min.js"></script>
            <script src="JS/Carusel.js"></script>
            <script src="JS/jquery-1.7.min.js" type="text/javascript" charset="utf-8"></script>
            <script src="JS/jquery.featureCarousel.min.js" type="text/javascript" charset="utf-8"></script>

    </head>
    <body>
        <img class='Logo' src="Imagenes/Logo.png"/>
        <div class="principal"> 
            <h1>Hall events Brody's</h1>
        </div>
        <div class="segundo">
            <header>
                <nav>
                    <ul>
                        <li><a href="Boda_1.jsp"> Boda </a></li>   
                        <li><a href="XV_1.jsp"> XV Años </a></li>    
                        <li><a href="Bautizo_1.jsp"> Bautizo </a></li>    
                        <li><a href="Cumple_1.jsp"> Cumpleaños </a></li>
                        <li><a href="#"> Mis Eventos </a></li>
                        <li><a href="Cerrar_sesion.jsp"> Cerrar Sesion </a></li>
                    </ul>
                </nav>
            </header>    
        </div>
        <%
            HttpSession sesion=request.getSession();
            String nom;
            nom=(String)sesion.getAttribute("Nombre_Administrador");
            sesion.setAttribute("Nombre_Administrador",nom );
            
        %>
        
            
            
            <!--  EN ESTA SECCION SE LE ANUNCIA AL USUARIO QUE SU EVENTO HA SIDO REGISTRADO SATISFACTORIAMENTE-->
            
            <!--  Y AGREGARLE MAS INFORMACION SOBRE SUS EVENTOS Y PROMOCIONES PERO AHORA NO SE ME OCURRE NADA-->
            
       
            
        
            
            
        <div id='Contenido'>    
            <section>
                <% out.println("<h3> &iexcl;&iexcl;&iexcl;Bienvenido!!! "+nom+"</h3>");%>  
             </section>
        </div>
             
             
             <!--  CAMBIAR EL PIE DE PAGINA-->
             
        <footer class="pie">
            <br/>
               
            <a href="https://facebook.com/" title="Facebook" > <img src="Imagenes/face.jpg" alt="" width="25" height="24" />@brody_party</a>
            <a href="https://facebook.com/" title="Facebook" > <img src="Imagenes/twitter.png" alt="" width="25" height="24"/>@brody_party</a>
            
        </footer>  
    </body> 
</html>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
	<head>
		<meta charset='utf-8'>
                <title>Boda</title>
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
            
            <!-- OBTENEMOS LAS SESIONES DEL NOMBRE DEL ADMINISTRADOR Y ESTABLESEMOS EL TIPO DE EVENTO DENTRO DE LA SESION-->
            
            
             <%
                        HttpSession sesion=request.getSession();
                        String Bod= "Boda";
                        sesion.setAttribute("Tipo_Evento", Bod);
                        String nom;
                        nom=(String)sesion.getAttribute("Nombre_Administrador");
                        sesion.setAttribute("Nombre_Administrador", nom);
                    %>

            
            <!-- AQUI CAMBIAR  EL PIE DE PAGINA Y LA PARTE DE NOTICIAS Y PAQUETES-->        
                    
                    
        <img class='Logo' src="Imagenes/Logo.png"/>            
            <div class="principal">
                <header>
                    <hgroup>
                            <h1>Hall events Brody's</h1>
                    </hgroup>
                </header>    
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
            <div id='Contenido'>

                <div id='servicios'>    
                    <br>
                    <br>
                    <form action="Procesar" method="POST">
                         <input type="checkbox" name="serv1" value="Juegos_Infantiles"/>Juegos Infantiles
                         <br>
                        <input type="checkbox" name="serv2" value="Grupo_musical"/>Grupo musical
                        <Br>
                        <input type="checkbox" name="serv3" value="Animador"/>Animador
                        <Br>
                        <input type="checkbox" name="serv4" value="Meseros"/>Meseros
                        <Br>
                        <input type="checkbox" name="serv5" value="Vallet_Parking"/>Vallet_Parking
                        <Br>                       
                        <input type="checkbox" name="serv6" value="Comida"/>Comida
                        <Br>
                        <input type="checkbox" name="serv7" value="Bebida"/>Bebida
                        <Br>
                        <br>
                        <input type="date" name="fecha" step="1" min="2015-01-01" max="2033-12-31" required="">
                        <Br>
                        <br>
                        <select name="Cantidad">
                            <option> 50 </option>
                            <option> 80 </option>
                            <option> 100 </option>
                            <option> 150 </option>
                        </select>
                        <Br>
                        <input type='submit' value="Ingresar Invitados">
                    </form>
                </div>
            </div>
            <footer class="pie">
            <br/>
               
            <a href="https://facebook.com/" title="Facebook" > <img src="Imagenes/face.jpg" alt="" width="25" height="24" />@brody_party</a>
            <a href="https://facebook.com/" title="Facebook" > <img src="Imagenes/twitter.png" alt="" width="25" height="24"/>@brody_party</a>
            
        </footer> 
	</body> 
</html>



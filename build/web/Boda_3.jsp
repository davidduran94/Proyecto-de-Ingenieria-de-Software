<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
	<head>
		<meta charset='utf-8'>
                <title>Boda</title>
                <link rel="stylesheet" href="CSS/Estilos_Pista.css">
                <script src="JS/Pista.js"></script>
	</head>
	<body>
            
            <!-- AQUI CAMBIAR  EL PIE DE PAGINA Y DARLE EJOR PRESENTACION A TODA LA PAGINA--> 
            
            
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
            
            
            <!-- AQUI SE DA LA OPCION DE ORGANIZAR LAS MESAS DEL SALON CONFORME A LAS MESAS DE LOS INVITADOS-->
            
            <div id='Contenido'>
                <section>
                    <div id="div1" style="position: absolute; top: 100px; left:100px;  background-color:#000000; color:#000000;">
                    <img width='650' height='600' src="Imagenes/fondo.jpg">
                    </div>
                     <div id="div12" style="top:250px; left:-35px; position:absolute; background-color:#FFFF00; color:#000000;"
                    onmousedown="comienzoMovimiento(event, this.id);" onmouseover="this.style.cursor='move'">
                    <img width='130' height='95' src="Imagenes/principal.jpg">
                    </div>
                    
                    <form action="Usuario_Final.jsp" method="POST">
                    
                    <%
                        HttpSession sesion=request.getSession();
                        int cant;
                        cant=(Integer)sesion.getAttribute("Cantidad");
                        int i;
                        for(i=0; i<=cant+1; i++)
                        {
 out.println("<div id=\"div"+i+"\" style=\"top:100px; left:0px; position:absolute; background-color:#55f; color:#000000;\" onmousedown=\"comienzoMovimiento(event, this.id);\" onmouseover=\"this.style.cursor='move'\"> <img width=\'95\' height=\'95\' src=\"Imagenes/mesas.jpg\"> </div>");
                        }
                    %>
                    
                     <br><br>
                     <input type="submit" value="Registrar_TODO_Evento"/>
                    </form>
                </section>
            </div>
            <footer class="pie">
            <br/>
               
            <a href="https://facebook.com/" title="Facebook" > <img src="Imagenes/face.jpg" alt="" width="25" height="24" />@brody_party</a>
            <a href="https://facebook.com/" title="Facebook" > <img src="Imagenes/twitter.png" alt="" width="25" height="24"/>@brody_party</a>
            
        </footer> 
	</body> 
</html>

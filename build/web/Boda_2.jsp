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
                <section>
                    
                    <!-- EN ESTA PARTE SE OBTIENE LA CANTIDAD DE MESA Y SE REQUIERE INGRESAR LOS NOMBRES DE LS INVITADOS -->
                    
                   <!-- AQUI CAMBIAR  EL PIE DE PAGINA Y ACOMODAR LOS CAMPOS DE TEXTO DARLE MEJOR FORMATO EN GENERAL A LA PAGINA--> 
                    
                    
                    <form action="Procesar2" method="POST">
                    <%
                        HttpSession sesion=request.getSession();
                        int cant;
                        cant=(Integer)sesion.getAttribute("Cantidad");
                        int i,j,x;
                        for(i=1; i<=cant; i++)
                        {
                            out.println("<label>Mesa:"+i+"</label>");
                            out.println("<br>");
                            for(j=1; j<=10; j++)
                            {
                                x=i+j;
                                out.println("<label>Nombre de Invitado:</label>");
                                out.println("<input type=\"text\" name=\"invitado"+j+"\"/>");
                                out.println("<br>");
                            }
 
                        }
                    %>
                    <br>
                    <input type="submit" value="Distribucion de Evento"/>
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



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        
        <%
            HttpSession sesion=request.getSession();
            sesion.invalidate();                                //eliminamos la sesion del usuario
            response.sendRedirect("Inicio.html");
        %>
        
    </body>
</html>

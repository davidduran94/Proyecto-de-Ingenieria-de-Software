
package Procesar;

import Conexion_BD.Conexion;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Procesar2 extends HttpServlet 
{
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        response.setContentType("text/html;charset=UTF-8");
        try
        {
            Conexion miConexion=new Conexion();
            Connection aux=miConexion.getConnection();
            Statement comando=aux.createStatement();        //Manejo de conexion con la base de datos
            HttpSession sesion=request.getSession();
            
            String nombre=(String)sesion.getAttribute("Nombre_Administrador");
            int cant=(Integer)sesion.getAttribute("Cantidad");
            String fecha=request.getParameter("fecha");
            
            if(cant==50)
            {
                cant=5;
            }
            if(cant==80)            //relacion de la cantidad de invitados con el numero de mesas
            {
                cant=8;
            }
            if(cant==100)
            {
                cant=10;
            }
            if(cant==150)
            {
                cant=15;
            }
            sesion.setAttribute("Cantidad",cant);
            sesion.setAttribute("Nombre_Administrador",nombre);
            response.sendRedirect("Boda_3.jsp");
        }catch(SQLException ex)
        
        {
		System.out.println(ex+"FFFFF");
        }
    }
}


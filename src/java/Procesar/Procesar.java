
package Procesar;

import Conexion_BD.Conexion;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Procesar extends HttpServlet 
{
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        response.setContentType("text/html;charset=UTF-8");
        try
        {
            Conexion miConexion=new Conexion();
            Connection aux=miConexion.getConnection();      //Manejo de la conexion con la base de datos
            Statement comando=aux.createStatement();
            HttpSession sesion=request.getSession();        //Obtenemos las sesiones
            
            int s1, s2 , s3, s4, s5, s6, s7; 

            String serv1=request.getParameter("serv1");
            String serv2=request.getParameter("serv2");
            String serv3=request.getParameter("serv3");
            String serv4=request.getParameter("serv4");
            String serv5=request.getParameter("serv5");     //Obtenemos los valores de las caracteristicas que tendra el evento
            String serv6=request.getParameter("serv6");
            String serv7=request.getParameter("serv7");
            int cant=Integer.parseInt(request.getParameter("Cantidad"));
            String fecha=request.getParameter("fecha");
            
            String tipo=(String)sesion.getAttribute("Tipo_Evento");
            String nombre=(String)sesion.getAttribute("Nombre_Administrador");//Valores obtenidos de la sesion
            
            if(serv1!=null)
                s1=1;
             else
                s1=0;
            if(serv2!=null)
                s2=1;
             else
                s2=0;
            if(serv3!=null)
                s3=1;
             else
                s3=0;
            if(serv4!=null)             //validacion de los chekbox obtenidos
                s4=1;
             else
                s4=0;
            if(serv5!=null)             //se les asigna 1 o 0 porque en la base de datos se maneja el tipo booleano
                s5=1;
             else
                s5=0;
            if(serv6!=null)
                s6=1;
             else
                s6=0;
            if(serv7!=null)
                s7=1;
             else
                s7=0;
            
            //Obtenemos el id del usuario de la sesion para poder registrar valores en la base de datos y relacionarlo con su ID
            
            ResultSet id_u = comando.executeQuery("Select idUsuarios from Usuarios where Nombre_Administrador='"+nombre+"';");
            int id=0;
            while (id_u.next()) 
            { 
                id=id_u.getInt (1); //obtenemos el ID
            }
            
            //actualizamos la base de datos agregando los parametros obtenidos en la tabla evento en referencia  al id 
            
            comando.executeUpdate("INSERT INTO Eventos(Fecha, Tipo_Evento, Cantidad, Usuarios_idUsuarios) VALUES ('"+fecha+"', '"+tipo+"', '"+cant+"', '"+id+"');");            
            ResultSet id_e = comando.executeQuery("Select idEventos from Eventos where Fecha='"+fecha+"';");
            
            //obtenemos el id de la tabla evento donde antes registramos los parametros para poder relacionar con la tabla servicios
            
            while (id_e.next()) 
            { 
                id=id_e.getInt (1); 
            }       
            
            //actualizamos la tabla servicios 
            
            comando.executeUpdate("INSERT INTO Servicios(Juegos_Infantiles, Grupo_Musical, Animador, Meseros, Ballet_Parking, Comida, Bebida, Eventos_idEventos) VALUES ('"+s1+"', '"+s2+"', '"+s3+"', '"+s4+"', '"+s5+"', '"+s6+"', '"+s7+"', '"+id+"');");

            //System.out.println(""+cant+"");
            //System.out.println(""+fecha+"");
            
            if(cant==50)
            {
                cant=5;
            }
            if(cant==80)
            {
                cant=8;
            }
            if(cant==100)       //se hace una relacion de la cantidad de invitados del evento
            {
                cant=10;        //para sacar la cantidad de mesas que se generaran para el evento
            }
            if(cant==150)
            {
                cant=15;
            }
            sesion.setAttribute("Cantidad",cant);
            sesion.setAttribute("Nombre_Administrador",nombre);
            response.sendRedirect("Boda_2.jsp");
        }catch(SQLException ex)
        
        {
		System.out.println(ex+"FFFFF");
        }
    }
}


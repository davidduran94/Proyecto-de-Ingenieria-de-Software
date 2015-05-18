package Login;

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


public class Login extends HttpServlet 
{

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        response.setContentType("text/html;charset=UTF-8");
        
        try
        {
            Conexion miConexion=new Conexion();
            Connection aux=miConexion.getConnection();              //Manejo para la conexion con la base de datos
            Statement comando=aux.createStatement();

            String usr=request.getParameter("Usuario");
            String pass=request.getParameter("Password");
            
            HttpSession sesion=request.getSession(true);            //Creamos la sesion 
                                                                    //Consultamos en la base de datos si el usuario y la contraseña estan registrados
            ResultSet registro1 = comando.executeQuery("Select Nombre_Administrador,Password from Usuarios where Nombre_Administrador='"+usr+"' and Password='"+pass+"';");// where Usuario='"+usr+"'");
            if(registro1.next()==true)
            {
                System.out.println("Usuario dentro de la base de datos\n");
                sesion.setAttribute("Nombre_Administrador",usr );   //Subimos a sesion el nombre del administrador del evento
                response.sendRedirect("Usuario.jsp");               //Entramos al sistema con nuestro usuario
            }
            else
            {
                System.out.println("Usuario inexistente\n");
                response.sendRedirect("Error_Login.html");      //tratamos el acceso denegado al sistema
            }
        }catch(SQLException ex)
        
        {
		System.out.println(ex+"FFFFF");
        }
    }
}

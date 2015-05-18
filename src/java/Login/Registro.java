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


public class Registro extends HttpServlet 
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
            Statement comando=aux.createStatement();

            String nom=request.getParameter("Nombre");
            String admin=request.getParameter("Nombre_Administrador");
            String pass=request.getParameter("Password");

            comando.executeUpdate("INSERT INTO Usuarios(Nombre, Nombre_Administrador, Password) VALUES ('"+nom+"', '"+admin+"', '"+pass+"');");
            miConexion.desconectar();
            response.sendRedirect("Inicio.html");
        }catch(SQLException ex)
        
        {
		System.out.println(ex+"FFFFF");
        }
    }
}

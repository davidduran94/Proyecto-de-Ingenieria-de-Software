package Conexion_BD;

import java.sql.*;    

/*
    Clase quie realiza la conexion con la base de Datos "Salon_Eventos" 
    
*/

public class Conexion 
{
    String servidor = "jdbc:mysql://localhost/salon_eventos";           //direccion del servidor de la base de datos
    String usuarioDB="root";                                            //usuario del gestor de la B.D.
    String passwordDB="/likeme/";                                       //password del usuario

   Connection conex = null;

   public Conexion() 
   {
      try
      {
         //obtenemos el driver de para mysql
         Class.forName("com.mysql.jdbc.Driver");                        //clase del controlador para hacer la conexion
         //obtenemos la conexión
         conex = DriverManager.getConnection(servidor,usuarioDB,passwordDB);//metodo para obtener la conexion
         if (conex!=null)
         {
            System.out.println("Conección a base de datos  OK");
         }
      }catch(SQLException e){                                          //manejo de excepciones por cualquier falla con la conexion
         System.out.println(e);
      }catch(ClassNotFoundException e){
         System.out.println(e);
      }
   }
   /**Permite retornar la conexión*/
   public Connection getConnection(){
      return conex;
   }

   public void desconectar(){
      conex = null;
   }

}

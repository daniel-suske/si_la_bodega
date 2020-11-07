package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
/**
 *
 * @author jony
 * 
 */
public class Conexion {
    
    public String driver, bd, user, password, urlBd;
    public Connection conexion;
    
    public Conexion()
    {
        
        driver = "com.mysql.jdbc.Driver";
        bd = "SI_LA_BODEGA";
        user = "root";
        password = "";
        urlBd = "jdbc:mysql://localhost:3306/" + bd;
        
        try {
            
            Class.forName(driver).newInstance();
            conexion = DriverManager.getConnection(urlBd, user, password);
            System.out.println("¡Conexion Exitosa OK!");
            
        } catch (Exception e) {
            
            System.out.println("Error al conectarse OK" + e);
            
        }
        
        
    }
    
    public Connection obtenerConexion()
    {
        
        return conexion;
        
    }
    
    public Connection cerrarConexion() throws SQLException
    {
        
        conexion.close();
        conexion = null;
        return conexion;
        
    }
    
    public static void main (String[] args)
    {
        
        new Conexion();
        
    }
    
}
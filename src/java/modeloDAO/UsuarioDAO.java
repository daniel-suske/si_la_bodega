/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modeloDAO;

import util.*;
import modeloVO.UsuarioVO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author Yeison
 * 
 */
public class UsuarioDAO extends Conexion implements Crud {
    
    private Connection conexion = null;                  //Conectar la data base
    private PreparedStatement puente = null;             //Para que no sea vulnerable a inyyecion de code, lo asegura
    private ResultSet mensajero = null;                  //Encargado de las consultas
    
    private String sql;                                  //Permite manejar consultas
    private boolean operacion = false;                   //Para confirmar el estado de la operación
    
                                                        //Declarar las variables del VO
    private String Id = "", Nombres = "", Apellidos = "", Numero_Documento = "", Tipo_Documento = "", Correo = "", Contrasena = "", Telefono = "", Barrio = "", Direccion = "", Id_Registrado_Por = "", Perfil = "", Estado = "";
    
    
    public UsuarioDAO()
    {    
    }
    
    public UsuarioDAO(UsuarioVO usuVO)                  //Metodo constructor y asigna un alias al VO
    {
        super();
        
        try {
            
            conexion = this.obtenerConexion();
            
            Id = usuVO.getId();
            Nombres = usuVO.getNombres();
            Apellidos = usuVO.getApellidos();
            Numero_Documento = usuVO.getNumero_Documento();
            Tipo_Documento = usuVO.getTipo_Documento();
            Correo = usuVO.getCorreo();
            Contrasena = usuVO.getContrasena();
            Telefono = usuVO.getTelefono();
            Barrio = usuVO.getBarrio();
            Direccion = usuVO.getDireccion();
            Id_Registrado_Por = usuVO.getId_Registrado_Por();
            Perfil = usuVO.getPerfil();
            Estado = usuVO.getEstado();
            
        } catch (Exception e) {
            
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE,null,e);
            
        }
    }

    @Override
    public boolean agregarRegistro() {

        try {
            
            sql = "INSERT INTO USUARIO(Nombres, Apellidos, Numero_Documento, Tipo_Documento, Correo, Contrasena, Telefono, Barrio, Direccion, Id_Registrado_Por, Perfil, Estado) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, Nombres);
            puente.setString(2, Apellidos);
            puente.setString(3, Numero_Documento);
            puente.setString(4, Tipo_Documento);
            puente.setString(5, Correo);
            puente.setString(6, Contrasena);
            puente.setString(7, Telefono);
            puente.setString(8, Barrio);
            puente.setString(9, Direccion);
            puente.setString(10, Id_Registrado_Por);
            puente.setString(11, Perfil);
            puente.setString(12, Estado);
            
            puente.executeUpdate();
            operacion = true;
            
        } catch(SQLException e) {
            
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE,null,e);
            
        } finally {
            
            try {
                
                this.cerrarConexion();
                
            } catch (SQLException e) {
                
                Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE,null,e);
                
            }
            
        }
        
        return operacion;
        
    }

    @Override
    public boolean consultarRegistro() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean actualizarRegistro() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean eliminarRegistro() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    
    public boolean inicioSesion(String correo, String contrasena) {
        
        try {
            
            conexion = this.obtenerConexion();
            sql = "SELECT * FROM USUARIO WHERE Correo = ? && Contrasena = ?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, Correo);
            puente.setString(2, Contrasena);
            mensajero = puente.executeQuery();
            
            if (mensajero.next()) {
                
                operacion = true;
                
            }
            
        } catch (SQLException e) {
            
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE,null,e);
            
        } finally {
            
            try {
                
                this.cerrarConexion();
                
            } catch (SQLException e) {
                
                Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE,null,e);
                
            }
        
        }
        
        return operacion;
        
    }
        
    
}

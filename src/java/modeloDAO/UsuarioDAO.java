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
    
    public UsuarioDAO(UsuarioVO usVO)                  //Metodo constructor y asigna un alias al VO
    {
        super();
        
        try {
            
            conexion = this.obtenerConexion();
            
            Id = usVO.getId();
            Nombres = usVO.getNombres();
            Apellidos = usVO.getApellidos();
            Numero_Documento = usVO.getNumero_Documento();
            Tipo_Documento = usVO.getTipo_Documento();
            Correo = usVO.getCorreo();
            Contrasena = usVO.getContrasena();
            Telefono = usVO.getTelefono();
            Barrio = usVO.getBarrio();
            Direccion = usVO.getDireccion();
            Id_Registrado_Por = usVO.getId_Registrado_Por();
            Perfil = usVO.getPerfil();
            Estado = usVO.getEstado();
            
        } catch (Exception e) {
            
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE,null,e);
            
        }
    }

    @Override
    public boolean agregarRegistro() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
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
    
    
    
}

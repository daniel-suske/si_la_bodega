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
import java.util.List;
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
    
    public String num = "5", numEs = "";
    
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
    
    public boolean agregarRegistroCliente() {
        
        try {
            
            sql = "INSERT INTO USUARIO(Nombres, Apellidos, Numero_Documento, Tipo_Documento, Correo, Contrasena, Telefono, Barrio, Direccion, Perfil, Estado) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
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
            puente.setString(10, Perfil);
            puente.setString(11, Estado);
            
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
    
    public UsuarioVO consultarId(String Id) {
        
        UsuarioVO  usuVO = null;
        
        try {
            
            conexion = this.obtenerConexion();
            sql = "SELECT * FROM USUARIO WHERE Id = ?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, Id);
            mensajero = puente.executeQuery();
            
            while (mensajero.next()) {
                
            usuVO = new UsuarioVO(Id, mensajero.getString(2), mensajero.getString(3), mensajero.getString(4), mensajero.getString(5), mensajero.getString(6), mensajero.getString(7), mensajero.getString(8), mensajero.getString(9), mensajero.getString(10), mensajero.getString(11), mensajero.getString(12), mensajero.getString(13));
                
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
        
        return usuVO;
    }

    @Override
    public boolean actualizarRegistro() {

        try {
            
            sql = "UPDATE USUARIO SET Nombres = ?, Apellidos = ?, Numero_Documento = ?, Tipo_Documento = ?, Correo = ?, Telefono = ?,  Barrio = ?, Direccion = ?  WHERE Id= ?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, Nombres);
            puente.setString(2, Apellidos);
            puente.setString(3, Numero_Documento);
            puente.setString(4, Tipo_Documento);
            puente.setString(5, Correo);
            puente.setString(6, Telefono);
            puente.setString(7, Barrio);
            puente.setString(8, Direccion);
            puente.setString(9, Id);
            
            puente.executeUpdate();
            operacion = true;
              
            
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
        

    @Override
    public boolean eliminarRegistro() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
        public ArrayList<UsuarioVO> listarE()
    {
        
        ArrayList<UsuarioVO>listaUsuariosE = new ArrayList<UsuarioVO>();
        
        try {
            
            
            conexion = this.obtenerConexion();
            sql = "SELECT U.*, P.Nombre, E.Nombre FROM USUARIO U INNER JOIN PERFIL P ON U.Perfil = P.Id INNER JOIN ESTADO E ON U.Estado = E.Id WHERE Perfil != ? ";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, num);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {
                
                UsuarioVO usuVO = new UsuarioVO(mensajero.getString(1), mensajero.getString(2), mensajero.getString(3), mensajero.getString(4), mensajero.getString(5), mensajero.getString(6), mensajero.getString(7), mensajero.getString(8), mensajero.getString(9), mensajero.getString(10), mensajero.getString(11), mensajero.getString(14), mensajero.getString(15));
                
                
                listaUsuariosE.add(usuVO);
                
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
        
        return listaUsuariosE;
        
    }
        
    
        public ArrayList<UsuarioVO> listarC()
    {
        
        ArrayList<UsuarioVO>listaUsuariosC = new ArrayList<UsuarioVO>();
        
        try {
            
            
            conexion = this.obtenerConexion();
            sql = "SELECT U.*, P.Nombre, E.Nombre FROM USUARIO U INNER JOIN PERFIL P ON U.Perfil = P.Id INNER JOIN ESTADO E ON U.Estado = E.Id WHERE Perfil = ? ";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, num);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {
                
                UsuarioVO usuVO = new UsuarioVO(mensajero.getString(1), mensajero.getString(2), mensajero.getString(3), mensajero.getString(4), mensajero.getString(5), mensajero.getString(6), mensajero.getString(7), mensajero.getString(8), mensajero.getString(9), mensajero.getString(10), mensajero.getString(11), mensajero.getString(14), mensajero.getString(15));
                
                
                listaUsuariosC.add(usuVO);
                
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
        
        return listaUsuariosC;
        
    }
        
        
        public List BuscarU(String text) {
            
           List<UsuarioVO>listaU = new ArrayList<UsuarioVO>();
           
        try {
            
            
            conexion = this.obtenerConexion();
            sql = "SELECT U.*, P.Nombre, E.Nombre FROM USUARIO U INNER JOIN PERFIL P ON U.Perfil = P.Id INNER JOIN ESTADO E ON U.Estado = E.Id WHERE Id LIKE '%?%' OR Nombres LIKE '%?%' OR Apellidos LIKE '%?%' OR Numero_Documento LIKE '%?%' OR Tipo_Documento LIKE '%?%' OR Correo LIKE '%?%' OR Telefono LIKE '%?%' OR Barrio LIKE '%?%' OR Direccion LIKE '%?%' OR Perfil LIKE '%?%' OR Estado LIKE '%?%' ";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, text);
            puente.setString(2, text);
            puente.setString(3, text);
            puente.setString(4, text);
            puente.setString(5, text);
            puente.setString(6, text);
            puente.setString(7, text);
            puente.setString(8, text);
            puente.setString(9, text);
            puente.setString(10, text);
            puente.setString(11, text);
            
            mensajero = puente.executeQuery();
            while (mensajero.next()) {
                
                UsuarioVO usuVO = new UsuarioVO(mensajero.getString(1), mensajero.getString(2), mensajero.getString(3), mensajero.getString(4), mensajero.getString(5), mensajero.getString(6), mensajero.getString(7), mensajero.getString(8), mensajero.getString(9), mensajero.getString(10), mensajero.getString(11), mensajero.getString(14), mensajero.getString(15));
                
                
                listaU.add(usuVO);
                
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
        
        return listaU;
        
    }
            
        
        
    public boolean InactivarUsuario(String Id) {
        
        numEs = "2";
        
        try {
            
            sql = "UPDATE USUARIO SET Estado = ?  WHERE Id= ?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, numEs);
            puente.setString(2, Id);
            
            puente.executeUpdate();
            operacion = true;
              
            
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
    
        public boolean ActivarUsuario(String Id) {
        
        numEs = "1";
        
        try {
            
            sql = "UPDATE USUARIO SET Estado = ?  WHERE Id= ?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, numEs);
            puente.setString(2, Id);
            
            puente.executeUpdate();
            operacion = true;
              
            
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

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modeloDAO;


import util.Conexion;
import util.Crud;
import modeloVO.ServicioVO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.CallableStatement;
/**
 *
 * @author Yeison
 */
public class ServicioDAO extends Conexion implements Crud {
 
    private Connection conexion = null;                  //Conectar la data base
    private PreparedStatement puente = null;             //Para que no sea vulnerable a inyyecion de code, lo asegura
    private CallableStatement puentesp = null;           //Para Llamar procedimientos Almacenados
    private ResultSet mensajero = null;                  //Encargado de las consultas
    
    private String sql;                                  //Permite manejar consultas
    private boolean operacion = false;                   //Para confirmar el estado de la operación

    
    private String Id = "", Fecha_Pedido = "", Descripcion = "", Cliente = "", Registrado_Por = "", Estado = ""; //Declarar las variables del VO
    private String IdSer = "";
    
    
    public ServicioDAO() 
    {
    }
    
    public ServicioDAO(ServicioVO serVO)    //Metodo Constructor
    {
        super();
        
        try {
            
            conexion = this.obtenerConexion();
            
            Id = serVO.getId();
            Fecha_Pedido = serVO.getFecha_Pedido();
            Descripcion = serVO.getDescripcion();
            Cliente = serVO.getCliente();
            Registrado_Por = serVO.getRegistrado_Por();
            Estado = serVO.getEstado();
            
        } catch (Exception e) {
            
            Logger.getLogger(ServicioDAO.class.getName()).log(Level.SEVERE,null,e);
            
        }
    }
            
    public ArrayList<ServicioVO> listarS()
    {
        
        ArrayList<ServicioVO>listaServicios = new ArrayList<ServicioVO>();
        
        try {
            
            conexion = this.obtenerConexion();
            sql = "SELECT * FROM vista_servicios";
            puente = conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {
                
                ServicioVO serVO = new ServicioVO(mensajero.getString(1), mensajero.getString(2), mensajero.getString(3), mensajero.getString(4), mensajero.getString(5), mensajero.getString(6));
                
                listaServicios.add(serVO);
            }
            
        } catch (SQLException e) {
            
            Logger.getLogger(ServicioDAO.class.getName()).log(Level.SEVERE,null,e);
            
        } finally {
            
            try {
                
                this.cerrarConexion();
                
            } catch (SQLException e) {
                
                Logger.getLogger(ServicioDAO.class.getName()).log(Level.SEVERE,null,e);
                
            }
            
        }
        
        return listaServicios;
        
    }

   public ArrayList<ServicioVO> listarSCL(String IdSU)
    {
        
        ArrayList<ServicioVO>listaServicioSCL = new ArrayList<ServicioVO>();
        
        try {
            
            conexion = this.obtenerConexion();
            sql = "SELECT VS.*, VE.Nombre FROM vista_servicio VS INNER JOIN vista_estados VE ON VS.Estado = VE.Id WHERE Cliente = ?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, IdSU);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {
                
                ServicioVO serVO = new ServicioVO(mensajero.getString(1), mensajero.getString(2), mensajero.getString(3), mensajero.getString(4), mensajero.getString(5), mensajero.getString(7));
                
                listaServicioSCL.add(serVO);
            }
            
        } catch (SQLException e) {
            
            Logger.getLogger(ServicioDAO.class.getName()).log(Level.SEVERE,null,e);
            
        } finally {
            
            try {
                
                this.cerrarConexion();
                
            } catch (SQLException e) {
                
                Logger.getLogger(ServicioDAO.class.getName()).log(Level.SEVERE,null,e);
                
            }
            
        }
        
        return listaServicioSCL;
        
    }
    
    @Override
    public boolean agregarRegistro() {
        
        try {
            
            sql = "CALL sp_insertar_servicio (?, ?, ?, ?, ?)";
            puentesp = conexion.prepareCall(sql);
            puentesp.setString(1, Fecha_Pedido);
            puentesp.setString(2, Descripcion);
            puentesp.setString(3, Cliente);
            puentesp.setString(4, Registrado_Por);
            puentesp.setString(5, Estado);
            
            puentesp.executeUpdate();
            operacion = true;
            
        } catch(SQLException e) {
            
            Logger.getLogger(ServicioDAO.class.getName()).log(Level.SEVERE,null,e);
            
        } finally {
            
            try {
                
                this.cerrarConexion();
                
            } catch (SQLException e) {
                
                Logger.getLogger(ServicioDAO.class.getName()).log(Level.SEVERE,null,e);
                
            }
            
        }
        
        return operacion;
        
    }

    @Override
    public boolean consultarRegistro() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public ServicioVO consultarId(String Id) {
        
        ServicioVO  serVO = null;
        
        try {
            
            conexion = this.obtenerConexion();
            sql = "SELECT * FROM vista_servicios WHERE Id = ?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, Id);
            mensajero = puente.executeQuery();
            
            while (mensajero.next()) {
                
            serVO = new ServicioVO(mensajero.getString(1), mensajero.getString(2), mensajero.getString(3), mensajero.getString(4), mensajero.getString(5), mensajero.getString(6));
                
            }
            
        } catch (SQLException e) {
            
            Logger.getLogger(ServicioDAO.class.getName()).log(Level.SEVERE,null,e);
            
        } finally {
            
            try {
                
                this.cerrarConexion();
                
            } catch (SQLException e) {
                
                Logger.getLogger(ServicioDAO.class.getName()).log(Level.SEVERE,null,e);
                
            }
            
        }
        
        return serVO;
    }
    
    @Override
    public boolean actualizarRegistro() {
        
        try {
            
            sql = "CALL sp_modificar_servicio (?, ?, ?)";
            puentesp = conexion.prepareCall(sql);
            puentesp.setString(1, Fecha_Pedido);
            puentesp.setString(2, Descripcion);
            puentesp.setString(3, Id);
            
            puentesp.executeUpdate();
            operacion = true;
              
            
        } catch (SQLException e) {
            
            Logger.getLogger(ServicioDAO.class.getName()).log(Level.SEVERE,null,e);
            
        } finally {
            
            try {
                
                this.cerrarConexion();
                
            } catch (SQLException e) {
                
                Logger.getLogger(ServicioDAO.class.getName()).log(Level.SEVERE,null,e);
                
            }
            
        }
                
        return operacion;
    }

    @Override
    public boolean eliminarRegistro() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}

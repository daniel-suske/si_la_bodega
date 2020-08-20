/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modeloDAO;

import util.*;
import modeloVO.ServicioVO;

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
 */
public class ServicioDAO extends Conexion {
 
    private Connection conexion = null;                  //Conectar la data base
    private PreparedStatement puente = null;             //Para que no sea vulnerable a inyyecion de code, lo asegura
    private ResultSet mensajero = null;                  //Encargado de las consultas
    
    private String sql;                                  //Permite manejar consultas
    private boolean operacion = false;                   //Para confirmar el estado de la operación

    
    private String Id = "", Fecha_Pedido = "", Descripcion = "", Cliente = "", Registrado_Por = "", Estado = ""; //Declarar las variables del VO
    
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
            
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE,null,e);
            
        }
    }
    
    public ArrayList<ServicioVO> listarS()
    {
        
        ArrayList<ServicioVO>listaServicios = new ArrayList<ServicioVO>();
        
        try {
            
            conexion = this.obtenerConexion();
            sql = "SELECT * FROM SERVICIO";
            puente = conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {
                
                ServicioVO serVO = new ServicioVO(mensajero.getString(1), mensajero.getString(2), mensajero.getString(3), mensajero.getString(4), mensajero.getString(5), mensajero.getString(6));
                
                listaServicios.add(serVO);
            }
            
        } catch (SQLException e) {
            
            Logger.getLogger(PerfilDAO.class.getName()).log(Level.SEVERE,null,e);
            
        } finally {
            
            try {
                
                this.cerrarConexion();
                
            } catch (SQLException e) {
                
                Logger.getLogger(PerfilDAO.class.getName()).log(Level.SEVERE,null,e);
                
            }
            
        }
        
        return listaServicios;
        
    }
    
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modeloDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import modeloVO.RepuestoVO;
import util.Conexion;
import util.Crud;

/**
 *
 * @author jony
 */
public class RepuestoDAO extends Conexion implements Crud {

    private Connection conexion = null;                  //Conectar la data base
    private PreparedStatement puente = null;             //Para que no sea vulnerable a inyyecion de code, lo asegura
    private ResultSet mensajero = null;                  //Encargado de las consultas

    private String sql;                                  //Permite manejar consultas
    private boolean operacion = false;                   //Para confirmar el estado de la operación

    //Declarar las variables del VO
    private String Id = "", Nombre = "", No_Serie = "", Marca = "", Modelo = "", Fecha_Compra = "", Lugar_Compra = "", Valor_Compra = "", Valor_Venta = "", Cantidad = "", Estado = "";
    
    
    public RepuestoDAO(RepuestoVO repuVO) {
     super();
        
        try {
            
            conexion = this.obtenerConexion();
            
            Id = repuVO.getId();
            Nombre = repuVO.getNombre();
            No_Serie = repuVO.getNo_Serie();
            Marca = repuVO.getMarca();
            Modelo = repuVO.getModelo();
            Fecha_Compra = repuVO.getFecha_Compra();
            Lugar_Compra = repuVO.getLugar_Compra();
            Valor_Compra = repuVO.getValor_Compra();
            Valor_Venta = repuVO.getValor_Venta();
            Cantidad = repuVO.getCantidad();
            Estado = repuVO.getEstado();
            
            
        } catch (Exception e) {
            
            Logger.getLogger(RepuestoDAO.class.getName()).log(Level.SEVERE,null,e);
            
        }
    
    
    }
    
    public RepuestoDAO(){
    
    }

    @Override
    public boolean agregarRegistro() {
        try {
            
            sql = "INSERT INTO REPUESTO (Nombre, No_Serie, Marca, Modelo, Fecha_Compra, Lugar_Compra, Valor_Compra, Valor_Venta, Cantidad, Estado) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, Nombre);
            puente.setString(2, No_Serie);
            puente.setString(3, Marca);
            puente.setString(4, Modelo);
            puente.setString(5, Fecha_Compra);
            puente.setString(6, Lugar_Compra);
            puente.setString(7, Valor_Compra);
            puente.setString(8, Valor_Venta);
            puente.setString(9, Cantidad);
            puente.setString(10, Estado);
            
            
            puente.executeUpdate();
            operacion = true;
            
        } catch(SQLException e) {
            
            Logger.getLogger(RepuestoDAO.class.getName()).log(Level.SEVERE,null,e);
            
        } finally {
            
            try {
                
                this.cerrarConexion();
                
            } catch (SQLException e) {
                
                Logger.getLogger(RepuestoDAO.class.getName()).log(Level.SEVERE,null,e);
                
            }
            
        }
        
        return operacion;
    }
    
     public RepuestoVO consultarSerie(String numeroSerie) {
        RepuestoVO repVO = null;
        try {
            conexion = this.obtenerConexion(); //se llama el metodo conexion porque este no pasa el constructor
            sql = "select r.*, e.nombre from repuesto r inner join estado e on r.estado=e.id  where no_serie= ? ";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, numeroSerie);
            mensajero = puente.executeQuery();//execute query para consultas
            while (mensajero.next()) {
                repVO = new RepuestoVO(mensajero.getString(1), mensajero.getString(2),numeroSerie, mensajero.getString(4), mensajero.getString(5), mensajero.getString(6), mensajero.getString(7),  mensajero.getString(8), mensajero.getString(9),  mensajero.getString(10), mensajero.getString(12));
            }
        } catch (SQLException e) {
            Logger.getLogger(RepuestoDAO.class.getName()).log(Level.SEVERE, null, e);

        } finally {
            try {
                this.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(RepuestoDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return repVO;

    }
      public RepuestoVO consultarId(String Id) {
        RepuestoVO repVO = null;
        try {
            conexion = this.obtenerConexion(); //se llama el metodo conexion porque este no pasa el constructor
            sql = "select * from repuesto where Id=? ";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, Id);
            mensajero = puente.executeQuery();//execute query para consultas
            while (mensajero.next()) {
                repVO = new RepuestoVO(Id, mensajero.getString(2),mensajero.getString(3), mensajero.getString(4), mensajero.getString(5), mensajero.getString(6), mensajero.getString(7),  mensajero.getString(8), mensajero.getString(9),  mensajero.getString(10), mensajero.getString(11));
            }
        } catch (SQLException e) {
            Logger.getLogger(RepuestoDAO.class.getName()).log(Level.SEVERE, null, e);

        } finally {
            try {
                this.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(RepuestoDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return repVO;

    }
     
    
     public ArrayList<RepuestoVO>listar(){  
    ArrayList<RepuestoVO>listaRepuestos = new ArrayList<RepuestoVO>();
    try {
            conexion = this.obtenerConexion(); //se llama el metodo conexion porque este no pasa el constructor
            sql = "select r.*, e.Nombre from repuesto r inner join estado e on r.estado=e.id order by r.id asc ";
            puente = conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();//execute query para consultas
            while (mensajero.next()) {
                RepuestoVO repuVO = new RepuestoVO(mensajero.getString(1), mensajero.getString(2), mensajero.getString(3), mensajero.getString(4), mensajero.getString(5), mensajero.getString(6), mensajero.getString(7),  mensajero.getString(8), mensajero.getString(9),  mensajero.getString(10), mensajero.getString(12));
                listaRepuestos.add(repuVO);
            }
        } catch (SQLException e) {
            Logger.getLogger(RepuestoDAO.class.getName()).log(Level.SEVERE, null, e);

        } finally {
            try {
                this.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(RepuestoDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return listaRepuestos;
    }

    @Override
    public boolean consultarRegistro() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean actualizarRegistro() {
        try {
            sql = "update repuesto set Nombre =?, No_Serie =?, Marca =?, Modelo =?, Fecha_Compra =?, Lugar_Compra =?, Valor_Compra =?, Valor_Venta =?, Cantidad =?, Estado =? where Id=?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, Nombre);
            puente.setString(2, No_Serie);
            puente.setString(3, Marca);
            puente.setString(4, Modelo);
            puente.setString(5, Fecha_Compra);
            puente.setString(6, Lugar_Compra);
            puente.setString(7, Valor_Compra);
            puente.setString(8, Valor_Venta);
            puente.setString(9, Cantidad);
            puente.setString(10, Estado);
            puente.setString(11, Id);

            puente.executeUpdate();//execute update para insertar, actualizar y eliminar
            operacion = true;
        } catch (SQLException e) {
            Logger.getLogger(RepuestoDAO.class.getName()).log(Level.SEVERE, null, e);

        } finally {
            try {
                this.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(RepuestoDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }

        return operacion;
    }

    @Override
    public boolean eliminarRegistro() {
       try {
            sql = "update repuesto set Estado =? where Id=?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, Estado);
            puente.setString(2, Id);

            puente.executeUpdate();//execute update para insertar, actualizar y eliminar
            operacion = true;
        } catch (SQLException e) {
            Logger.getLogger(RepuestoDAO.class.getName()).log(Level.SEVERE, null, e);

        } finally {
            try {
                this.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(RepuestoDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }

        return operacion;
    }
    
    public boolean reactivarRegistro() {
       try {
            sql = "update repuesto set Estado =? where Id=?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, Estado);
            puente.setString(2, Id);

            puente.executeUpdate();//execute update para insertar, actualizar y eliminar
            operacion = true;
        } catch (SQLException e) {
            Logger.getLogger(RepuestoDAO.class.getName()).log(Level.SEVERE, null, e);

        } finally {
            try {
                this.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(RepuestoDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }

        return operacion;
    }

}

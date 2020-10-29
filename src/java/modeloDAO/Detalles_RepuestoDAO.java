/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modeloDAO;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import modeloVO.Detalles_RepuestoVO;
import util.Conexion;
import util.Crud;

/**
 *
 * @author jony
 */
public class Detalles_RepuestoDAO extends Conexion implements Crud {
    
     private Connection conexion = null;                  //Conectar la data base
    private PreparedStatement puente = null;    
  
     private CallableStatement puentesp = null; //Para que no sea vulnerable a inyyecion de code, lo asegura
     
    private ResultSet mensajero = null;                  //Encargado de las consultas

    private String sql;                                  //Permite manejar consultas
    private boolean operacion = false; 
    
    private String Id_Reparacion="", Id_Repuesto="", Cantidad="", Valor_Venta="";
    
   
    
    public Detalles_RepuestoDAO (Detalles_RepuestoVO detaVO){
    super();
    
    Id_Reparacion = detaVO.getId_Reparacion();
    Id_Repuesto = detaVO.getId_Repuesto();
    Cantidad= detaVO.getCantidad();
    Valor_Venta = detaVO.getValor_Venta();
    
    }
    
   
    
     public Detalles_RepuestoDAO(){
    
    }
    

    @Override
    public boolean agregarRegistro() {
          try {
conexion=this.obtenerConexion();
            sql = "CALL crear_detalles_Repuesto(?,?)";
            puentesp = conexion.prepareCall(sql);
           
            puentesp.setString(1, Id_Repuesto);
            puentesp.setString(2, Cantidad);

            puentesp.executeUpdate();
            operacion = true;

        } catch (SQLException e) {

            Logger.getLogger(Detalles_RepuestoDAO.class.getName()).log(Level.SEVERE, null, e);

        } finally {

            try {

                this.cerrarConexion();

            } catch (SQLException e) {

                Logger.getLogger(Detalles_RepuestoDAO.class.getName()).log(Level.SEVERE, null, e);

            }

        }

        return operacion;
    }

    public ArrayList<Detalles_RepuestoVO>listar(){
    ArrayList<Detalles_RepuestoVO>listaDetallles = new ArrayList<Detalles_RepuestoVO>();
    try {
            conexion = this.obtenerConexion(); //se llama el metodo conexion porque este no pasa el constructor
            sql = "CALL consultar_detalles()";
            puentesp = conexion.prepareCall(sql);
            mensajero = puentesp.executeQuery();//execute query para consultas
            while (mensajero.next()) {
                Detalles_RepuestoVO detVO = new Detalles_RepuestoVO(mensajero.getString(1), mensajero.getString(2), mensajero.getString(5), mensajero.getString(4));
                listaDetallles.add(detVO);
            }
        } catch (SQLException e) {
            Logger.getLogger(ReparacionDAO.class.getName()).log(Level.SEVERE, null, e);

        } finally {
            try {
                this.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(ReparacionDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return listaDetallles;
    }
    
     public ArrayList<Detalles_RepuestoVO> consultarId(String Id) {
        ArrayList<Detalles_RepuestoVO>detalles_id = new ArrayList<Detalles_RepuestoVO>();
        try {
            conexion = this.obtenerConexion(); //se llama el metodo conexion porque este no pasa el constructor
            sql = "CALL consultar_detalles_id ( ? ) ";
            puente = conexion.prepareCall(sql);
            puente.setString(1, Id);
            mensajero = puente.executeQuery();//execute query para consultas
            while (mensajero.next()) {
               Detalles_RepuestoVO detVO = new Detalles_RepuestoVO(Id, mensajero.getString(2), mensajero.getString(5), mensajero.getString(4), mensajero.getString(5), mensajero.getString(6));
               detalles_id.add(detVO);
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
        return detalles_id;

    }
    
    @Override
    public boolean consultarRegistro() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean actualizarRegistro() {
       try {

            sql = "UPDATE Detalles_Repuesto SET Id";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, Id_Reparacion);
            puente.setString(2, Id_Repuesto);
            

            puente.executeUpdate();
            operacion = true;

        } catch (SQLException e) {

            Logger.getLogger(Detalles_RepuestoDAO.class.getName()).log(Level.SEVERE, null, e);

        } finally {

            try {

                this.cerrarConexion();

            } catch (SQLException e) {

                Logger.getLogger(Detalles_RepuestoDAO.class.getName()).log(Level.SEVERE, null, e);

            }

        }

        return operacion;
    }

    @Override
    public boolean eliminarRegistro() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}

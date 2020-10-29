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
import modeloVO.ReparacionVO;
import util.Conexion;
import util.Crud;

/**
 *
 * @author jony
 */
public class ReparacionDAO extends Conexion implements Crud {

    private Connection conexion = null;                  //Conectar la data base
    private PreparedStatement puente = null;
        private CallableStatement puenteps = null;           //Para Llamar procedimientos Almacenados
//Para que no sea vulnerable a inyyecion de code, lo asegura
    private ResultSet mensajero = null;                  //Encargado de las consultas

    private String sql;                                  //Permite manejar consultas
    private boolean operacion = false;                   //Para confirmar el estado de la operación

    private String Id = "", Id_Servicio = "", Id_Producto = "", Fecha_Hora = "", Descripcion = "", Costos = "", Tecnico = "";

    public ReparacionDAO(ReparacionVO repaVO) {
        super();
        try {
            Id = repaVO.getId();
            Id_Servicio = repaVO.getId_Servicio();
            Id_Producto = repaVO.getId_Producto();
            Fecha_Hora = repaVO.getFecha_Hora();
            Descripcion = repaVO.getDescripcion();
            Costos = repaVO.getCostos();
            Tecnico = repaVO.getTecnico();
           
        } catch (Exception e) {

            Logger.getLogger(ReparacionDAO.class.getName()).log(Level.SEVERE, null, e);
        }

    }

    public ReparacionDAO() {

      

    }

    @Override
    public boolean agregarRegistro() {
          try {
              conexion = this.obtenerConexion();
            sql ="CALL crear_reparacion( ?, ?, ?, ?, ?, ?)";
     
            puenteps = conexion.prepareCall(sql);
            puenteps.setString(1, Id_Servicio);
            puenteps.setString(2, Id_Producto);
            puenteps.setString(3, Fecha_Hora);
            puenteps.setString(4, Descripcion);
            puenteps.setString(5, Costos);
            puenteps.setString(6, Tecnico);

            puenteps.executeUpdate();
            operacion = true;
            
       
        } catch (SQLException e) {

            Logger.getLogger(ReparacionDAO.class.getName()).log(Level.SEVERE, null, e);

        } finally {

            try {

                this.cerrarConexion();

            } catch (SQLException e) {

                Logger.getLogger(ReparacionDAO.class.getName()).log(Level.SEVERE, null, e);

            }

        }

        return operacion;
    }

    @Override
    public boolean consultarRegistro() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    
     public ArrayList<ReparacionVO>listar(){
    ArrayList<ReparacionVO>listaReparaciones = new ArrayList<ReparacionVO>();
    try {
            conexion = this.obtenerConexion(); //se llama el metodo conexion porque este no pasa el constructor
            sql = "CALL consultar_Reparacion()";
            puenteps = conexion.prepareCall(sql);
            mensajero = puenteps.executeQuery();//execute query para consultas
            while (mensajero.next()) {
                ReparacionVO repaVO = new ReparacionVO(mensajero.getString(1), mensajero.getString(2), mensajero.getString(3), mensajero.getString(4), mensajero.getString(5), mensajero.getString(6), mensajero.getString(8));
                listaReparaciones.add(repaVO);
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
        return listaReparaciones;
    }
     
     public ReparacionVO consultarId(String Id) {
        ReparacionVO repaVO = null;
        try {
            conexion = this.obtenerConexion(); //se llama el metodo conexion porque este no pasa el constructor
            sql = "CALL consultar_Reparacion_Id ( ? )";
            puente = conexion.prepareCall(sql);
            puente.setString(1, Id);
            mensajero = puente.executeQuery();//execute query para consultas
            while (mensajero.next()) {
                repaVO = new ReparacionVO(Id, mensajero.getString(2),mensajero.getString(3), mensajero.getString(4), mensajero.getString(5), mensajero.getString(6), mensajero.getString(7));
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
        return repaVO;

    }

    @Override
    public boolean actualizarRegistro() {
        try {
            conexion = this.obtenerConexion();
            sql = "UPDATE REPARACION  SET Id_Servicio=?, Id_Producto=?, Fecha_Hora=?, Descripcion=?, Tecnico=? where Id=? ";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, Id_Servicio);
            puente.setString(2, Id_Producto);
            puente.setString(3, Fecha_Hora);
            puente.setString(4, Descripcion);
            puente.setString(5, Tecnico);
            puente.setString(6, Id);

            puente.executeUpdate();
            operacion = true;

        } catch (SQLException e) {

            Logger.getLogger(ReparacionDAO.class.getName()).log(Level.SEVERE, null, e);

        } finally {

            try {

                this.cerrarConexion();

            } catch (SQLException e) {

                Logger.getLogger(ReparacionDAO.class.getName()).log(Level.SEVERE, null, e);

            }

        }

        return operacion;
    }

    @Override
    public boolean eliminarRegistro() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}

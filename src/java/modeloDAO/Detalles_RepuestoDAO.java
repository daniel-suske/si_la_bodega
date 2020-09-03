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
    private PreparedStatement puente = null;             //Para que no sea vulnerable a inyyecion de code, lo asegura
    private ResultSet mensajero = null;                  //Encargado de las consultas

    private String sql;                                  //Permite manejar consultas
    private boolean operacion = false; 
    
    private String Id_Reparacion="", Id_Repuesto="";
    
   
    
    public Detalles_RepuestoDAO (Detalles_RepuestoVO detaVO){
    super();
    
    Id_Reparacion = detaVO.getId_Reparacion();
    Id_Repuesto = detaVO.getId_Repuesto();
    
    }
    
     public Detalles_RepuestoDAO(){
    
    }
    

    @Override
    public boolean agregarRegistro() {
          try {

            sql = "INSERT INTO Detalles_Repuesto  VALUES ( ?, ?)";
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

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
import java.sql.CallableStatement;
import modeloVO.FacturaVO;
import util.Conexion;
import util.Crud;

/**
 *
 * @author Patiño Sauarez
 */
public class FacturaDAO extends Conexion implements Crud {

    private Connection conexion = null;
    private PreparedStatement puente = null;
    private CallableStatement puentesp = null;
    private ResultSet mensajero = null;
    private String sql;
    private boolean operacion = false;

    private String Id = "", Fecha = "", Servicio = "", Tipo_Pago = "", Valor_Total = "", Garantia = "", Recibe = "";

    public FacturaDAO() {
    }

    public FacturaDAO(FacturaVO faVO) {
        super();
        try {
            conexion = this.obtenerConexion();
            Id = faVO.getId();
            Fecha = faVO.getFecha();
            Servicio = faVO.getServicio();
            Tipo_Pago = faVO.getTipo_Pago();
            Valor_Total = faVO.getValor_Total();
            Garantia = faVO.getGarantia();
            Recibe = faVO.getRecibe();
        } catch (Exception e) {
            Logger.getLogger(FacturaDAO.class.getName()).log(Level.SEVERE, null, e);
        }

    }

    @Override
    public boolean agregarRegistro() {
        try {
            conexion = this.obtenerConexion();
            sql = "CALL insertar_factura(?,?,?,?,?,?)";
            puentesp = conexion.prepareCall(sql);
            puentesp.setString(1, Fecha);
            puentesp.setString(2, Servicio);
            puentesp.setString(3, Tipo_Pago);
            puentesp.setString(4, Valor_Total);
            puentesp.setString(5, Garantia);
            puentesp.setString(6, Recibe);
            puentesp.executeUpdate();
            operacion = true;

        } catch (SQLException e) {
            Logger.getLogger(FacturaDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(FacturaDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return operacion;
    }

    @Override
    public boolean consultarRegistro() {
        return operacion;
    }

    public FacturaVO consultarId(String Id) {
        FacturaVO faVO = null;
        try {
            sql = "select * from factura where id =?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, Id);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {

                faVO = new FacturaVO(mensajero.getString(1), mensajero.getString(2), mensajero.getString(3), mensajero.getString(4), mensajero.getString(5), mensajero.getString(6), mensajero.getString(7));

            }

        } catch (SQLException e) {
            Logger.getLogger(FacturaDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {

            try {
                this.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(FacturaDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return faVO;
    }

    @Override
    public boolean actualizarRegistro() {
        try {
            conexion = this.obtenerConexion();
            sql = "CALL modificar_factura (?,?,?,?,?,?,?)";
            puentesp = conexion.prepareCall(sql);
            puentesp.setString(1, Fecha);
            puentesp.setString(2, Servicio);
            puentesp.setString(3, Tipo_Pago);
            puentesp.setString(4, Valor_Total);
            puentesp.setString(5, Garantia);
            puentesp.setString(6, Recibe);
            puentesp.setString(7, Id);
            puentesp.executeUpdate();
            operacion = true;

        } catch (SQLException e) {
            Logger.getLogger(FacturaDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(FacturaDAO.class.getName()).log(Level.SEVERE, null, e);
            }

        }
        return operacion;
    }

    @Override
    public boolean eliminarRegistro() {
        try {
            sql = "delete from factura where id =?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, Id);
            puente.executeUpdate();
            operacion = true;
        } catch (SQLException e) {
            Logger.getLogger(FacturaDAO.class.getName()).log(Level.SEVERE, null, e);

        } finally {
            try {
                this.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(FacturaDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return operacion;
    }

    public ArrayList<FacturaVO> listar() {
        ArrayList<FacturaVO> ListaFacturas = new ArrayList<FacturaVO>();// se declara un objeto Arraylist de tipo VehiculoVO y el nombre del arregloo alias : listaVehiculos  , y se volve a declarar el nombre:ArrayList y el nombre del objeto<VehiculoVO>
        try {
            conexion = this.obtenerConexion();
            sql = "SELECT * FROM vista_factura_list";
            puente = conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {
                /*Si lo encuentra Va a crearme un VO. agregar el vehiculoVO eL alias  y como no es placa si no mensajero.getString(1)      */
                FacturaVO vehVO = new FacturaVO(mensajero.getString(1), mensajero.getString(2), mensajero.getString(8), mensajero.getString(4), mensajero.getString(5), mensajero.getString(6), mensajero.getString(9));
                /* si lo encuentra  va a crear un todas las columnas de la base de datos*/
                ListaFacturas.add(vehVO);//agregar lista de vehiculos y crea UNA POSICION DE LOS DATOS DEL ARREGLO A TRAVEZ DE LOS DATOS DEL VO.
            }

        } catch (SQLException e) {
            Logger.getLogger(FacturaDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(FacturaDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return ListaFacturas;

    }

    public ArrayList<FacturaVO> listarCL(String IdCL) {
        ArrayList<FacturaVO> ListaFacturasCL = new ArrayList<FacturaVO>();// se declara un objeto Arraylist de tipo VehiculoVO y el nombre del arregloo alias : listaVehiculos  , y se volve a declarar el nombre:ArrayList y el nombre del objeto<VehiculoVO>
        try {
            conexion = this.obtenerConexion();
            sql = "SELECT f.*, u.Id FROM factura f INNER JOIN usuario u ON f.Recibe = u.Id WHERE u.Id = ?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, IdCL);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {
                /*Si lo encuentra Va a crearme un VO. agregar el vehiculoVO eL alias  y como no es placa si no mensajero.getString(1)      */
                FacturaVO vehVO = new FacturaVO(mensajero.getString(1), mensajero.getString(2), mensajero.getString(3), mensajero.getString(4), mensajero.getString(5), mensajero.getString(6), mensajero.getString(7));
                /* si lo encuentra  va a crear un todas las columnas de la base de datos*/
                ListaFacturasCL.add(vehVO);//agregar lista de vehiculos y crea UNA POSICION DE LOS DATOS DEL ARREGLO A TRAVEZ DE LOS DATOS DEL VO.
            }

        } catch (SQLException e) {
            Logger.getLogger(FacturaDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(FacturaDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return ListaFacturasCL;

    }
    
}

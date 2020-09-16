/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modeloDAO;

import util.*;
import modeloVO.Datos_PEVO;
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
public class Datos_PEDAO extends Conexion implements Crud {
    
    private Connection conexion = null;                  //Conectar la data base
    private PreparedStatement puente = null;             //Para que no sea vulnerable a inyyecion de code, lo asegura
    private CallableStatement puentesp = null;           //Para Llamar procedimientos Almacenados
    private ResultSet mensajero = null;                  //Encargado de las consultas
    
    private String sql;                                  //Permite manejar consultas
    private boolean operacion = false;                   //Para confirmar el estado de la operación
    
    //Declarar las variables del VO
    private String Id = "", Id_Empleado = "", Fecha_Nacimiento = "", Estado_Civil = "", EPS = "", ARL = "", Fondo_Pensiones = "", Nivel_Escolaridad = "", Experiencia = "";
    
    public Datos_PEDAO() 
    {
    }
    
    public Datos_PEDAO(Datos_PEVO datVO)
    {
        super();
        
        try {
            
            conexion = this.obtenerConexion();
            
            Id = datVO.getId();
            Id_Empleado = datVO.getId_Empleado();
            Fecha_Nacimiento = datVO.getFecha_Nacimiento();
            Estado_Civil = datVO.getEstado_Civil();
            EPS = datVO.getEPS();
            ARL = datVO.getARL();
            Fondo_Pensiones = datVO.getFondo_Pensiones();
            Nivel_Escolaridad = datVO.getNivel_Escolaridad();
            Experiencia = datVO.getExperiencia();
            
        } catch(Exception e) {
            
            Logger.getLogger(Datos_PEDAO.class.getName()).log(Level.SEVERE,null,e);
            
        }
        
    }

    @Override
    public boolean agregarRegistro() {
        
        try {
            
            sql = "CALL sp_insertar_datosPE (?, ?, ?, ?, ?, ?, ?, ?)";
            puentesp = conexion.prepareCall(sql);
            puentesp.setString(1, Id_Empleado);
            puentesp.setString(2, Fecha_Nacimiento);
            puentesp.setString(3, Estado_Civil);
            puentesp.setString(4, EPS);
            puentesp.setString(5, ARL);
            puentesp.setString(6, Fondo_Pensiones);
            puentesp.setString(7, Nivel_Escolaridad);
            puentesp.setString(8, Experiencia);
            
            puentesp.executeUpdate();
            operacion = true;
            
        } catch(SQLException e) {
            
            Logger.getLogger(Datos_PEDAO.class.getName()).log(Level.SEVERE,null,e);
            
        } finally {
            
            try {
                
                this.cerrarConexion();
                
            } catch (SQLException e) {
                
                Logger.getLogger(Datos_PEDAO.class.getName()).log(Level.SEVERE,null,e);
                
            }
            
        }
        
        return operacion;
        
    }

    @Override
    public boolean consultarRegistro() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public Datos_PEVO consultarId_Empleado(String Id_Empleado) {
        
        Datos_PEVO  datVO = null;
        
        try {
            
            conexion = this.obtenerConexion();
            sql = "SELECT VDT.*, CONCAT(VE.Apellidos,' ',VE.Nombres) AS Nombre FROM vista_datos_pe VDT INNER JOIN vista_uempleados VE ON VDT.Id_Empleado = VE.Id WHERE Id_Empleado = ?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, Id_Empleado);
            mensajero = puente.executeQuery();
            
            while (mensajero.next()) {
                
            datVO = new Datos_PEVO(mensajero.getString(1), mensajero.getString(10), mensajero.getString(3), mensajero.getString(4), mensajero.getString(5), mensajero.getString(6), mensajero.getString(7), mensajero.getString(8), mensajero.getString(9));
                
            }
            
        } catch (SQLException e) {
            
            Logger.getLogger(Datos_PEDAO.class.getName()).log(Level.SEVERE,null,e);
            
        } finally {
            
            try {
                
                this.cerrarConexion();
                
            } catch (SQLException e) {
                
                Logger.getLogger(Datos_PEDAO.class.getName()).log(Level.SEVERE,null,e);
                
            }
            
        }
        
        return datVO;
    }
    
    @Override
    public boolean actualizarRegistro() {
        
        try {
            
            sql = "CALL sp_modificar_datosPE (?, ?, ?, ?, ?, ?, ?, ?)";
            puentesp = conexion.prepareCall(sql);
            puentesp.setString(1, Fecha_Nacimiento);
            puentesp.setString(2, Estado_Civil);
            puentesp.setString(3, EPS);
            puentesp.setString(4, ARL);
            puentesp.setString(5, Fondo_Pensiones);
            puentesp.setString(6, Nivel_Escolaridad);
            puentesp.setString(7, Experiencia);
            puentesp.setString(8, Id);
            
            puentesp.executeUpdate();
            operacion = true;
              
            
        } catch (SQLException e) {
            
            Logger.getLogger(Datos_PEDAO.class.getName()).log(Level.SEVERE,null,e);
            
        } finally {
            
            try {
                
                this.cerrarConexion();
                
            } catch (SQLException e) {
                
                Logger.getLogger(Datos_PEDAO.class.getName()).log(Level.SEVERE,null,e);
                
            }
            
        }
                
        return operacion;
        
    }

    @Override
    public boolean eliminarRegistro() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    
    
}

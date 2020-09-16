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
/**
 *
 * @author Yeison
 */
public class Datos_PEDAO extends Conexion implements Crud {
    
    private Connection conexion = null;                  //Conectar la data base
    private PreparedStatement puente = null;             //Para que no sea vulnerable a inyyecion de code, lo asegura
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
            
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE,null,e);
            
        }
        
    }

    @Override
    public boolean agregarRegistro() {
        
        try {
            
            sql = "INSERT INTO datos_personales_empleados (Id_Empleado, Fecha_Nacimiento, Estado_Civil, EPS, ARL, Fondo_Pensiones, Nivel_Escolaridad, Experiencia) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, Id_Empleado);
            puente.setString(2, Fecha_Nacimiento);
            puente.setString(3, Estado_Civil);
            puente.setString(4, EPS);
            puente.setString(5, ARL);
            puente.setString(6, Fondo_Pensiones);
            puente.setString(7, Nivel_Escolaridad);
            puente.setString(8, Experiencia);
            
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

    @Override
    public boolean actualizarRegistro() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean eliminarRegistro() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    
    
}

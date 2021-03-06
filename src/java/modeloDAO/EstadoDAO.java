/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modeloDAO;

import util.Conexion;
import util.Crud;
import modeloVO.EstadoVO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author Yeison
 */
public class EstadoDAO extends Conexion {
    
    private Connection conexion = null; //Conectar la data base
    private PreparedStatement puente = null; //Para que no sea vulnerable a inyyecion de code, lo asegura 
    private ResultSet mensajero = null; //Encargado de las consultas 
    
    private String sql;  //Permite manejar consultas 
    
    private String Id = "", Nombre = "";  //Declarar las variables del VO
    
    public String nume = "";
    
    public EstadoDAO()
    {
    }
    
    public EstadoDAO(EstadoVO estVO)  //Metodo Constructor 
    {
        super();
        
        try {
            
            conexion =this.obtenerConexion();
            
            Id = estVO.getId();
            Nombre = estVO.getNombre();
            
        } catch(Exception e) {
            
            Logger.getLogger(EstadoDAO.class.getName()).log(Level.SEVERE,null,e);
            
        }
        
    }
    
    public ArrayList<EstadoVO> listarE()
    {
        
        ArrayList<EstadoVO>listaEstados = new ArrayList<EstadoVO>();
        
        try {
            
            conexion = this.obtenerConexion();
            sql = "SELECT * FROM estado";
            puente = conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {
                
                EstadoVO estVO = new EstadoVO(mensajero.getString(1), mensajero.getString(2));
                listaEstados.add(estVO);
            }
            
        } catch (SQLException e) {
            
            Logger.getLogger(EstadoDAO.class.getName()).log(Level.SEVERE,null,e);
            
        } finally {
            
            try {
                
                this.cerrarConexion();
                
            } catch (SQLException e) {
                
                Logger.getLogger(EstadoDAO.class.getName()).log(Level.SEVERE,null,e);
                
            }
            
        }
        
        return listaEstados;
        
    }
    
    public ArrayList<EstadoVO> listarEA()
    {
        
        ArrayList<EstadoVO>listaEstadosA = new ArrayList<EstadoVO>();
        
        try {
            
            nume = "2";
            
            conexion = this.obtenerConexion();
            sql = "SELECT * FROM estado WHERE Id != ?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, nume);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {
                
                EstadoVO estVO = new EstadoVO(mensajero.getString(1), mensajero.getString(2));
                listaEstadosA.add(estVO);
            }
            
        } catch (SQLException e) {
            
            Logger.getLogger(EstadoDAO.class.getName()).log(Level.SEVERE,null,e);
            
        } finally {
            
            try {
                
                this.cerrarConexion();
                
            } catch (SQLException e) {
                
                Logger.getLogger(EstadoDAO.class.getName()).log(Level.SEVERE,null,e);
                
            }
            
        }
        
        return listaEstadosA;
        
    }
    
}

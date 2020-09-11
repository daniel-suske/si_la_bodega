/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modeloDAO;

import util.*;
import modeloVO.PerfilVO;

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
public class PerfilDAO extends Conexion {
    
    private Connection conexion = null; //Conectar la data base
    private PreparedStatement puente = null; //Para que no sea vulnerable a inyyecion de code, lo asegura 
    private ResultSet mensajero = null; //Encargado de las consultas 
    
    private String sql;  //Permite manejar consultas
    
    private String Id = "", Nombre = "";  //Declarar las variables del VO
    
    public String nump = "";
    
    public PerfilDAO() 
    {
    }
    
    public PerfilDAO(PerfilVO perfVO)  //Metodo Constructor
    {
        
        super();
        
        try {
            
            conexion =this.obtenerConexion();
            
            Id = perfVO.getId();
            Nombre = perfVO.getNombre();
            
        } catch(Exception e) {
            
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE,null,e);
            
        }
        
    }
    
    
    public ArrayList<PerfilVO> listarP()
    {
        
        ArrayList<PerfilVO>listaPerfiles = new ArrayList<PerfilVO>();
        
        try {
            
            conexion = this.obtenerConexion();
            sql = "SELECT * FROM perfil";
            puente = conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {
                
                PerfilVO perfVO = new PerfilVO(mensajero.getString(1), mensajero.getString(2));
                listaPerfiles.add(perfVO);
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
        
        return listaPerfiles;
        
    }
    
    public ArrayList<PerfilVO> listarPE()
    {
        
        
        
        ArrayList<PerfilVO>listaPerfilesE = new ArrayList<PerfilVO>();
        
        try {
            
            nump = "5";
            
            conexion = this.obtenerConexion();
            sql = "SELECT * FROM perfil WHERE Id != ?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, nump);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {
                
                PerfilVO perfVO = new PerfilVO(mensajero.getString(1), mensajero.getString(2));
                listaPerfilesE.add(perfVO);
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
        
        return listaPerfilesE;
        
    }
    
}

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
import modeloVO.ProductoVO;
import util.Conexion;
import util.Crud;
/**
 *
 * @author Patiño Sauarez
 */
public class ProductoDAO extends Conexion implements Crud{
    
    private Connection conexion= null;
   private PreparedStatement puente= null;
   private CallableStatement puentesp = null;    
   private ResultSet mensajero = null;
   private String sql;
   private boolean operacion = false;
   
   private String Id="",Tipo_Producto="",Marca="",Modelo="",Numero_Serie="",Estado="";
    public ProductoDAO() {
    }
    
    public ProductoDAO(ProductoVO PaVO){
       super();
       try {
           conexion= this.obtenerConexion();
           Id= PaVO.getId();
           Tipo_Producto =PaVO.getTipo_Producto();
           Marca=PaVO.getMarca();
           Modelo=PaVO.getModelo();
           Numero_Serie=PaVO.getNumero_Serie();
           Estado=PaVO.getEstado();
       } catch (Exception e) {
         Logger.getLogger(ProductoDAO.class.getName()).log(Level.SEVERE,null,e);
   }
    
   }
    

    @Override
    public boolean agregarRegistro() {
        try {
     
            sql = "CALL P_insertarProducto (?,?,?,?,?)";
            puentesp = conexion.prepareCall(sql);
            puentesp.setString(1, Tipo_Producto);
            puentesp.setString(2, Marca);
            puentesp.setString(3, Modelo);
            puentesp.setString(4, Numero_Serie);
            puentesp.setString(5, Estado);
   
            
            puentesp.executeUpdate();
            operacion=true;
            
        } catch (SQLException e) {
            Logger.getLogger(ProductoDAO.class.getName()).log(Level.SEVERE,null, e);
        }finally{
           try {
               this.cerrarConexion();
           } catch (SQLException e) {
               Logger.getLogger(ProductoDAO.class.getName()).log(Level.SEVERE,null,e);
           }
       }
        return operacion;
        
    }

    @Override
    public boolean consultarRegistro() {
        return operacion; 
    }
    public ProductoVO consultarId(String Id) {
        ProductoVO PaVO = null;
        try {
            sql = "SELECT * FROM vista_Productos where id =?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, Id);
            mensajero=puente.executeQuery();
            while (mensajero.next()) {  
                
                PaVO = new ProductoVO(mensajero.getString(1),mensajero.getString(2), mensajero.getString(3), mensajero.getString(4),mensajero.getString(5),mensajero.getString(6));
                
            }
           
            
      
        } catch (SQLException e) {
            Logger.getLogger(ProductoDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {

            try {
                this.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(ProductoDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return PaVO;
    }
    
    

    @Override
    public boolean actualizarRegistro() {
        try {
            sql = "CALL P_ModificarProducto(? ,? , ?, ?, ?, ?) ";
            puentesp = conexion.prepareCall(sql);
            puentesp.setString(1, Tipo_Producto);
            puentesp.setString(2, Marca);
            puentesp.setString(3, Modelo);
            puentesp.setString(4, Numero_Serie);
            puentesp.setString(5, Estado);
            puentesp.setString(6, Id);
         
            
            puentesp.executeUpdate();
            operacion=true;
           
        } catch (SQLException e) {
            Logger.getLogger(ProductoDAO.class.getName()).log(Level.SEVERE,null, e);
        }finally{
            try {
                this.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(ProductoDAO.class.getName()).log(Level.SEVERE,null,e);
            }
        
        }
        return operacion;
    }

    @Override
    public boolean eliminarRegistro() {      
        return operacion; 
    }
    
     public boolean InactivarProducto() {
        
        try {
            
            sql = "call SP_Cambiar_estadoP (?, ?)";
            puentesp = conexion.prepareCall(sql);
            puentesp.setString(1, Estado);
            puentesp.setString(2, Id);
            
            puentesp.executeUpdate();
            operacion = true;
              
            
        } catch (SQLException e) {
            
            Logger.getLogger(ProductoDAO.class.getName()).log(Level.SEVERE,null,e);
            
        } finally {
            
            try {
                
                this.cerrarConexion();
                
            } catch (SQLException e) {
                
                Logger.getLogger(ProductoDAO.class.getName()).log(Level.SEVERE,null,e);
                
            }
            
        }
                
        return operacion;
        
    }
    
        public boolean ActivarProducto() {
        
        try {
            
            sql = "call SP_Cambiar_estadoP (?, ?)";
            puentesp = conexion.prepareCall(sql);
            puentesp.setString(1, Estado);
            puentesp.setString(2, Id);
            
            puentesp.executeUpdate();
            operacion = true;
              
            
        } catch (SQLException e) {
            
            Logger.getLogger(ProductoDAO.class.getName()).log(Level.SEVERE,null,e);
            
        } finally {
            
            try {
                
                this.cerrarConexion();
                
            } catch (SQLException e) {
                
                Logger.getLogger(ProductoDAO.class.getName()).log(Level.SEVERE,null,e);
                
            }
            
        }
                
        return operacion;
        
    }  
      public ArrayList<ProductoVO>listarP(){
        ArrayList<ProductoVO>ListaProductos = new ArrayList<ProductoVO>();// se declara un objeto Arraylist de tipo VehiculoVO y el nombre del arregloo alias : listaVehiculos  , y se volve a declarar el nombre:ArrayList y el nombre del objeto<VehiculoVO>
                try {
            conexion = this.obtenerConexion();
            sql = "SELECT * FROM vista_productoestado ";
            puente=conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {
       //Si lo encuentra Va a crearme un VO. agregar el vehiculoVO eL alias  y como no es placa si no mensajero.getString(1)      
        ProductoVO  PaVO = new ProductoVO(mensajero.getString(1),mensajero.getString(2), mensajero.getString(3), mensajero.getString(4),mensajero.getString(5),mensajero.getString(6));
        // si lo encuentra  va a crear un todas las columnas de la base de datos 
               ListaProductos.add(PaVO);//agregar lista de vehiculos y crea UNA POSICION DE LOS DATOS DEL ARREGLO A TRAVEZ DE LOS DATOS DEL VO.
            }
            
        } catch (SQLException e) {
            Logger.getLogger(ProductoDAO.class.getName()).log(Level.SEVERE,null,e); 
        }finally{
            try {
                this.cerrarConexion();
            } catch (SQLException e) {
            Logger.getLogger(ProductoDAO.class.getName()).log(Level.SEVERE,null,e);     
            }
        }
                return ListaProductos;

    }
     
  
}

    


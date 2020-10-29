/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modeloVO;

/**
 *
 * @author jony
 */
public class Detalles_RepuestoVO {
    
   private  String Id, Id_Reparacion, Id_Repuesto, Cantidad, Nombre, Valor_Venta;

  

    
    public Detalles_RepuestoVO(String Id, String Id_Reparacion, String Id_Repuesto, String Cantidad) {
        this.Id=Id;
        this.Id_Reparacion = Id_Reparacion;
        this.Id_Repuesto = Id_Repuesto;
        this.Cantidad= Cantidad;
       
    }
    
     public Detalles_RepuestoVO(String Id_Repuesto, String Cantidad) {
          this.Id_Repuesto = Id_Repuesto;
          this.Cantidad=Cantidad;
    }

    public Detalles_RepuestoVO() {
    }

    public Detalles_RepuestoVO(String Id, String Id_Reparacion, String Id_Repuesto, String Cantidad, String Nombre, String Valor_Venta) {
        this.Id=Id;
        this.Id_Reparacion = Id_Reparacion;
        this.Id_Repuesto = Id_Repuesto;
        this.Cantidad= Cantidad;
        this.Nombre = Nombre;
        this.Valor_Venta = Valor_Venta;
        
       
    }

   
   
    

    public String getId() {
        return Id;
    }

    public void setId(String Id) {
        this.Id = Id;
    }

    public String getCantidad() {
        return Cantidad;
    }

    public void setCantidad(String Cantidad) {
        this.Cantidad = Cantidad;
    }

    

   

    public String getId_Reparacion() {
        return Id_Reparacion;
    }

    public void setId_Reparacion(String Id_Reparacion) {
        this.Id_Reparacion = Id_Reparacion;
    }

    public String getId_Repuesto() {
        return Id_Repuesto;
    }

    public void setId_Repuesto(String Id_Repuesto) {
        this.Id_Repuesto = Id_Repuesto;
    }
    
      public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }
    
    public String getValor_Venta() {
        return Valor_Venta;
    }

    public void setValor_Venta(String Valor_Venta) {
        this.Valor_Venta = Valor_Venta;
    }
    
   
    
}

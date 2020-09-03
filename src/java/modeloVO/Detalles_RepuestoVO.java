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
    
    String Id_Reparacion, Id_Repuesto;

    public Detalles_RepuestoVO(String Id_Reparacion, String Id_Repuesto) {
        this.Id_Reparacion = Id_Reparacion;
        this.Id_Repuesto = Id_Repuesto;
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
   
    
}

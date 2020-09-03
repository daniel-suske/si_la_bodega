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
public class ReparacionVO {

    private String Id, Id_Servicio, Id_Producto, Fecha_Hora, Descripcion, Costos, Tecnico;

    public ReparacionVO(String Id, String Id_Servicio, String Id_Producto, String Fecha_Hora, String Descripcion, String Costos, String Tecnico) {
        this.Id = Id;
        this.Id_Servicio = Id_Servicio;
        this.Id_Producto = Id_Producto;
        this.Fecha_Hora = Fecha_Hora;
        this.Descripcion = Descripcion;
        this.Costos = Costos;
        this.Tecnico = Tecnico;
    }
    
     public ReparacionVO() {
    }

    public String getId() {
        return Id;
    }

    public void setId(String Id) {
        this.Id = Id;
    }

    public String getId_Servicio() {
        return Id_Servicio;
    }

    public void setId_Servicio(String Id_Servicio) {
        this.Id_Servicio = Id_Servicio;
    }

    public String getId_Producto() {
        return Id_Producto;
    }

    public void setId_Producto(String Id_Producto) {
        this.Id_Producto = Id_Producto;
    }

    public String getFecha_Hora() {
        return Fecha_Hora;
    }

    public void setFecha_Hora(String Fecha_Hora) {
        this.Fecha_Hora = Fecha_Hora;
    }

    public String getDescripcion() {
        return Descripcion;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }

    public String getCostos() {
        return Costos;
    }

    public void setCostos(String Costos) {
        this.Costos = Costos;
    }

    public String getTecnico() {
        return Tecnico;
    }

    public void setTecnico(String Tecnico) {
        this.Tecnico = Tecnico;
    }

}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modeloVO;

/**
 *
 * @author Patiño Sauarez
 */
public class FacturaVO {

    private String Id, Fecha, Servicio, Tipo_Pago, Valor_Total, Garantia, Recibe;

    public FacturaVO() {
    }

    public FacturaVO(String Id, String Fecha, String Servicio, String Tipo_Pago, String Valor_Total, String Garantia, String Recibe) {
        this.Id = Id;
        this.Fecha = Fecha;
        this.Servicio = Servicio;
        this.Tipo_Pago = Tipo_Pago;
        this.Valor_Total = Valor_Total;
        this.Garantia = Garantia;
        this.Recibe = Recibe;
    }

    public String getId() {
        return Id;
    }

    public void setId(String Id) {
        this.Id = Id;
    }

    public String getFecha() {
        return Fecha;
    }

    public void setFecha(String Fecha) {
        this.Fecha = Fecha;
    }

    public String getServicio() {
        return Servicio;
    }

    public void setServicio(String Reparacion) {
        this.Servicio = Servicio;
    }

    public String getTipo_Pago() {
        return Tipo_Pago;
    }

    public void setTipo_Pago(String Tipo_Pago) {
        this.Tipo_Pago = Tipo_Pago;
    }

    public String getValor_Total() {
        return Valor_Total;
    }

    public void setValor_Total(String Valor_Total) {
        this.Valor_Total = Valor_Total;
    }

    public String getGarantia() {
        return Garantia;
    }

    public void setGarantia(String Garantia) {
        this.Garantia = Garantia;
    }

    public String getRecibe() {
        return Recibe;
    }

    public void setRecibe(String Recibe) {
        this.Recibe = Recibe;
    }

}

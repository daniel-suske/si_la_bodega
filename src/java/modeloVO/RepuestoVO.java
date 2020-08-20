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
public class RepuestoVO {

    
    
    private String Id, Nombre, No_Serie, Marca, Modelo, Fecha_Compra, Lugar_Compra, Valor_Compra, Valor_Venta, Cantidad, Estado;
    
    public RepuestoVO(String Id, String Nombre, String No_Serie, String Marca, String Modelo, String Fecha_Compra, String Lugar_Compra,
            String Valor_Compra, String Valor_Venta, String Cantidad, String Estado) {
        this.Id = Id;
        this.Nombre = Nombre;
        this.No_Serie = No_Serie;
        this.Marca = Marca;
        this.Modelo = Modelo;
        this.Fecha_Compra = Fecha_Compra;
        this.Lugar_Compra = Lugar_Compra;
        this.Valor_Compra = Valor_Compra;
        this.Valor_Venta = Valor_Venta;
        this.Cantidad = Cantidad;
        this.Estado = Estado;
    }
    
    public RepuestoVO() {
    }
   

    public String getId() {
        return Id;
    }

    public void setId(String Id) {
        this.Id = Id;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getNo_Serie() {
        return No_Serie;
    }

    public void setNo_Serie(String No_Serie) {
        this.No_Serie = No_Serie;
    }

    public String getMarca() {
        return Marca;
    }

    public void setMarca(String Marca) {
        this.Marca = Marca;
    }

    public String getModelo() {
        return Modelo;
    }

    public void setModelo(String Modelo) {
        this.Modelo = Modelo;
    }

    public String getFecha_Compra() {
        return Fecha_Compra;
    }

    public void setFecha_Compra(String Fecha_Compra) {
        this.Fecha_Compra = Fecha_Compra;
    }

    public String getLugar_Compra() {
        return Lugar_Compra;
    }

    public void setLugar_Compra(String Lugar_Compra) {
        this.Lugar_Compra = Lugar_Compra;
    }

    public String getValor_Compra() {
        return Valor_Compra;
    }

    public void setValor_Compra(String Valor_Compra) {
        this.Valor_Compra = Valor_Compra;
    }

    public String getValor_Venta() {
        return Valor_Venta;
    }

    public void setValor_Venta(String Valor_Venta) {
        this.Valor_Venta = Valor_Venta;
    }

    public String getCantidad() {
        return Cantidad;
    }

    public void setCantidad(String Cantidad) {
        this.Cantidad = Cantidad;
    }

    public String getEstado() {
        return Estado;
    }

    public void setEstado(String Estado) {
        this.Estado = Estado;
    }

}

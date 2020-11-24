/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modeloVO;

/**
 *
 * @author Yeison
 */
public class ServicioVO {

    public String Id, Fecha_Pedido, Descripcion, Cliente, Registrado_Por, Estado;

    public ServicioVO(String Id, String Fecha_Pedido, String Descripcion, String Cliente, String Registrado_Por, String Estado) {
        this.Id = Id;
        this.Fecha_Pedido = Fecha_Pedido;
        this.Descripcion = Descripcion;
        this.Cliente = Cliente;
        this.Registrado_Por = Registrado_Por;
        this.Estado = Estado;
    }
    
    public ServicioVO()
    {
    }

    
    public String getId() {
        return Id;
    }

    public void setId(String Id) {
        this.Id = Id;
    }

    public String getFecha_Pedido() {
        return Fecha_Pedido;
    }

    public void setFecha_Pedido(String Fecha_Pedido) {
        this.Fecha_Pedido = Fecha_Pedido;
    }

    public String getDescripcion() {
        return Descripcion;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }

    public String getCliente() {
        return Cliente;
    }

    public void setCliente(String Cliente) {
        this.Cliente = Cliente;
    }

    public String getRegistrado_Por() {
        return Registrado_Por;
    }

    public void setRegistrado_Por(String Registrado_Por) {
        this.Registrado_Por = Registrado_Por;
    }

    public String getEstado() {
        return Estado;
    }

    public void setEstado(String Estado) {
        this.Estado = Estado;
    }
    
}

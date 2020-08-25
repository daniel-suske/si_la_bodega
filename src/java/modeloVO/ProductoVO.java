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
public class ProductoVO {
    
    private String Id, Tipo_Producto, Marca, Modelo, Numero_Serie, Estado;
    
     public ProductoVO(String Id, String Tipo_Producto, String Marca, String Modelo, String Numero_Serie, String Estado) {
        this.Id = Id;
        this.Tipo_Producto = Tipo_Producto;
        this.Marca = Marca;
        this.Modelo = Modelo;
        this.Numero_Serie = Numero_Serie;
        this.Estado = Estado;
    }

    public String getId() {
        return Id;
    }

    public void setId(String Id) {
        this.Id = Id;
    }

    public String getTipo_Producto() {
        return Tipo_Producto;
    }

    public void setTipo_Producto(String Tipo_Producto) {
        this.Tipo_Producto = Tipo_Producto;
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

    public String getNumero_Serie() {
        return Numero_Serie;
    }

    public void setNumero_Serie(String Numero_Serie) {
        this.Numero_Serie = Numero_Serie;
    }

    public String getEstado() {
        return Estado;
    }

    public void setEstado(String Estado) {
        this.Estado = Estado;
    }

}

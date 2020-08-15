/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modeloVO;

/**
 *
 * @author Yeison
 * 
 */
public class EstadoVO {

    
    private String Id, Nombre;
    
    
    public EstadoVO(String Id, String Nombre) {
        this.Id = Id;
        this.Nombre = Nombre;
    }
    
    public EstadoVO()
    {
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
    
    
}

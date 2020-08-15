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
public class Datos_PEVO {
    

    private String Id, Id_Empleado, Fecha_Nacimiento, Estado_Civil, EPS, ARL, Fondo_Pensiones, Nivel_Escolaridad, Experiencia;
    
    
    public Datos_PEVO(String Id, String Id_Empleado, String Fecha_Nacimiento, String Estado_Civil, String EPS, String ARL, String Fondo_Pensiones, String Nivel_Escolaridad, String Experiencia) {
        this.Id = Id;
        this.Id_Empleado = Id_Empleado;
        this.Fecha_Nacimiento = Fecha_Nacimiento;
        this.Estado_Civil = Estado_Civil;
        this.EPS = EPS;
        this.ARL = ARL;
        this.Fondo_Pensiones = Fondo_Pensiones;
        this.Nivel_Escolaridad = Nivel_Escolaridad;
        this.Experiencia = Experiencia;
    }
    
    public Datos_PEVO()
    {
    }
    
    
    public String getId() {
        return Id;
    }

    public void setId(String Id) {
        this.Id = Id;
    }

    public String getId_Empleado() {
        return Id_Empleado;
    }

    public void setId_Empleado(String Id_Empleado) {
        this.Id_Empleado = Id_Empleado;
    }

    public String getFecha_Nacimiento() {
        return Fecha_Nacimiento;
    }

    public void setFecha_Nacimiento(String Fecha_Nacimiento) {
        this.Fecha_Nacimiento = Fecha_Nacimiento;
    }

    public String getEstado_Civil() {
        return Estado_Civil;
    }

    public void setEstado_Civil(String Estado_Civil) {
        this.Estado_Civil = Estado_Civil;
    }

    public String getEPS() {
        return EPS;
    }

    public void setEPS(String EPS) {
        this.EPS = EPS;
    }

    public String getARL() {
        return ARL;
    }

    public void setARL(String ARL) {
        this.ARL = ARL;
    }

    public String getFondo_Pensiones() {
        return Fondo_Pensiones;
    }

    public void setFondo_Pensiones(String Fondo_Pensiones) {
        this.Fondo_Pensiones = Fondo_Pensiones;
    }

    public String getNivel_Escolaridad() {
        return Nivel_Escolaridad;
    }

    public void setNivel_Escolaridad(String Nivel_Escolaridad) {
        this.Nivel_Escolaridad = Nivel_Escolaridad;
    }

    public String getExperiencia() {
        return Experiencia;
    }

    public void setExperiencia(String Experiencia) {
        this.Experiencia = Experiencia;
    }
    
    
}

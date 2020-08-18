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
public class UsuarioVO {

    
    private String Id, Nombres, Apellidos, Numero_Documento, Tipo_Documento, Correo, Contrasena, Telefono, Barrio, Direccion, Id_Registrado_Por, Perfil, Estado;
    
    
    public UsuarioVO(String Id, String Nombres, String Apellidos, String Numero_Documento, String Tipo_Documento, String Correo, String Contrasena, String Telefono, String Barrio, String Direccion, String Id_Registrado_Por, String Perfil, String Estado) {
        this.Id = Id;
        this.Nombres = Nombres;
        this.Apellidos = Apellidos;
        this.Numero_Documento = Numero_Documento;
        this.Tipo_Documento = Tipo_Documento;
        this.Correo = Correo;
        this.Contrasena = Contrasena;
        this.Telefono = Telefono;
        this.Barrio = Barrio;
        this.Direccion = Direccion;
        this.Id_Registrado_Por = Id_Registrado_Por;
        this.Perfil = Perfil;
        this.Estado = Estado;
    }

    
    public UsuarioVO() {
       
    }

    public UsuarioVO(String Id, String Correo) {

        this.Id = Id;
        this.Correo = Correo;
        
    }
   
    
    public String getId() {
        return Id;
    }

    public void setId(String Id) {
        this.Id = Id;
    }

    public String getNombres() {
        return Nombres;
    }

    public void setNombres(String Nombres) {
        this.Nombres = Nombres;
    }

    public String getApellidos() {
        return Apellidos;
    }

    public void setApellidos(String Apellidos) {
        this.Apellidos = Apellidos;
    }

    public String getNumero_Documento() {
        return Numero_Documento;
    }

    public void setNumero_Documento(String Numero_Documento) {
        this.Numero_Documento = Numero_Documento;
    }

    public String getTipo_Documento() {
        return Tipo_Documento;
    }

    public void setTipo_Documento(String Tipo_Documento) {
        this.Tipo_Documento = Tipo_Documento;
    }

    public String getCorreo() {
        return Correo;
    }

    public void setCorreo(String Correo) {
        this.Correo = Correo;
    }

    public String getContrasena() {
        return Contrasena;
    }

    public void setContrasena(String Contrasena) {
        this.Contrasena = Contrasena;
    }

    public String getTelefono() {
        return Telefono;
    }

    public void setTelefono(String Telefono) {
        this.Telefono = Telefono;
    }

    public String getBarrio() {
        return Barrio;
    }

    public void setBarrio(String Barrio) {
        this.Barrio = Barrio;
    }

    public String getDireccion() {
        return Direccion;
    }

    public void setDireccion(String Direccion) {
        this.Direccion = Direccion;
    }

    public String getId_Registrado_Por() {
        return Id_Registrado_Por;
    }

    public void setId_Registrado_Por(String Id_Registrado_Por) {
        this.Id_Registrado_Por = Id_Registrado_Por;
    }

    public String getPerfil() {
        return Perfil;
    }

    public void setPerfil(String Perfil) {
        this.Perfil = Perfil;
    }

    public String getEstado() {
        return Estado;
    }

    public void setEstado(String Estado) {
        this.Estado = Estado;
    }
    
    
}

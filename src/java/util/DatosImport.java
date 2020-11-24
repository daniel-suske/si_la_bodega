/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

/**
 *
 * @author Yeison
 */
public class DatosImport {

    private String IdUs;
    
    public DatosImport(String IdUs)
    {
        this.IdUs = IdUs;
    }

    public DatosImport() {
    }

    public String getIdSER() {
        return IdUs;
    }

    public void setIdSER(String IdSER) {
        this.IdUs = IdSER;
    }
    
}

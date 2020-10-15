/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import javax.mail.Message;
import javax.mail.Session;
import java.util.Properties;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
/**
 *
 * @author Yeison
 */
public class Correo {
    
    public boolean enviado = false;
    public int opc = 0;
    public String host = "smtp.gmail.com";
    public String bot = "labodega.0ycd@gmail.com";
    public String botp = "LaBodega0198762345";
    public String asunt = "";
    public String text = "";
    
    
    public boolean enviarCorreo(String asunt, String text, String Correo) {
        
        try {
            
            Properties pro = System.getProperties();
            
            pro.put("mail.smtp.starttls.enable","true");
            pro.put("mail.smtp.host",host);
            pro.put("mail.smtp.user",bot);
            pro.put("mail.smtp.password", botp);
            pro.put("mail.smtp.port", 587);
            pro.put("mail.smtp.auth", "true");
            
            Session sesion = Session.getDefaultInstance(pro,null);
            
            MimeMessage message = new MimeMessage(sesion);
            
            message.setFrom(new InternetAddress(bot));
            
            message.setRecipient(Message.RecipientType.TO, new InternetAddress(Correo));
            
            message.setSubject(asunt);
            message.setText(text, "ISO-8859-1", "html");
            
            Transport transport = sesion.getTransport("smtp");
            
            transport.connect(host,bot,botp);
            
            transport.sendMessage(message, message.getAllRecipients());
            
            transport.close();
            
            enviado = true;
            
        } catch(Exception e) {
            
            e.printStackTrace();
            
        }
        
        return enviado;
        
    }
    
    public boolean enviarPNewUE(String Nombres, String Apellidos, String Contrasena, String Correo) {
        
        asunt = "Confirmación de Cuenta en LA BODEGA";
        text = "Bienvenido al sistema LA BODEGA  <b>"+Nombres+" "+Apellidos+"</b>"
                +"<br>su codigo proporcionado es: <b>"+Contrasena+"</b>"
                +"<br>Para cambiar su Contraseña de click aqui:"
                +"<br><a href = 'http://localhost:26775/si_la_bodega/CambiarContrasenaU.jsp'>Confirmar</a>";
        
        try {
            
            enviarCorreo(asunt, text, Correo);
            
        } catch(Exception e) {
            
            e.printStackTrace();
            
        }
        
        return enviado;
        
    }
    
    
    public boolean enviarSPChange(String Contrasena, String Correo) {
        
        asunt = "Cambio de Contraseña de Cuenta en LA BODEGA";
        text = "Reciba un cordial Saludo, Se envio este correo de respuesta a su solicitud de cambio de contraseña"
                +"<br>su codigo proporcionado es: <b>"+Contrasena+"</b>"
                +"<br>Para cambiar su Contraseña de click aqui:"
                +"<br><a href = 'http://localhost:26775/si_la_bodega/CambiarContrasenaU.jsp'>Confirmar</a>";
        
        try {
            
            enviarCorreo(asunt, text, Correo);
            
        } catch(Exception e) {
            
            e.printStackTrace();
            
        }
        
        return enviado;
        
    }
    
}

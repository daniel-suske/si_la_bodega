/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import modeloVO.UsuarioVO;
import modeloDAO.UsuarioDAO;
import util.DatosImport;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.google.gson.Gson;
import java.io.PrintWriter;
/**
 *
 * @author Yeison
 */
@WebServlet(name = "UsuarioControlador", urlPatterns = {"/Usuario"})
public class UsuarioControlador extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        int opcion = Integer.parseInt(request.getParameter("opcion"));
        
        String Id = request.getParameter("textId");
        String Nombres = request.getParameter("nombres");
        String Apellidos = request.getParameter("apellidos");
        String Numero_Documento = request.getParameter("documento");
        String Tipo_Documento = request.getParameter("tipo");
        String Correo = "", Contrasena = "";
        if(opcion == 1) {
            Correo = request.getParameter("correo");
            Contrasena = request.getParameter("contrasena");
        } else {
            Correo = request.getParameter("correos");
            Contrasena = request.getParameter("contrasenas");
        }
        String Telefono = request.getParameter("telefono");
        String Barrio = request.getParameter("barrio");
        String Dirrecion = request.getParameter("direccion");
        String Id_Registrado_Por = request.getParameter("textId_R");
        String Perfil = request.getParameter("textPerfil");
        String Estado = "", text = "";
        if(opcion == 10){
           Estado = request.getParameter("contrasena_p");
           text = "CS3";
        } else if(opcion == 11) {
           Estado = request.getParameter("textEstado");
           text = "Cor2";
        } else {
           Estado = request.getParameter("textEstado");
           text = request.getParameter("text");
        }
        if(opcion == 1) {            
           Perfil = "5";
           Estado = "1";   
        }
        
        //Lleguan los datos y se aseguran
        UsuarioVO usuVO = new UsuarioVO(Id, Nombres, Apellidos, Numero_Documento, Tipo_Documento, Correo, Contrasena, Telefono, Barrio, Dirrecion, Id_Registrado_Por, Perfil, Estado);
        
        
        UsuarioDAO usuDAO = new UsuarioDAO(usuVO);  //Se realizan las operaciones del modelo
        
        
        switch (opcion) {
            
            case 1: //Agregar Registro de Cliente
                    
                if(usuDAO.agregarRegistroCliente()) {
                    
                    request.setAttribute("mensajeExitoso", "¡El Cliente se Registró correctamente!");
                    
                } else {
                    
                    request.setAttribute("mensajeFallido", "¡El Cliente No se Registró correctamente!");
                    
                }
                
                request.getRequestDispatcher("index.jsp").forward(request, response);
            
            break;
            
            case 2: //Agregar Registro de Empleado

                if(usuDAO.agregarRegistro()) {
                    
                    String respon = "{\"resu\": \"si\"}";
                    PrintWriter out = response.getWriter();
                    System.out.print(respon);
                    out.print(respon);
                    
                    request.setAttribute("mensajeExitoso", "¡El Usuario se Registro Correctamente por favor Siga registrando los demas Datos!");
                    
                } else {
                    
                    String respon = "{\"resu\": \"no\"}";
                    PrintWriter out = response.getWriter();
                    System.out.print(respon);
                    out.print(respon);
                    
                }
            
            break;    
              
            case 3: //Consulta especifica para actualizar
                       
                usuVO = usuDAO.consultarId(Id);
                
                if (usuVO != null) {
                    
                    request.setAttribute("usuario", usuVO);
                    
                    request.getRequestDispatcher("ModificarUsuario.jsp").forward(request, response);
                    
                } else {
                    
                    request.setAttribute("mensajeFallido", "¡El Usuario a consultar NO existe!");
                    
                    request.getRequestDispatcher("Usuarios.jsp").forward(request, response);
                    
                }                
                
            break;
            
            case 4: //Consulta por Busqueda
                       
                List<UsuarioVO>listaU = usuDAO.BuscarU(text); 
                 
                request.setAttribute("Listas", listaU);
                
                request.getRequestDispatcher("Usuarios.jsp").forward(request, response);
                
            break;
            
            case 5: //Modificación de Registro
                
                if(usuDAO.actualizarRegistro()) {
                    
                    request.setAttribute("mensajeExitoso", "¡El Usuario se Modifico Correctamente!");
                    
                    request.getRequestDispatcher("Usuarios.jsp").forward(request, response);     
                    
                } else {
                    
                    request.setAttribute("mensajeFallido", "¡El Usuario No se Modifico Correctamente!");
                    
                    request.getRequestDispatcher("ModificarUsuario.jsp").forward(request, response);     
                    
                }
                  
                
            break; 
            
            case 6: //Inactivar Registro
                
                if(usuDAO.CambiarEstadoUsuario()) {
                    
                    request.getRequestDispatcher("Usuarios.jsp").forward(request, response);    
                    
                } else {
                    
                    request.getRequestDispatcher("Usuarios.jsp").forward(request, response);    
                    
                }
                  
                
            break;  
            
            case 7: //Activar Registro
                
                if(usuDAO.CambiarEstadoUsuario()) {
                    
                    request.getRequestDispatcher("Usuarios.jsp").forward(request, response);      
                    
                } else {
                   
                   request.getRequestDispatcher("Usuarios.jsp").forward(request, response);      
                    
                }
                 
                
            break;            
             
            case 8: //Inicio de Sesión
                
                if (usuDAO.inicioSesion(Correo, Contrasena)) {
                                   
                    HttpSession miSesion = request.getSession(true); //Crea una sesion
                    
                    usuVO = usuDAO.consultarCorreo(Correo); //Atributos que maneja en la session u objeto
                    
                    miSesion.setAttribute("sesion_usuario", usuVO); //Enviando por la sesion
                    
                    
                    switch (usuVO.getPerfil()) {
                        
                        case "1":
                    
                        request.getRequestDispatcher("dashboard.jsp").forward(request, response);
                        
                        break;
                        
                        case "2":
                    
                        request.getRequestDispatcher("dashboardS.jsp").forward(request, response);
                        
                        break;
                        
                        case "3":
                    
                        request.getRequestDispatcher("dashboardT.jsp").forward(request, response);
                        
                        break;
                        
                        case "4":
                    
                        request.getRequestDispatcher("dashboardCA.jsp").forward(request, response);
                        
                        break;
                        
                        case "5":
                    
                        request.getRequestDispatcher("dashboardCL.jsp").forward(request, response);
                        
                        break;
                            
                    }
                    
                } else {
                    
                    request.setAttribute("mensajeFallido", "¡El Usuario y/o la contraseña son incorrectos o no se encuentra Activo!");
                    
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                    
                }
            break;  
            
            case 9: //consultar unicidad
                
               if(usuDAO.consultarUnicidad(text)) {
                   
                    String respon = "{\"rescu\": \"si\"}";
                    PrintWriter out = response.getWriter();
                    System.out.print(respon);
                    out.print(respon);
                   
               } else {
                   
                    String respon = "{\"rescu\": \"no\"}";
                    PrintWriter out = response.getWriter();
                    System.out.print(respon);
                    out.print(respon);
                   
               }
            break;
            
            case 10: //Cambiar password
               
                if(usuDAO.consultarUnicidad(text)) {
                    
                    if(usuDAO.cambiarContrasena()) {
                        
                    request.setAttribute("mensajeExitoso", "¡La Contraseña Si se Cambio Correctamente!");
                    
                        
                    } else {
                        
                    request.setAttribute("mensajeFallido", "¡La Contraseña No se Cambio Correctamente!");  
                        
                    }
                    
                } else {
                    
                    request.setAttribute("mensajeFallido", "¡El Codigo es Incorrecto o No Existe Verifique!");
                      
                    
                }
                
                    request.getRequestDispatcher("CambiarContrasenaU.jsp").forward(request, response); 
                
            break;
            
            case 11: //enviar correo
                
                if(usuDAO.consultarUnicidad(text)) {
                    
                    if(usuDAO.generarCodigo()) {
                        
                    request.setAttribute("mensajeExitoso", "¡Se envio la Respuesta al Correo, Por favor verifique!");
                    
                        
                    } else {
                        
                    request.setAttribute("mensajeFallido", "¡No se pudo realizar la Petición!");  
                        
                    }
                    
                } else {
                    
                    request.setAttribute("mensajeFallido", "¡El Correo Es Incorrecto o no Existe Verifique!");
                    
                }
                
                    request.getRequestDispatcher("EnviarCorrCon.jsp").forward(request, response); 
                
            break;    
        }
        
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import modeloVO.UsuarioVO;
import modeloDAO.UsuarioDAO;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
        String Correo = request.getParameter("correos");
        String Contrasena = request.getParameter("contrasena");
        String Telefono = request.getParameter("telefono");
        String Barrio = request.getParameter("barrio");
        String Dirrecion = request.getParameter("direccion");
        String Id_Registrado_Por = request.getParameter("textId_R");
        String Perfil = request.getParameter("textPerfil");
        String Estado = request.getParameter("textEstado");
        
        String text = request.getParameter("text");
        
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
                    
                    request.getRequestDispatcher("Usuarios.jsp").forward(request, response);
                    
                } else {
                    
                    request.setAttribute("mensajeFallido", "¡El Usuario No se Registró Correctamente!");
                    
                    request.getRequestDispatcher("RegistrarUsuarioE.jsp").forward(request, response);
                }
            
            break;    
              
            case 3: //Consulta especifica para actualizar
                       
                usuVO = usuDAO.consultarId(Id);
                
                if (usuVO != null) {
                    
                    request.setAttribute("usuario", usuVO);
                    
                    request.getRequestDispatcher("ModificarUsuario.jsp").forward(request, response);
                    
                } else {
                    
                    request.setAttribute("mensajeFallido", "¡El Vehiculo a consultar NO existe!");
                    
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
                    
                } else {
                    
                    request.setAttribute("mensajeFallido", "¡El Usuario No se Modifico Correctamente!");
                    
                }
                
                request.getRequestDispatcher("ModificarUsuario.jsp").forward(request, response);       
                
            break; 
            
            case 6: //Inactivar Registro
                
                if(usuDAO.InactivarUsuario(Id)) {
                    
                    request.setAttribute("mensajeExitoso", "¡El Usuario se Inactivo Correctamente");
                    
                } else {
                    
                    request.setAttribute("mensajeFallido", "¡El Usuario No se Inactivo Correctamente!");
                    
                }
                
                request.getRequestDispatcher("Usuarios.jsp").forward(request, response);       
                
            break;  
            
            case 7: //Activar Registro
                
                if(usuDAO.ActivarUsuario(Id)) {
                    
                    request.setAttribute("mensajeExitoso", "¡El Usuario se Activo Correctamente!");
                    
                } else {
                    
                    request.setAttribute("mensajeFallido", "¡El Usuario No se Activo Correctamente!");
                    
                }
                
                request.getRequestDispatcher("Usuarios.jsp").forward(request, response);       
                
            break;            
             
            case 8: //Inicio de Sesión
                
                if (usuDAO.inicioSesion(Correo, Contrasena)) {
                    
                    HttpSession miSesion = request.getSession(true); //Crea una sesion
                   
                    usuVO = new UsuarioVO(Id, Correo); //Atributos que maneja en la session u objeto
                    
                    miSesion.setAttribute("usuario", usuVO); //Enviando por la sesion
                    
                    request.getRequestDispatcher("dashboard.jsp").forward(request, response);
                    
                } else {
                    
                    request.setAttribute("mensajeFallido", "¡El Usuario y/o la contraseña son incorrectos!");
                    
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                    
                }
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

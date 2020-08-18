/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import modeloVO.UsuarioVO;
import modeloDAO.UsuarioDAO;
import java.io.IOException;
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
        String Nombres = request.getParameter("textName");
        String Apellidos = request.getParameter("textApell");
        String Numero_Documento = request.getParameter("textNumD");
        String Tipo_Documento = request.getParameter("textTipD");
        String Correo = request.getParameter("correos");
        String Contrasena = request.getParameter("textCont");
        String Telefono = request.getParameter("textTele");
        String Barrio = request.getParameter("textBarr");
        String Dirrecion = request.getParameter("textDire");
        String Id_Registrado_Por = request.getParameter("textId_R");
        String Perfil = request.getParameter("textPerfil");
        String Estado = request.getParameter("textEstado");
        
        //Lleguan los datos y se aseguran
        UsuarioVO usuVO = new UsuarioVO(Id, Nombres, Apellidos, Numero_Documento, Tipo_Documento, Correo, Contrasena, Telefono, Barrio, Dirrecion, Id_Registrado_Por, Perfil, Estado);
        
        UsuarioDAO usuDAO = new UsuarioDAO(usuVO);  //Se realizan las operaciones del modelo
        
        
        switch (opcion) {
            
            case 1: //Agregar Registro
                    
                if(usuDAO.agregarRegistro()) {
                    
                    request.setAttribute("mensajeExitoso", "¡El Usuario se Registró correctamente!");
                    
                } else {
                    
                    request.setAttribute("mensajeFallido", "¡El Usuario No se Registró correctamente!");
                    
                }
                
                request.getRequestDispatcher("RegistrarUsuarios.jsp").forward(request, response);
            
            break;
            
            case 5: //Inicio de Sesión
                
                if (usuDAO.inicioSesion(Correo, Contrasena)) {
                    
                    //HttpSession miSesion = request.getSession(true); //Crea una sesion
                   
                    //usuVO = new UsuarioVO(Id, Correo); //Atributos que maneja en la session u objeto
                    
                    //miSesion.setAttribute("usuario", usuVO); //Enviando por la sesion
                    
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

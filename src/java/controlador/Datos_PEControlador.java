/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import modeloVO.Datos_PEVO;
import modeloDAO.Datos_PEDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Yeison
 */
@WebServlet(name = "Datos_PEControlador", urlPatterns = {"/Datos_PE"})
public class Datos_PEControlador extends HttpServlet {

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
       String Id_Empleado = request.getParameter("Id_Empleado");
       String Fecha_Nacimiento = request.getParameter("Fecha_N");
       String Estado_Civil = request.getParameter("Estado_C");
       String EPS = request.getParameter("Eps");
       String ARL = request.getParameter("Arl");
       String Fondo_Pensiones = request.getParameter("Fondo_P");
       String Nivel_Escolaridad = request.getParameter("Nivel_E");
       String Experiencia = request.getParameter("Exp");
        
       //Lleguan los datos y se aseguran
       Datos_PEVO datVO = new Datos_PEVO(Id, Id_Empleado, Fecha_Nacimiento, Estado_Civil, EPS, ARL, Fondo_Pensiones, Nivel_Escolaridad, Experiencia);
       
       //Se realizan las operaciones del modelo
       Datos_PEDAO datDAO = new Datos_PEDAO(datVO);
       
       switch(opcion) {
           
           case 1: //Agregar Registro 
              
               if(datDAO.agregarRegistro()) {
                   
                   request.getRequestDispatcher("Usuarios.jsp").forward(request, response);
                   
                   request.setAttribute("mensajeExitoso", "¡El Usuario y sus Datos se Registraron Correctamente!");
                
               } else {
                           
                   request.setAttribute("mensajeFallido", "¡Los Datos No se pudieron Registrar correctamente!");
                   
                   request.getRequestDispatcher("RegistrarDatosPE.jsp").forward(request, response);
                   
               }    
               
           break; 
           
           case 2: //Consulta especifica para actualizar
                       
                datVO = datDAO.consultarId_Empleado(Id_Empleado);
                
                if (datVO != null) {
                    
                    request.setAttribute("datos", datVO);
                    
                    request.getRequestDispatcher("ModificarDatosPE.jsp").forward(request, response);
                    
                } else {
                    
                    request.setAttribute("mensajeFallido", "¡Los Datos a consultar NO existen!");
                    
                    request.getRequestDispatcher("Usuarios.jsp").forward(request, response);
                    
                }                
                
            break;
           
            case 3: //Modificación de Registro
                
                if(datDAO.actualizarRegistro()) {
                    
                    request.setAttribute("mensajeExitoso", "¡Los Datos se Modificaron Correctamente!");
                    
                    request.getRequestDispatcher("Usuarios.jsp").forward(request, response);     
                    
                } else {
                    
                    request.setAttribute("mensajeFallido", "¡Los Datos No se Modificaron Correctamente!");
                    
                    request.getRequestDispatcher("ModificarDatosPE.jsp").forward(request, response);     
                    
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

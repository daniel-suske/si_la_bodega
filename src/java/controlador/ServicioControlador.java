/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import modeloVO.ServicioVO;
import modeloDAO.ServicioDAO;
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
@WebServlet(name = "ServicioControlador", urlPatterns = {"/Servicio"})
public class ServicioControlador extends HttpServlet {

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
       String Fecha_Pedido = request.getParameter("Fecha_P");
       String Descripcion = request.getParameter("Descript");
       String Cliente = request.getParameter("Cliente");
       String Registrado_Por = request.getParameter("R_Por");
       String Estado = request.getParameter("Est");
       
       //Lleguan los datos y se aseguran
       ServicioVO serVO = new ServicioVO(Id, Fecha_Pedido, Descripcion, Cliente, Registrado_Por, Estado);
       
       //Se realizan las operaciones del modelo
       ServicioDAO serDAO = new ServicioDAO(serVO);
       
       switch(opcion) {
           
           case 1: //Agregar Registro 
              
               if(serDAO.agregarRegistro()) {
                   
                   request.getRequestDispatcher("Servicios.jsp").forward(request, response);
                   
                   request.setAttribute("mensajeExitoso", "¡El Servicio se Registro Correctamente!");
                
               } else {
                           
                   request.setAttribute("mensajeFallido", "¡El Servicio no se Registro Correctamente!");
                   
                   request.getRequestDispatcher("RegistrarServicio.jsp").forward(request, response);
                   
               }    
               
           break; 
           
           case 2:    //Consulta especifica para actualizar
                       
                serVO = serDAO.consultarId(Id);
                
                if (serVO != null) {
                    
                    request.setAttribute("servicios", serVO);
                    
                    request.getRequestDispatcher("ModificarServicio.jsp").forward(request, response);
                    
                } else {
                    
                    request.setAttribute("mensajeFallido", "¡Los Datos a consultar NO existen!");
                    
                    request.getRequestDispatcher("Servicios.jsp").forward(request, response);
                    
                }  
               
           break;    
           
           case 3:    //Modificación de Registro
                
                if(serDAO.actualizarRegistro()) {
                    
                    request.setAttribute("mensajeExitoso", "¡El Servicio se modifico Correctamente!");
                    
                    request.getRequestDispatcher("Servicios.jsp").forward(request, response);     
                    
                } else {
                    
                    request.setAttribute("mensajeFallido", "¡El Servicio No se modifico Correctamente!");
                    
                    request.getRequestDispatcher("ModificarServicio.jsp").forward(request, response);     
                    
                }
                
           break;
           
           case 4:
               
               serVO = serDAO.consultarId(Id);
               
               if (serVO != null) {
                    
                    request.setAttribute("servicios", serVO);
                    
                    request.getRequestDispatcher("ModificarServicio.jsp").forward(request, response);
                    
                } else {
                    
                    request.setAttribute("mensajeFallido", "¡Los Datos a consultar NO existen!");
                    
                    request.getRequestDispatcher("Servicios.jsp").forward(request, response);
                    
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

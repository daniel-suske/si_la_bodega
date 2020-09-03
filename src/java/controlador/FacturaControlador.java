/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modeloDAO.FacturaDAO;
import modeloVO.FacturaVO;

/**
 *
 * @author Patiño Sauarez
 */
@WebServlet(name = "FacturaControlador", urlPatterns = {"/Factura"})
public class FacturaControlador extends HttpServlet {

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
       
        
        int opcion = Integer.parseInt(request.getParameter("opcion"));//opcion que es registrar actualizar y eliminar en las vistas.
       String Id = request.getParameter("textId");
        String Fecha = request.getParameter("textFecha");// los text se deben poner en minuscula 
         String Servicio = request.getParameter("textServi");
          String Tipo_Pago = request.getParameter("textTipPago");
          String Valor_Total = request.getParameter("textVaPago");
          String Garantia = request.getParameter("textGarantia");
          String Recibe = request.getParameter("textRecibe");
          
           FacturaVO faVO = new FacturaVO (Id, Fecha, Servicio, Tipo_Pago, Valor_Total, Garantia, Recibe);
           FacturaDAO faDAO = new FacturaDAO(faVO);
           
           switch (opcion) {
            
            case 1: //Agregar Registro
                    
                if(faDAO.agregarRegistro()) {
                    
                    request.setAttribute("mensajeExitoso", "¡La Factura se Registró correctamente!");
                    request.getRequestDispatcher("consultarFactura.jsp").forward(request, response);
                    
                } else {
                    
                    request.setAttribute("mensajeFallido", "¡La Factura No se Registró correctamente!");
                    request.getRequestDispatcher("RegistrarFactura.jsp").forward(request, response);
                    
                }
                
                
            
            break;
            
            case 2: 
                
              faVO=faDAO.consultarId(Id);
                
                
                  if(faVO !=null){
                      request.setAttribute("Factura",faVO);
                    
                  }
                  else{
                      request.setAttribute("mensajeFallido","¡La Factura no se pudo Consultar!");
                  }
                   request.getRequestDispatcher("consultarFactura.jsp").forward(request, response);
                   break;  
                   
                   case 3: 
                  if(faDAO.actualizarRegistro()){
                      request.setAttribute("mensajeExito","¡ Factura Se actualizo Correctamente !");
                         request.getRequestDispatcher("consultarFactura.jsp").forward(request, response);
                  
                      
                  }
                  else{
                      request.setAttribute("mensajeError","¡El Factura no se pudo actualizar!");
                       request.getRequestDispatcher("actualizarFactura.jsp").forward(request, response);
                  }
                 break;  
                     case 4: 
                         
                  if(faDAO.eliminarRegistro()){
                      request.setAttribute("mensajeExito","¡Factura eliminada correctamente  !");
                  }
                  else{
                      request.setAttribute("mensajeError","¡Factura no se ah eliminado!");
                  }
                   request.getRequestDispatcher("eliminarFactura.jsp").forward(request, response);
                   break; 
                   
                    case 5: 
                
              faVO=faDAO.consultarId(Id);
                
                
                  if(faVO !=null){
                      request.setAttribute("Factura",faVO);
                    
                  }
                  else{
                      request.setAttribute("mensajeFallido","¡La Factura no se pudo Consultar!");
                  }
                   request.getRequestDispatcher("actualizarFactura.jsp").forward(request, response);
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

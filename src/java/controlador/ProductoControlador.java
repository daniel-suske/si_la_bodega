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
import modeloDAO.ProductoDAO;
import modeloVO.ProductoVO;

/**
 *
 * @author Patiño Sauarez
 */
@WebServlet(name = "ProductoControlador", urlPatterns = {"/Producto"})
public class ProductoControlador extends HttpServlet {

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
       
       String Id = request.getParameter("Id");
        String Tipo_Producto = request.getParameter("producto");
        String Marca = request.getParameter("marca");
        String Modelo = request.getParameter("modelo");
        String Numero_Serie  = request.getParameter("serie");
        String Estado = request.getParameter("status");
        String text = request.getParameter("text");
         if(opcion == 1) {
            
          
            Estado = "1";
            
        }
        
        
         ProductoVO PoVO = new ProductoVO (Id, Tipo_Producto, Marca, Modelo, Numero_Serie,  Estado);
           ProductoDAO PaDAO = new ProductoDAO(PoVO);
           
           
           switch (opcion) {
            
            case 1: //Agregar Registro
                    
                if(PaDAO.agregarRegistro()) {
                    
                    request.setAttribute("mensajeExitoso", "¡El producto se Registró correctamente!");
                    request.getRequestDispatcher("consultarProducto.jsp").forward(request, response);
                    
                } else {
                    
                    request.setAttribute("mensajeFallido", "¡El Producto  No se Registró correctamente!");
                    request.getRequestDispatcher("registrarProducto.jsp").forward(request, response);
                    
                }
                 break;
            
            case 2: 
                
              PoVO=PaDAO.consultarId(Id);
                
                
                  if(PoVO !=null){
                      request.setAttribute("Producto",PoVO);
                    
                  }
                  else{
                      request.setAttribute("mensajeFallido","¡El producto no se pudo Consultar!");
                  }
                   request.getRequestDispatcher("consultarProducto.jsp").forward(request, response);
                   break;  
                   
                   case 3: 
                  if(PaDAO.actualizarRegistro()){
                      request.setAttribute("mensajeExito","¡ El Producto Se actualizo Correctamente !");
                         request.getRequestDispatcher("consultarProducto.jsp").forward(request, response);
                  
                      
                  }
                  else{
                      request.setAttribute("mensajeError","¡El Producto no se pudo actualizar!");
                       request.getRequestDispatcher("actualizarProducto.jsp").forward(request, response);
                  }
                 break;  
                   case 4: 
                         
                  if(PaDAO.eliminarRegistro()){
                      request.setAttribute("mensajeExito","¡El Producto eliminada correctamente  !");
                  }else{
                      request.setAttribute("mensajeError","¡El Producto  no se ah eliminado!");
                  }
                   request.getRequestDispatcher("eliminarProducto.jsp").forward(request, response);
                   break; 
                   
                    case 5: 
                PoVO=PaDAO.consultarId(Id);
                
                
                  if(PoVO !=null){
                      request.setAttribute("Producto",PoVO);
                    
                  }
                  else{
                      request.setAttribute("mensajeFallido","¡El Producto no se pudo Consultar!");
                  }
                   request.getRequestDispatcher("actualizarProducto.jsp").forward(request, response);
                   
                   break;  
                   
                    case 6: //Inactivar Registro
                
                if(PaDAO.InactivarProducto()) {
                    
                    request.getRequestDispatcher("consultarProducto.jsp").forward(request, response);    
                    
                } else {
                    
                    request.getRequestDispatcher("consultarProducto.jsp").forward(request, response);    
                    
                }
                  
                
            break;  
            
            
            case 7: //Activar Registro
                
                if(PaDAO.ActivarProducto()) {
                    
                    request.getRequestDispatcher("consultarProducto.jsp").forward(request, response);      
                    
                } else {
                   
                   request.getRequestDispatcher("consultarProducto.jsp").forward(request, response);      
                    
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


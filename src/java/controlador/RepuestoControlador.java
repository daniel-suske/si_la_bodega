/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import com.google.gson.Gson;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import modeloDAO.RepuestoDAO;

import modeloVO.RepuestoVO;

/**
 *
 * @author jony
 */

@WebServlet(name = "RepuestoControlador", urlPatterns = {"/Repuesto"})
@MultipartConfig(maxFileSize = 16177215) 
public class RepuestoControlador extends HttpServlet {

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
        String Nombre = request.getParameter("nombre");
        String No_Serie = request.getParameter("no_serie");
        String Marca = request.getParameter("marca");
        String Modelo = request.getParameter("modelo");
         String Fecha_Compra = request.getParameter("fecha");
        String Lugar_Compra = request.getParameter("lugar_compra");
        String Valor_Compra = request.getParameter("valor_compra");
        String Valor_Venta = request.getParameter("valor_venta");
        String Cantidad = request.getParameter("cantidad");
        String Estado = request.getParameter("estado");
        InputStream inputStream = null;
        if(opcion ==1 || opcion ==2){
         Part part = request.getPart("imagen");
        
         String a=part.getSubmittedFileName();
         System.out.println(a);
         if( !a.isEmpty()){
          inputStream = part.getInputStream();
         
        }
        }
        
        
        RepuestoVO repuVO = new RepuestoVO(Id, Nombre, No_Serie, Marca, Modelo, Fecha_Compra, Lugar_Compra, Valor_Compra, Valor_Venta, Cantidad, Estado, inputStream);
        RepuestoDAO repuDAO = new RepuestoDAO(repuVO);

        switch (opcion) {

            case 1:
               

                if (repuDAO.agregarRegistro()) {
                    
                    request.getRequestDispatcher("consultarRepuesto.jsp").forward(request, response);
                } else {

                    request.getRequestDispatcher("registrarRepuesto.jsp").forward(request, response);
                    request.setAttribute("mensajeError", "¡El Repuesto NO se Registro correctamente verifique El Numero de Serie!");
                }

                break;
            case 2:
                if (repuDAO.actualizarRegistro()) {

                    request.getRequestDispatcher("consultarRepuesto.jsp").forward(request, response);
                } else {
                    request.setAttribute("mensajeError", "¡El Repuesto NO se actualizo correctamente!");
                    request.getRequestDispatcher("actualizarRepuesto.jsp").forward(request, response);

                }

                break;

            case 3:
                repuVO = null;
                repuVO = repuDAO.consultarSerie(No_Serie);
                if (repuVO != null) {
                    request.setAttribute("repuesto", repuVO);

                    request.setAttribute("validacion", "aprobado");
                    request.getRequestDispatcher("consultarRepuesto.jsp").forward(request, response);

                } else {
                    request.setAttribute("mensajeError", "¡El repuesto NO existe!");
                    request.getRequestDispatcher("consultarRepuesto.jsp").forward(request, response);
                }
                break;

            case 4:
                repuVO = repuDAO.consultarId(Id);

                if (repuVO != null) {

                    request.setAttribute("repuesto_id", repuVO);
                    request.getRequestDispatcher("actualizarRepuesto.jsp").forward(request, response);

                } else {
                    request.setAttribute("mensajeError", "¡El Repuesto NO existe!");
                    request.getRequestDispatcher("consultarRepuesto.jsp").forward(request, response);
                }
                break;

            case 5:
                if (repuDAO.eliminarRegistro()) {

                    request.getRequestDispatcher("consultarRepuesto.jsp").forward(request, response);
                } else {

                    request.getRequestDispatcher("consultarRepuesto.jsp").forward(request, response);
                }
                break;
            case 6:
                if (repuDAO.reactivarRegistro()) {

                    request.getRequestDispatcher("consultarRepuesto.jsp").forward(request, response);
                } else {

                    request.getRequestDispatcher("consultarRepuesto.jsp").forward(request, response);
                }
                break;
            case 69:

                repuVO = repuDAO.consultarId(Id);

                if (repuVO != null) {

                    Gson json = new Gson();
                    String rss = json.toJson(repuVO);
                    String respon = "{\"array\": " + rss + "}";

                    PrintWriter out = response.getWriter();
                    System.out.print(respon);
                    out.print(respon);

                }

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

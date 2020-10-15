/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import modeloDAO.Detalles_RepuestoDAO;
import modeloDAO.ReparacionDAO;
import modeloVO.Detalles_RepuestoVO;
import modeloVO.ReparacionVO;

/*import com.google.gson.JsonArray;
import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
import com.google.gson.reflect.TypeToken;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import java.util.Arrays;*/
/**
 *
 * @author jony
 */
@WebServlet(name = "ReparacionControlador", urlPatterns = {"/Reparacion"})
public class ReparacionControlador extends HttpServlet {

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
        String Id_Servicio = request.getParameter("id_servicio");
        String Id_Producto = request.getParameter("id_producto");
        String Fecha_Hora = request.getParameter("fecha");
        String Descripcion = request.getParameter("descripcion");
        String Costos = request.getParameter("costos");
        String Tecnico = request.getParameter("tecnico");

        String repuestosId[] = request.getParameterValues("repuestosid[]");
        String repuestosCantidad[] = request.getParameterValues("repuestoscantidad[]");

   

        /*Reparacion*/
        ReparacionVO repaVO = new ReparacionVO(Id, Id_Servicio, Id_Producto, Fecha_Hora, Descripcion, Costos, Tecnico);
        ReparacionDAO repaDAO = new ReparacionDAO(repaVO);

        /*Detalles_Reparacion*/
        switch (opcion) {
            case 1:
                if (repaDAO.agregarRegistro()) {
                    for (int i = 0; i < repuestosId.length;) {

                      String Id_Reparacion= repuestosId[i];
                      String Cantidad=repuestosCantidad[i];
                        Detalles_RepuestoVO detaVO = new Detalles_RepuestoVO(Id_Reparacion, Cantidad);
                        Detalles_RepuestoDAO detaDAO = new Detalles_RepuestoDAO(detaVO);
                        detaDAO.agregarRegistro();
                         i++;
                    }
                   
                    String respon = "{\"res\": \"si\"}";
                    PrintWriter out = response.getWriter();
                    System.out.print(respon);
                    out.print(respon);

                } else {
                    
                    String respon = "{\"res\": \"no\"}";
                    PrintWriter out = response.getWriter();
                    System.out.print(respon);
                    out.print(respon);

                }

                break;
            case 4:
               repaVO= repaDAO.consultarId(Id);
                if(repaVO != null){
                request.setAttribute("reparacion_id", repaVO);
                    request.getRequestDispatcher("actualizarReparacion.jsp").forward(request, response);
                }else {
                    request.setAttribute("mensajeError", "¡La Reparacion NO existe!");
                    request.getRequestDispatcher("consultaReparacion.jsp").forward(request, response);
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

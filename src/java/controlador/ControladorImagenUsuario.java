package controlador;

import util.Conexion;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 *
 * @author Yeison
 */
public class ControladorImagenUsuario extends HttpServlet {

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
        Conexion con = new Conexion();//Conectar la data base
        PreparedStatement puente = null;
        CallableStatement puenteps = null;      //Para que no sea vulnerable a inyyecion de code, lo asegura
        ResultSet mensajero = null;                  //Encargado de las consultas

        String sql;                                  //Permite manejar consultas
        int Idu = Integer.parseInt(request.getParameter("idu"));
        byte[] h = null;
        response.setContentType("image/png");
        try {
            /* sql = "CALL consultar_Repuesto_Img (?) ";*/
            sql = "select Imagen from usuario where Id=" + Idu;
            Connection conexion = con.obtenerConexion(); //se llama el metodo conexion porque este no pasa el constructor
            puente = conexion.prepareStatement(sql);
            /*puenteps.setInt(1, Ids);*/
            mensajero = puente.executeQuery();//execute query para consultas
            while (mensajero.next()) {
                h = mensajero.getBytes(1);
            }
            int tan = h.length;
            if (tan != 0) {
                InputStream bos = new ByteArrayInputStream(h);
                int tamanoInput = bos.available();
                byte[] datosImagen = new byte[tamanoInput];
                bos.read(datosImagen, 0, tamanoInput);
                System.out.println(tamanoInput);

                response.getOutputStream().write(datosImagen);
                bos.close();
                con.cerrarConexion();
            } else {
                PrintWriter out;
                out = response.getWriter();
                response.setContentType("text/html");
                out.println("<img src='http://localhost:27553/si_la_bodega/assets/img/no_image.png'>");

            }
            /*response.encodeURL("");*/

        } catch (Exception e) {
            System.out.println(e.getMessage());
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

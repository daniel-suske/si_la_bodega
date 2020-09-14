<%-- 
    Document   : Usuarios
    Created on : 17-ago-2020, 23:49:09
    Author     : Yeison
--%>

<%@page import="modeloDAO.FacturaDAO"%>
<%@page import="modeloVO.FacturaVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modeloDAO.UsuarioDAO"%>
<%@page import="modeloVO.UsuarioVO"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="dash1.jsp" %>






        <!-- AQUI VA EL contenido-->

        <div class="content-wrapper">

              <div class="content">
                  <form  class="form" role="form" method="post" action="Factura" autocomplete="off">
             <div class="form-group row">
                 <label class="col-lg-3 col-form-label form-control-label">Fecha de Factura :</label>
                        <div class="col-lg-9">
                            <input  class="form-control" type="date" name="textFecha" id="fecha">
                        </div>
             </div>
                      <div class="form-group row">
                        <label class="col-lg-3 col-form-label form-control-label">Servicio:</label>
                        
                        <div class="col-lg-9">
                        <input class="form-control"type="text" name="textServi">
                        </div>
                      </div>
                      <div class="form-group row">
                        <label class="col-lg-3 col-form-label form-control-label">Tipo de Pago:</label>
                        <div class="col-lg-9">
                        <input class="form-control" type="text" name="textTipPago">
                        </div>
                      </div>
                      <div class="form-group row">
                        <label class="col-lg-3 col-form-label form-control-label">Valor Total:</label>
                        <div class="col-lg-9">
                        <input class="form-control" type="text" name="textVaPago">
                        </div>
                      </div>
                      <div class="form-group row">
                        <label class="col-lg-3 col-form-label form-control-label">Garantia:</label>
                        <div class="col-lg-9">
                        <input class="form-control"type="text" name="textGarantia">
                        </div>
                      </div>
                       <div class="form-group row">
                           <label class="col-lg-3 col-form-label form-control-label">Recibe:</label>
                            <div class="col-lg-9">
                        <select name="textRecibe"  class="form-control form-control-lg">
                            <option value=""> Seleccione...</option>
                            <%
                                UsuarioDAO usuDAO = new UsuarioDAO();
                                for (UsuarioVO usuVO : usuDAO.listarE()) {

                            %>
                            <option value="<%= usuVO.getId()%>"> <%= usuVO.getNombres()%></option>
                            <%
                                }
                            %>
                        </select>
                            </div>

                       </div>
                   
                  <div class="form-group row">
                  <div class="col-lg-12 text-center">
                      <button class="btn btn-success col-lg-3 col-form-label form-control-label">Registrar</button>
            <input type="hidden" value="1" name="opcion">
                 
            
        </form>
              <div style="color:Red">
            <%if (request.getAttribute("mensajeFallido") != null) {%>
            ${mensajeFallido}
            <% } else { %>
            ${mensajeExitoso}
            <% } %>
        </div>
            </div>
                  </div>
   
       
  
    </center>

    </body>
              </div>
                
               </div>   

        <!-- Termina aqui -->
        <%@include file="dash2.jsp" %>
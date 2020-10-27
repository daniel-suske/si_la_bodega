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

<title> Actualizar Factura</title>
                <!-- AQUI VA EL contenido-->
               

                <div class="content-wrapper">
                    <main class="container mb-5">
                        <div class="row">
                            <h1 class="col-12 d-flex justify-content-center p-4 btn-secondary w-100">Actualizar Factura</h1>
                        </div>
                        <section class="row mt-5">
                            <div class="card w-100  m-auto">
                                <div class="card-header container ">
                                    <h2 class="m-auto"> Factura</h2>
                                </div>      
                                
         
                    <div class="card-body">
                        <form class="form" role="form" method="post" action="Factura" autocomplete="off">
                                <%  FacturaVO faVO = (FacturaVO) request.getAttribute("Factura");
                                    if (faVO != null) {%>
                                    <div class="form-group row">



                                        <label class="col-lg-3 col-form-label form-control-label">Fecha de Factura:</label>
                                        <div class="col-lg-9">
                                            <input  class="form-control" type="date" name="textFecha" value="<%=faVO.getFecha()%>">
                                        </div>
                                    </div>
                                    <div class="form-group row">

                                        <label class="col-lg-3 col-form-label form-control-label">Servicio:</label>
                                        <div class="col-lg-9">
                                            <input class="form-control"type="number" name="textservicio" value="<%=faVO.getServicio()%>">
                                        </div>
                                    </div>
                                    <div class="form-group row">

                                        <label class="col-lg-3 col-form-label form-control-label">Tipo Pago:</label>
                                        <div class="col-lg-9">
                                            <input class="form-control" type="text" name="textTipPago" value="<%=faVO.getTipo_Pago()%>">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-lg-3 col-form-label form-control-label">Valor Total:</label>
                                        <div class="col-lg-9">
                                            <input class="form-control" type="text" name="textVaPago" value="<%=faVO.getValor_Total()%>">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-lg-3 col-form-label form-control-label">Garantia:</label>
                                        <div class="col-lg-9">
                                            <input class="form-control"type="text" name="textGarantia" value="<%=faVO.getGarantia()%>">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-lg-3 col-form-label form-control-label"> Recibe:</label>
                                        <div class="col-lg-9">
                                           
                                            <select name="textRecibe"  class="form-control form-control-lg">
                                                <option value=""> Seleccione...</option>
                                                <%
                                                    UsuarioDAO usuDAO = new UsuarioDAO();
                                                    for (UsuarioVO usuVO : usuDAO.listarE()) {
                                                        String a = faVO.getRecibe();
                                                        String b = usuVO.getId();
                                                        if (a.equals(b)) {

                                                %>
                                                <option value="<%= usuVO.getId()%>" selected> <%= usuVO.getNombres()%></option>
                                                <%
                                                    }else{
                                                %>
                                                
                                                
                                                  <option value="<%= usuVO.getId()%>" > <%= usuVO.getNombres()%></option>
                                                <%
                                                    }}
                                                %>
                                            </select>

                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <div class="col-lg-12 text-center">
                                            <button class="btn btn-success col-lg-3 col-form-label form-control-label">Actualizar</button>
                                            <input type="hidden" value="3" name="opcion">
                                            <input type="hidden" value="<%=faVO.getId()%>" name="textId">
                                        </div>
                                    </div>

                                </form>
                    </div>
                            </div>
                                        
                        </section>
                    </main>
                
                                       
                                        <center>
                                <div style="color:Red">
                                    <%if (request.getAttribute("mensajeFallido") != null) {%>
                                    ${mensajeFallido}
                                    <% } else { %>
                                    ${mensajeExitoso}
                                    <% } %>
                                </div>
                                        </center>
                                </div>
                                <%} else {%>

                                <h1>No hay datos a actualizar </h1>
                                <a href="consultarFactura.jsp" class="text-white btn btn-danger">Volver </a>
                                <%}%>

                         
                       
                  

                <!-- Termina aqui -->
                <%@include file="dash2.jsp" %>

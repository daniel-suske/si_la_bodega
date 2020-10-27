<%-- 
    Document   : actualizarProducto
    Created on : 17/09/2020, 01:57:36 PM
    Author     : Patiño Sauarez
--%>
<%@page import="modeloVO.ProductoVO" %>
<%@page import="modeloDAO.ProductoDAO" %>
<%@page import="modeloDAO.EstadoDAO" %>
<%@page import="modeloVO.EstadoVO" %>


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
                        <form class="form" role="form" method="post" action="Producto" autocomplete="off">
                                <%  ProductoVO PaVO = (ProductoVO) request.getAttribute("Producto");
                                    if (PaVO != null) {%>
                                    <div class="form-group row">

                                        <label class="col-lg-3 col-form-label form-control-label">Tipo de Producto:</label>
                                        <div class="col-lg-9">
                                            <input class="form-control"type="text" name="textProducto" value="<%=PaVO.getTipo_Producto()%>">
                                        </div>
                                    </div>
                                    <div class="form-group row">

                                        <label class="col-lg-3 col-form-label form-control-label">Marca:</label>
                                        <div class="col-lg-9">
                                            <input class="form-control" type="text" name="textmarca" value="<%=PaVO.getMarca()%>">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-lg-3 col-form-label form-control-label">Modelo:</label>
                                        <div class="col-lg-9">
                                            <input class="form-control" type="text" name="textModelo" value="<%=PaVO.getModelo()%>">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-lg-3 col-form-label form-control-label">Numero de Serie :</label>
                                        <div class="col-lg-9">
                                            <input class="form-control"type="text" name="textSerie" value="<%=PaVO.getNumero_Serie()%>">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-lg-3 col-form-label form-control-label"> Estado:</label>
                                        <div class="col-lg-9">
                                           
                                            <select name="textestado"  class="form-control form-control-lg">
                                          
                                                <%
                                                   EstadoDAO estDAO = new EstadoDAO();
                                                   for (EstadoVO estVO : estDAO.listarEA()) {
                                                        String a = estVO.getNombre();
                                                        String b = estVO.getId();
                                                        if (a.equals(b)) {

                                                %>
                                                <option value="<%= estVO.getId()%>" selected> <%= estVO.getNombre()%></option>
                                                <%
                                                    }else{
                                                %>
                                                  <option value="<%= estVO.getId()%>" > <%= estVO.getNombre()%></option>
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
                                            <input type="hidden" value="<%=PaVO.getId()%>" name="Id">
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
                                <a href="consultarProducto.jsp" class="text-white btn btn-danger">Volver </a>
                                <%}%>

                         
                       
                  

                <!-- Termina aqui -->
                <%@include file="dash2.jsp" %>

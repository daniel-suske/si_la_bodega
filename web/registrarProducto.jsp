<%-- 
    Document   : registrarProducto
    Created on : 17/09/2020, 01:57:11 PM
    Author     : Patiño Sauarez
--%>
<%@page import="modeloDAO.ProductoDAO"%>
<%@page import="modeloVO.ProductoVO"%>
<%@page import="modeloVO.EstadoVO" %>
<%@page import="modeloDAO.EstadoDAO" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="dash1.jsp" %>

   
        <title>Registrar Producto</title>
        <!--Contenido-->
        <div class="content-wrapper">
            <main class="container mb-5">
                <div class="row">
                    <h1 class="col-12 d-flex justify-content-center p-4 btn-secondary w-100">Registrar Porducto</h1>
                </div>
                <section class="row mt-5">
                    <div class="card w-100 m-auto">
                        <div class="card-header container">
                            <h2 class="m-90">Producto</h2>
                        </div>
                        
                        <div class="card-body">
                            <form  class="form" role="form" action="Producto" method="post" autocomplete="off" >
                               <div class="form-group row m-90" id="grupo__fecha_compra">
                 <label class="col-lg-3 col-form-label form-control-label">Tipo de Producto :</label>
                        <div class="col-lg-9">
                            <input  class="form-control" type="text" name="textProducto" id="fecha" placeholder="Ejem:computador">
                            <i class="formulario__validacion-estado far fa-times-circle"></i>
                        </div>
             </div>
                      <div class="form-group row">
                        <label class="col-lg-3 col-form-label form-control-label">Marca:</label>
                        
                        <div class="col-lg-9">
                            <input class="form-control" type="text" name="textmarca" id="Servicio" placeholder="Ejem:LG">
                            <i class="formulario__validacion-estado far fa-times-circle"></i>
                        </div>
                      </div>
                      <div class="form-group row">
                        <label class="col-lg-3 col-form-label form-control-label">Modelo:</label>
                        <div class="col-lg-9">
                            <input class="form-control" type="text" name="textModelo" placeholder="Ejem:LG y Version ">
                             <i class="formulario__validacion-estado far fa-times-circle"></i>
                        </div>
                      </div>
                      <div class="form-group row">
                        <label class="col-lg-3 col-form-label form-control-label">Numero de Serie:</label>
                        <div class="col-lg-9">
                            <input class="form-control" type="text" name="textSerie" placeholder="Ejem:A85654b4">
                             <i class="formulario__validacion-estado far fa-times-circle"></i>
                        </div>
                      </div>
                      <div class="form-group row">
                        <label class="col-lg-3 col-form-label form-control-label">Estado:</label>
                        <div class="col-lg-9">
                        <select name="textestado" class="form-control form-control-lg">
                            <option value=""> Estado ...</option>
                            <%
                                EstadoDAO estDAO = new EstadoDAO();
                                for (EstadoVO estVO : estDAO.listarEA()) {

                            %>
                            <option value="<%= estVO.getId()%>"> <%= estVO.getNombre()%></option>
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
            
        
        <center>
              <div style="color:Red">
            <%if (request.getAttribute("mensajeFallido") != null) {%>
            ${mensajeFallido}
            <% } else { %>
            ${mensajeExitoso}
            <% } %>
                </center>
                
        </div>
            </div>
                    </div>
                </div>
            </section>
           </main>
        </div>
                     
                               
        <!-- Termina aqui -->
       
               
        
         <%@include file="dash2.jsp" %>
    
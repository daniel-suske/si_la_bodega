<%-- 
    Document   : RegistrarServicio
    Created on : 15-sep-2020, 6:31:45
    Author     : Yeison
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="modeloDAO.UsuarioDAO"%>
<%@page import="modeloVO.UsuarioVO"%>
<%@page import="modeloDAO.EstadoDAO"%>
<%@page import="modeloVO.EstadoVO"%>


<%@include file="dash1.jsp" %>
<link rel="stylesheet" type="text/css" href="assets/css/Servicio.css"/>
<!-- AQUI VA EL contenido-->


<title>Registrar Servicio</title>

                <!-- AQUI VA EL contenido-->
            <div class="content-wrapper">
             
            <main class="container mb-5">
                    <div class="row">
                            <h1 class="col-12 d-flex justify-content-center p-4 btn-primary w-100">Solicitar el Servicio</h1>
                    </div>
                    <section class="row mt-5">
                            <div class="card w-100 m-auto">
                                    <div class="card-header container bg-success">
                                                <h2 class="m-auto">Información del Servicio</h2>
                                    </div>

                                    <div class="card-body">
                                        
                                        <form action="Servicio" method="POST" id="formularioSE">
                                                
                                                    <div class="formulario__grupo" id="grupo__Fecha_P">
                                                        <label for="Fecha_P" class="formulario__label">* Fecha de Solicitud:</label>
                                                        <div class="formulario__grupo-input">
                                                            <i class="formulario__validacion-estado fas fa-exclamation-triangle"></i>
                                                            <input type="date" id="Fecha_P" name="Fecha_P" class="formulario__input select-click" min="2020-01-01" placeholder="Seleccione la fecha correspondiente">
                                                        </div>
                                                        <p class="formulario__input-error">La Fecha es un campo requerido y seleccionelo correctamente</p>
                                                    </div>	
                                                    <div class="formulario__grupo" id="grupo__Descript">
                                                        <i class="formulario__validacion-estado fas fa-exclamation-triangle"></i>
                                                        <label for="Descript" class="formulario__label">* Descripción:</label>
                                                        <div class="formulario__grupo-input">
                                                            <textarea class="formulario__input descript" id="Descript" name="Descript" placeholder="Digite una Descripción de la solicitud"></textarea>
                                                        </div>
                                                        <p class="formulario__input-error">La Descripción no puede ir vacia y por favor lo más claro posible</p>
                                                    </div>   
                                                <div class="formulario">
                                                    <div class="formulario__grupo mr-5" id="grupo__Cliente">
                                                        <label for="Cliente" class="formulario__label">* Cliente:</label>
                                                        <div class="formulario__grupo-input">
                                                            <i class="formulario__validacion-estado fas fa-exclamation-triangle"></i>
                                                            <select id="Cliente" name="Cliente" class="formulario__input select-click">
                                                                    <option value="">Seleccione el Cliente correspondiente...</option>
                                                                    <%
                                                                        UsuarioDAO usuCDAO = new UsuarioDAO();
                                                                        for(UsuarioVO usuVO : usuCDAO.listarC()) {
                                                                            
                                                                    %>
                                                                    <option value="<%= usuVO.getId() %>"> <%= usuVO.getNombres() %></option>
                                                                    <%
                                                                        }
                                                                    %>
                                                            </select>
                                                        </div>
                                                        <p class="formulario__input-error">Debe seleccionar el Cliente correctamente</p>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="formulario__label">Registrado Por:</label>
                                                            <input type="hidden" id="R_Por" name="R_Por" class="form-control is-valid" value="<%= IdU %>">
                                                            <input type="text" class="form-control bg-info text-dark text-center" value="<%= ApellidoU %> <%= NombreU %>" disabled>
                                                    </div>     
                                                </div>           
                                                    <div class="formulario__grupo" id="grupo__Est">
                                                        <label for="Est" class="formulario__label">* Estado</label>
                                                        <div class="formulario__grupo-input">
                                                                <i class="formulario__validacion-estado fas fa-exclamation-triangle"></i>
                                                                <select id="Est" name="Est" class="formulario__input select-click">
                                                                    <option value=""> Seleccione el Estado Correspondiente</option>
                                                                    <%
                                                                        EstadoDAO estDAO = new EstadoDAO();
                                                                        for(EstadoVO estVO : estDAO.listarEA()) {
                                                                            
                                                                    %>
                                                                    <option value="<%= estVO.getId() %>"> <%= estVO.getNombre() %></option>
                                                                    <%
                                                                        }
                                                                    %>
                                                            </select>
                                                        </div>
                                                        <p class="formulario__input-error">Debe seleccionar el Estado Correspondiente</p>
                                                    </div>  
                                                            
                                                <div class="formulario__mensaje" id="formulario__mensaje">
                                                    <p>
                                                    <i class="fas fa-exclamation-triangle"></i> <b>Incorrecto : </b>Porfavor Diligencie los Campos del Formulario Correctamente
                                                    </p>
                                                </div>    
                                                            
                                                <div class="form-group">
                                                    <button type="submit" class="btn btn-success border border-dark btn-lg btn-block mt-5">Registrar Servicio</button>
                                                    <input type="hidden" value="1" name="opcion">
                                                </div>
                                                            
                                                <div style="color:Red">
                                                    <center>
                                                    <%if (request.getAttribute("mensajeFallido") != null) {%>
                                                    ${mensajeFallido}
                                                    <% } %>
                                                    </center>
                                                </div>  
                                                    
                                            </form>
                                                            
                                    </div>
                            </div>
                    </section>
            </main>
 
            </div> 

            <!-- Termina aqui -->

            <script type="text/javascript" src="assets/plugins/jquery/jquery.min.js"></script>
            <script type="text/javascript" src="assets/js/RegistrarServicio.js"></script>
            <script src="https://kit.fontawesome.com/2c36e9b7b1.js" crossorigin="anonymous"></script>
                
            <%@include file="dash2.jsp" %>
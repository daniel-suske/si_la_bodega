<%-- 
    Document   : RegistarUsuarioE
    Created on : 10-sep-2020, 22:41:38
    Author     : Yeison
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="modeloDAO.UsuarioDAO"%>
<%@page import="modeloVO.UsuarioVO"%>
<%@page import="modeloDAO.PerfilDAO"%>
<%@page import="modeloVO.PerfilVO"%>
<%@page import="modeloDAO.EstadoDAO"%>
<%@page import="modeloVO.EstadoVO"%>

<%@include file="dash1.jsp" %>

<link rel="stylesheet" type="text/css" href="assets/css/RUsersE.css"/>
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
<!-- AQUI VA EL contenido-->

<title>Registrar Empleado</title>

                <!-- AQUI VA EL contenido-->
            <div class="content-wrapper">
             
            <main class="container mb-5">
                    <div class="row">
                            <h1 class="col-12 d-flex justify-content-center p-4 btn-primary w-100">Registrar Empleados</h1>
                    </div>
                    <section class="row mt-5">
                            <div class="card w-100">
                                    <div class="card-header container bg-success">
                                            <h2>Información del Usuario</h2>
                                    </div>

                                    <div class="card-body">
                                        
                                        <form action="Usuario" method="POST" class="formularioUE" id="formularioUE">
                                                
                                                <div class="formulario">
                                                    <div class="formulario__grupo mr-5" id="grupo__nombres">
                                                        <label for="nombres" class="formulario__label"> * Nombres:</label>
                                                        <div class="formulario__grupo-input">
                                                            <!--<i class="fas fa-clipboard-check"></i>-->
                                                            <i class="formulario__validacion-estado  fas fa-exclamation-triangle"></i>
                                                            <input type="text" id="nombres" name="nombres" class="formulario__input" placeholder="Digite Nombres Completos">
                                                        </div> 
                                                        <p class="formulario__input-error">Los NOMBRES debe ser de 4 a 50 digitos y solo pueden contener letras</p>
                                                    </div>
                                                    <div class="formulario__grupo" id="grupo__apellidos">
                                                        <label for="apellidos" class="formulario__label">* Apellidos:</label>
                                                        <div class="formulario__grupo-input">
                                                            <i class="formulario__validacion-estado fas fa-exclamation-triangle"></i>
                                                            <input type="text" id="apellidos" name="apellidos" class="formulario__input" placeholder="Digite Apellidos Completos">
                                                        </div>
                                                        <p class="formulario__input-error">Los APELLIDOS debe ser de 4 a 50 digitos y solo pueden contener letras</p>
                                                    </div>  
                                                </div>   
                                                <div class="formulario">
                                                    <div class="formulario__grupo mr-5" id="grupo__documento">
                                                            <label for="documento" class="formulario__label">* Número de Documento:</label>
                                                            <div class="formulario__grupo-input">
                                                                <i class="formulario__validacion-estado fas fa-exclamation-triangle"></i>
                                                                <input type="number" id="documento" name="documento" class="formulario__input" placeholder="Digite Su Número de Documento">
                                                            </div>
                                                            <p class="formulario__input-error">El Número de Documento debe ser de 7 a 11 digitos y solo pueden contener números</p>
                                                    </div>
                                                    <div class="formulario__grupo" id="grupo__tipo">
                                                            <label for="tipo" class="formulario__label">* Tipo de Documento:</label>
                                                            <div class="formulario__grupo-input">
                                                                <i class="formulario__validacion-estado fas fa-exclamation-triangle"></i>
                                                                <select id="tipo" name="tipo" class="formulario__input">
                                                                        <option value="" selected>Seleccione su tipo de Identificación</option>
                                                                        <option value="CC">Cédula de Ciudadanía</option>
                                                                        <option value="CE">Cédula de Extranjería</option>
                                                                        <option value="PA">Pasaporte</option>
                                                                        <option value="RC">Registro Civil</option>
                                                                </select>
                                                            </div> 
                                                            <p class="formulario__input-error">Debe seleccionar el Tipo de Documento</p>
                                                    </div>  
                                                </div> 
                                                    <div class="formulario__grupo" id="grupo__correos">
                                                            <label for="correos" class="formulario__label">* Correo:</label>
                                                            <div class="formulario__grupo-input">
                                                                <i class="formulario__validacion-estado fas fa-exclamation-triangle"></i>
                                                                <input type="email" id="correos" name="correos" class="formulario__input" placeholder="Digite su Correo Correctamente">
                                                            </div>
                                                            <p class="formulario__input-error">El correo debe ser de 7 a 30 digitos y  debe contener un formato de correo</p>
                                                    </div>	
                                                    <div class="formulario__grupo" id="grupo__telefono">
                                                            <label for="telefono" class="formulario__label">* Teléfono:</label>
                                                            <div class="formulario__grupo-input">
                                                                <i class="formulario__validacion-estado fas fa-exclamation-triangle"></i>
                                                                <input type="number" id="telefono" name="telefono" class="formulario__input" placeholder="Digite su Número de Teléfono">
                                                            </div>
                                                            <p class="formulario__input-error">El Teléfono debe ser de 6 a 10 digitos y solo pueden contener números</p>
                                                    </div>
                                                <div class="formulario">
                                                    <div class="formulario__grupo mr-5" id="grupo__barrio">
                                                            <label for="barrio" class="formulario__label">* Barrio:</label>
                                                            <div class="formulario__grupo-input">
                                                                <i class="formulario__validacion-estado fas fa-exclamation-triangle"></i>
                                                                <input type="text" id="barrio" name="barrio" class="formulario__input" placeholder="Digite su Barrio Correspondiente">
                                                            </div>
                                                            <p class="formulario__input-error">El Barrio debe ser de 7 a 100 digitos y puede contener números, letras y símbolos</p>
                                                    </div>
                                                    <div class="formulario__grupo" id="grupo__direccion">
                                                            <label for="direccion" class="formulario__label">* Dirección:</label>
                                                            <div class="formulario__grupo-input">
                                                                <i class="formulario__validacion-estado fas fa-exclamation-triangle"></i>
                                                                <input type="text" id="direccion" name="direccion" class="formulario__input" placeholder="Digite su Dirección Correspondiente">
                                                            </div>
                                                            <p class="formulario__input-error">La Dirección debe ser de 15 a 100 digitos y puede contener números, letras y símbolos</p>
                                                    </div>  
                                                </div>  
                                                    <div class="form-group">
                                                        <label class="formulario__label">Registrado Por:</label>
                                                            <input type="hidden" name="textId_R" class="form-control is-valid" value="<%= IdU %>">
                                                            <input type="text" class="form-control bg-info text-dark text-center" value="<%= ApellidoU %> <%= NombreU %>" disabled>
                                                    </div>
                                                <div class="formulario">
                                                    <div class="formulario__grupo mr-5" id="grupo__textPerfil">
                                                        <label for="textPerfil" class="formulario__label">* Perfil:</label>
                                                        <div class="formulario__grupo-input">
                                                            <i class="formulario__validacion-estado fas fa-exclamation-triangle"></i>
                                                            <select id="textPerfil" name="textPerfil" class="formulario__input">
                                                                    <option value=""> Seleccione el Perfil Correspondiente</option>
                                                                    <%
                                                                        PerfilDAO perfDAO = new PerfilDAO();
                                                                        for(PerfilVO perfVO : perfDAO.listarPE()) {
                                                                            
                                                                    %>
                                                                    <option value="<%= perfVO.getId() %>"> <%= perfVO.getNombre() %></option>
                                                                    <%
                                                                        }
                                                                    %>
                                                            </select>
                                                        </div>
                                                        <p class="formulario__input-error">Debe seleccionar el Tipo de Perfil</p>
                                                    </div>
                                                    <div class="formulario__grupo" id="grupo__textEstado">
                                                         <label for="textEstado" class="formulario__label">* Estado</label>
                                                         <div class="formulario__grupo-input">
                                                             <i class="formulario__validacion-estado fas fa-exclamation-triangle"></i>
                                                             <select id="textEstado" name="textEstado" class="formulario__input">
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
                                                         <p class="formulario__input-error">Debe seleccionar el Tipo de Estado</p>
                                                    </div>  
                                                </div>  
                                                
                                                <div class="formulario__mensaje" id="formulario__mensaje">
                                                    <p>
                                                    <i class="fas fa-exclamation-triangle"></i> <b>Incorrecto : </b>Porfavor Diligencie los Campos del Formulario Correctamente
                                                    </p>
                                                </div>            
                                                             
                                                <div class="form-group">
                                                    <button type="submit" class="btn btn-success border border-dark btn-lg btn-block mt-5">Registrar Empleado</button>
                                                    <input type="hidden" value="2" name="opcion">
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
           
                <%@include file="dash2.jsp" %>
                <!--VALIDACIOONES Y DEMAS -->
                <script type="text/javascript" src="assets/js/Usuario.js"></script>
                <script src="https://kit.fontawesome.com/2c36e9b7b1.js" crossorigin="anonymous"></script>
                
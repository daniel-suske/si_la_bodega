<%-- 
    Document   : RegistrarDatosPE
    Created on : 14-sep-2020, 1:05:52
    Author     : Yeison
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="modeloDAO.UsuarioDAO"%>
<%@page import="modeloVO.UsuarioVO"%>
<%@page import="modeloDAO.Datos_PEDAO"%>
<%@page import="modeloVO.Datos_PEVO"%>

<%@include file="dash1.jsp" %>
<link rel="stylesheet" type="text/css" href="assets/css/Datos_PE.css"/>
<!-- AQUI VA EL contenido-->


<title>Registrar Datos Personales</title>

                <!-- AQUI VA EL contenido-->
            <div class="content-wrapper">
             
            <main class="container mb-5">
                    <div class="row">
                            <h1 class="col-12 d-flex justify-content-center p-4 btn-primary w-100">Registrar Datos del Empleado</h1>
                    </div>
                    <section class="row mt-5">
                            <div class="card w-100 m-auto">
                                     <%if (request.getAttribute("mensajeFallido") != null) {%>
                                     ${mensajeFallido}
                                     <% } else { %>
                                     ${mensajeExitoso}
                                     <% } %>
                                     <div class="card-header container bg-success">
                                            <h2 class="m-auto">¡El Usuario se Registro Correctamente por favor Siga registrando los demas Datos! Información del Empleado</h2>
                                    </div>

                                    <div class="card-body">
                                        
                                        <form action="Datos_PE" method="POST" id="formularioDUE">
                                                
                                                    <div class="form-group">
                                                            <label>Empleado Correspondiente:</label>
                                                             <%
                                                               String name = "", id = "";
                                                               Datos_PEDAO datDAO = new Datos_PEDAO();
                                                               name = datDAO.consultarUltimoEmpleado();
                                                             %>
                                                             <select id="Id_Empleado" name="Id_Empleado" class="form-control form-control-lg bg-primary text-light">
                                                                 <option value="<%= id = datDAO.iduse %>"><%= name %></option>
                                                             </select>
                                                    </div>
                                                    <div class="formulario__grupo" id="grupo__Fecha_N">
                                                        <label for="Fecha_N" class="formulario__label">* Fecha de Nacimiento:</label>
                                                        <div class="formulario__grupo-input">
                                                            <i class="formulario__validacion-estado fas fa-exclamation-triangle"></i>
                                                            <input type="date" id="Fecha_N" name="Fecha_N" max="2002-09-16" class="formulario__input select-click" placeholder="Digite su Fecha de Nacimiento">
                                                        </div>
                                                        <p class="formulario__input-error">La Fecha es un campo requerido y seleccionelo correctamente</p>
                                                    </div>   

                                                    <div class="formulario__grupo" id="grupo__Estado_C">
                                                        <label for="Estado_C" class="formulario__label">* Estado Civil:</label>
                                                        <div class="formulario__grupo-input">
                                                            <i class="formulario__validacion-estado fas fa-exclamation-triangle"></i>
                                                            <select id="Estado_C" name="Estado_C" class="formulario__input select-click">
                                                                    <option value="" selected>Seleccione su Estado Civil</option>
                                                                    <option value="SO">Solter@</option>
                                                                    <option value="CA">Casad@</option>
                                                            </select>
                                                        </div>   
                                                        <p class="formulario__input-error">Debe seleccionar el Estado Civil Actual</p>
                                                    </div>  
 
                                                    <div class="formulario__grupo" id="grupo__Eps">
                                                        <label for="Eps" class="formulario__label">* EPS:</label>
                                                        <div class="formulario__grupo-input">
                                                            <i class="formulario__validacion-estado fas fa-exclamation-triangle"></i>
                                                            <input type="text" id="Eps" name="Eps" class="formulario__input" placeholder="Digite su EPS Actualmente">
                                                        </div>
                                                        <p class="formulario__input-error">La EPS debe ser de 4 a 50 digitos y puede contener letras, números y signos</p>
                                                    </div>	
                                                    <div class="formulario__grupo" id="grupo__Arl">
                                                        <label for="Arl" class="formulario__label">* ARL:</label>
                                                        <div class="formulario__grupo-input">
                                                            <i class="formulario__validacion-estado fas fa-exclamation-triangle"></i>
                                                            <input type="text" id="Arl" name="Arl" class="formulario__input" placeholder="Digite su ARL Actualmente">
                                                        </div>
                                                        <p class="formulario__input-error">El ARL debe ser de 4 a 50 digitos y puede contener letras, números y signos</p>
                                                    </div>
                                                    <div class="formulario__grupo" id="grupo__Fondo_P">
                                                        <label for="Fondo_P" class="formulario__label">* Fondo Pensiones:</label>
                                                        <div class="formulario__grupo-input">
                                                            <i class="formulario__validacion-estado fas fa-exclamation-triangle"></i>
                                                            <input type="text" id="Fondo_P" name="Fondo_P" class="formulario__input" placeholder="Digite su Fondo de Pensiones Actualmente">
                                                        </div>
                                                        <p class="formulario__input-error">El Fondo de Pensiones debe ser de 4 a 50 digitos y puede contener letras, números y signos</p>
                                                    </div>

                                                    <div class="formulario__grupo" id="grupo__Nivel_E">
                                                        <label for="Nivel_E" class="formulario__label">* Nivel de Educación:</label>
                                                        <div class="formulario__grupo-input">
                                                            <i class="formulario__validacion-estado fas fa-exclamation-triangle"></i>
                                                            <select id="Nivel_E" name="Nivel_E" class="formulario__input select-click">
                                                                    <option value="" selected>Seleccione su Nivel de Escolaridad</option>
                                                                    <option value="BA">Basico</option>
                                                                    <option value="ME">Medio</option>
                                                                    <option value="SU">Superior</option>
                                                            </select>
                                                        </div>
                                                        <p class="formulario__input-error">Debe seleccionar su Nivel de Educación</p>
                                                    </div>
                                                    <div class="formulario__grupo" id="grupo__Exp">
                                                        <label for="Exp" class="formulario__label">* Años de Experiencia:</label>
                                                        <div class="formulario__grupo-input">
                                                            <i class="formulario__validacion-estado fas fa-exclamation-triangle"></i>
                                                            <input type="number" id="Exp" name="Exp" class="formulario__input" placeholder="Digite sus Años de Experiencia con su labor">
                                                        </div>
                                                        <p class="formulario__input-error">Los Años de Experiencia no pueden ser mayores a 100</p>
                                                    </div>  
  
                                                <div class="formulario__mensaje" id="formulario__mensaje">
                                                    <p>
                                                    <i class="fas fa-exclamation-triangle"></i> <b>Incorrecto : </b>Porfavor Diligencie los Campos del Formulario Correctamente
                                                    </p>
                                                </div>    
                                                            
                                                <div class="form-group">
                                                    <button type="submit" class="btn btn-success border border-dark btn-lg btn-block mt-5">Registrar Datos</button>
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
                
            <script src="assets/plugins/jquery/jquery.min.js" type="text/javascript"></script>
            <script type="text/javascript" src="assets/js/Datos_PE.js"></script>
            <script src="https://kit.fontawesome.com/2c36e9b7b1.js" crossorigin="anonymous"></script>
                
            <%@include file="dash2.jsp" %>

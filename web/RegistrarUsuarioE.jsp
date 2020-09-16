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
<!-- AQUI VA EL contenido-->


<title>Registrar Empleado</title>

                <!-- AQUI VA EL contenido-->
            <div class="content-wrapper">
             
            <main class="container mb-5">
                    <div class="row">
                            <h1 class="col-12 d-flex justify-content-center p-4 btn-primary w-100">Registrar Empleados</h1>
                    </div>
                    <section class="row mt-5">
                            <div class="card w-100 m-auto">
                                    <div class="card-header container bg-success">
                                            <h2 class="m-auto">Información del Usuario</h2>
                                    </div>

                                    <div class="card-body">
                                        
                                            <form action="Usuario" method="POST">
                                                
                                                <div class="formulario">
                                                    <div class="form-group mr-5">
                                                            <label> * Nombres:</label>
                                                            <input type="text" name="nombres" class="form-control" placeholder="Digite Nombres Completos">
                                                    </div>
                                                    <div class="form-group ">
                                                            <label>Apellidos:</label>
                                                            <input type="text" name="apellidos" class="form-control" placeholder="Digite Apellidos Completos">
                                                    </div>  
                                                </div>   
                                                <div class="formulario">
                                                    <div class="form-group mr-5">
                                                            <label>Número de Documento:</label>
                                                            <input type="number" name="documento" class="form-control" placeholder="Digite Su Número de Documento">
                                                    </div>
                                                    <div class="form-group ">
                                                            <label>Tipo de Documento:</label>
                                                            <select name="tipo" class="form-control form-control-lg">
                                                                    <option value="" selected>Seleccione su tipo de
                                                                        Identificación</option>
                                                                    <option value="CC">Cédula de Ciudadanía</option>
                                                                    <option value="CE">Cédula de Extranjería</option>
                                                                    <option value="PA">Pasaporte</option>
                                                                    <option value="RC">Registro Civil</option>
                                                            </select>
                                                    </div>  
                                                </div> 
                                                    <div class="form-group">
                                                            <label>Correo:</label>
                                                            <input type="email" name="correos" class="form-control" placeholder="Digite su Correo Correctamente">
                                                    </div>	
                                                    <div class="form-group">
                                                            <label>Contraseña:</label>
                                                            <input type="password" name="contrasena" class="form-control" placeholder="Ingrese Contraseña">
                                                    </div>
                                                    <div class="form-group">
                                                            <label>Teléfono:</label>
                                                            <input type="number" name="telefono" class="form-control" placeholder="Digite su Número de Teléfono">
                                                    </div>
                                                <div class="formulario">
                                                    <div class="form-group mr-5">
                                                            <label>Barrio:</label>
                                                                <input type="text" name="barrio" class="form-control" placeholder="Digite su Barrio Correspondiente">
                                                    </div>
                                                    <div class="form-group ">
                                                            <label>Dirección:</label>
                                                            <input type="text" name="direccion" class="form-control" placeholder="Digite su Dirección Correspondiente">
                                                    </div>  
                                                </div>  
                                                    <div class="form-group">
                                                            <label>Registrado Por:</label>
                                                            <select name="textId_R" class="form-control form-control-lg">
                                                                    <option value=""> Seleccione...</option>
                                                                    <%
                                                                        UsuarioDAO usuDAO = new UsuarioDAO();
                                                                        for(UsuarioVO usuVO : usuDAO.listarE()) {
                                                                            
                                                                    %>
                                                                    <option value="<%= usuVO.getId() %>"> <%= usuVO.getNombres() %></option>
                                                                    <%
                                                                        }
                                                                    %>
                                                            </select>
                                                    </div>
                                                <div class="formulario">
                                                    <div class="form-group mr-5">
                                                            <label>Perfil:</label>
                                                                <select name="textPerfil" class="form-control form-control-lg">
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
                                                    <div class="form-group ">
                                                            <label>Estado</label>
                                                                <select name="textEstado" class="form-control form-control-lg">
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
                                                </div>  
                                                            
                                                <div class="form-group">
                                                    <button type="submit" class="btn btn-primary btn-lg btn-block mt-5">Registrar Empleado</button>
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
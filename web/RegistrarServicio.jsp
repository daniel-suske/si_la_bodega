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

<link rel="stylesheet" type="text/css" href="assets/css/RUsersE.css"/>
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
                                    <div class="card-header container">
                                                <h2 class="m-auto">Información del Servicio</h2>
                                    </div>

                                    <div class="card-body">
                                        
                                            <form action="" method="POST">
                                                
   
                                                    <div class="form-group">
                                                            <label>Fecha de Solicitud:</label>
                                                            <input type="date" name="Fecha_P" class="form-control" placeholder="Seleccione la fecha correspondiente">
                                                    </div>	
                                                    <div class="form-group ">
                                                            <label>Descripción:</label>
                                                            <textarea class="form-control" placeholder="Digite una Descripción de la solicitud"></textarea>
                                                    </div>   
                                                <div class="formulario">
                                                    <div class="form-group mr-5">
                                                            <label>Clientes:</label>
                                                            <select name="textId_R" class="form-control form-control-lg">
                                                                    <option value=""> Seleccione...</option>
                                                                    <%
                                                                        UsuarioDAO usuDAO = new UsuarioDAO();
                                                                        for(UsuarioVO usuVO : usuDAO.listarC()) {
                                                                            
                                                                    %>
                                                                    <option value="<%= usuVO.getId() %>"> <%= usuVO.getNombres() %></option>
                                                                    <%
                                                                        }
                                                                    %>
                                                            </select>
                                                    </div>
                                                    <div class="form-group">
                                                            <label>Registrado por:</label>
                                                            <select name="textId_R" class="form-control form-control-lg">
                                                                    <option value=""> Seleccione...</option>
                                                                    <%
                                                                        for(UsuarioVO usuVO : usuDAO.listarE()) {
                                                                            
                                                                    %>
                                                                    <option value="<%= usuVO.getId() %>"> <%= usuVO.getNombres() %></option>
                                                                    <%
                                                                        }
                                                                    %>
                                                            </select>
                                                    </div>     
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
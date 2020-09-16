<%-- 
    Document   : RegistrarDatosPE
    Created on : 14-sep-2020, 1:05:52
    Author     : Yeison
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="modeloDAO.UsuarioDAO"%>
<%@page import="modeloVO.UsuarioVO"%>

<%@include file="dash1.jsp" %>

<link rel="stylesheet" type="text/css" href="assets/css/RUsersE.css"/>
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
                                <!-- <div style="color:Red">
                                        <center>
                                        <%if (request.getAttribute("mensajeFallido") != null) {%>
                                        ${mensajeFallido}
                                        <% } else { %>
                                        ${mensajeExitoso}
                                        <% } %>
                                        </center>
                                    </div>
                                 -->       
                                     <div class="card-header container">
                                            <h2 class="m-auto">Información del Empleado</h2>
                                    </div>

                                    <div class="card-body">
                                        
                                            <form action="Datos_PE" method="POST">
                                                
                                                    <div class="form-group">
                                                            <label>Empleado Correspondiente:</label>
                                                            <select name="Id_Empleado" class="form-control form-control-lg">
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
                                                    <div class="form-group ">
                                                            <label>Fecha de Nacimiento:</label>
                                                            <input type="date" name="Fecha_N" class="form-control" placeholder="Digite su Fecha de Nacimiento">
                                                    </div>   

                                                    <div class="form-group ">
                                                            <label>Estado Civil:</label>
                                                            <select name="Estado_C" class="form-control form-control-lg">
                                                                    <option value="" selected>Seleccione su Estado Civil</option>
                                                                    <option value="SO">Solter@</option>
                                                                    <option value="CA">Casad@</option>
                                                            </select>
                                                    </div>  
 
                                                    <div class="form-group">
                                                            <label>EPS:</label>
                                                            <input type="text" name="Eps" class="form-control" placeholder="Digite su EPS Actualmente">
                                                    </div>	
                                                    <div class="form-group">
                                                            <label>ARL:</label>
                                                            <input type="text" name="Arl" class="form-control" placeholder="Digite su ARL Actualmente">
                                                    </div>
                                                    <div class="form-group">
                                                            <label>Fondo Pensiones:</label>
                                                            <input type="text" name="Fondo_P" class="form-control" placeholder="Digite su Fondo de Pensiones Actualmente">
                                                    </div>

                                                    <div class="form-group mr-5">
                                                            <label>Nivel de Educación:</label>
                                                            <select name="Nivel_E" class="form-control form-control-lg">
                                                                    <option value="" selected>Seleccione su Nivel de Escolaridad</option>
                                                                    <option value="BA">Basico</option>
                                                                    <option value="ME">Medio</option>
                                                                    <option value="SU">Superior</option>
                                                            </select>
                                                    </div>
                                                    <div class="form-group ">
                                                            <label>Años de Experiencia:</label>
                                                            <input type="number" name="Exp" class="form-control" placeholder="Digite sus Años de Experiencia con su labor">
                                                    </div>  
  
                                                            
                                                <div class="form-group">
                                                    <button type="submit" class="btn btn-primary btn-lg btn-block mt-5">Registrar Datos</button>
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




                
<%@include file="dash2.jsp" %>

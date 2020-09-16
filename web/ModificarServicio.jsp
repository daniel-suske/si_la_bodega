<%-- 
    Document   : ModificarServicio
    Created on : 16-sep-2020, 3:10:58
    Author     : Yeison
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="modeloVO.ServicioVO"%>
<%@page import="modeloDAO.ServicioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@include file="dash1.jsp" %>


  <title>Modificación de Servicio</title>



        <!-- AQUI VA EL contenido-->
        
        <div class="content-wrapper">

              <div class="content">
              
                <br>

                <h1 class="text text-dark">Modificación de Servicio</h1>
              
                  <hr>
                  
                  <br><br><br>
                 
                    <div class="row">
                    </div>
                    <section class="row">
                            <div class="card w-100 m-auto">
                                    <div class="card-header container bg-warning">
                                            <h2>Información del Servicio</h2>
                                    </div>
                                
                                <%
                                    ServicioVO serVO = (ServicioVO)request.getAttribute("servicios");
                                    
                                    if (serVO != null) {
                                                                         

                                %>

                                    <div class="card-body">
                                            <form action="Servicio" method="POST">
                                                
                                                <input type="hidden" name="textId" value="<%= serVO.getId()%>"/>
                                                    <div class="form-group">
                                                            <label>Fecha del Pedido:</label>
                                                            <input type="date" name="Fecha_P" class="form-control" placeholder="Fecha Correspondiente" value="<%= serVO.getFecha_Pedido() %>">
                                                    </div>
                                                    <div class="form-group">
                                                            <label>Descripción:</label>
                                                            <textarea name="Descript" class="form-control"><%= serVO.getDescripcion() %></textarea>
                                                    </div>
                                                    <div class="form-group">
                                                            <label>Cliente:</label>
                                                            <input type="textr" name="Cliente" class="form-control" readonly="" placeholder="Ingrese Nombres Completos" value="<%= serVO.getCliente() %>">
                                                    </div> 
                                            
                                                    <div class="form-group">
                                                            <label>Persona que Registro:</label>
                                                            <input type="text" name="R_Por" class="form-control" readonly="" placeholder="Ingrese Nombres Completos" value="<%= serVO.getRegistrado_Por() %>">
                                                    </div> 
                                                    
                                                    <div class="form-group">
                                                            <button class="btn btn-primary">Modificar</button>
                                                            <input type="hidden" name="opcion" value="3"/>
                                                    </div>														
                                            </form>
                                                            
                                                    <%} else { %>



                                                    <% } %>


                                                    <div style="color:Red">
                                                        <center>
                                                            <%if (request.getAttribute("mensajeFallido") != null) {%>
                                                            ${mensajeFallido}
                                                            <% } else { %>
                                                            ${mensajeExitoso}
                                                            <% } %>
                                                        </center>
                                                    </div>  
                                    </div>
                            </div>
                    </section>
    
       </div>
    </div>
   

        <!-- End Modals -->


        <%@include file="dash2.jsp" %>

<%-- 
    Document   : Servicios
    Created on : 17-ago-2020, 23:49:09
    Author     : Yeison
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="modeloDAO.ServicioDAO"%>
<%@page import="modeloVO.ServicioVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="dash1.jsp" %>

<title>Servicios</title>
        <!-- AQUI VA EL contenido-->

        <div class="content-wrapper">

              <div class="content">
              
                <br>

                <h1 class="text text-dark">Gestion de Servicios</h1>
              
                  <hr>
                  <div class="navbar">

                  <br><br><br>
                  <a class="btn btn-success btn-lg text-light" href="RegistrarServicio.jsp">+ Nuevo Registro</a><br>
                  <form class="form-inline form-control-lg" method="post" action="Usuario">
                      <input type="search" class="form-control form-dark form-control-lg" name="text"/>
                      <input type="submit" class="btn-sm btn-primary" value="Buscar"/>
                      <input type="hidden" name="opcion" value="4" />
                  </form>
                  </div>
                  <br><br>
                <div class="card bg-white" style="width: 100%">
                 <div class="card-body "> 
                 <div class="table-responsive">   
                    <table class="table table-bordered table-hover">
                        <thead class="table table-striped table-sm table-hover">   
                            <tr class="thead-dark">
                                <th scope="col" class="text-center">#</th>
                                <th scope="col" class="text-center">Fecha del Pedido</th>
                                <th scope="col" class="text-center">Descripción</th>
                                <th scope="col" class="text-center">Cliente del Servicio</th>
                                <th scope="col" class="text-center">Usuario responsable del Registro</th>
                                <th scope="col" class="text-center">Estado</th>
                                <th scope="col" class="text-center">Acciones</th>
                            </tr>  
                        </thead>
                      <%
                          ServicioVO serVO = new ServicioVO();
                          ServicioDAO serDAO = new ServicioDAO();
                          
                          ArrayList<ServicioVO> listaServicios = serDAO.listarS();
                          
                          for (int i = 0; i < listaServicios.size(); i++) {
                              
                              serVO = listaServicios.get(i);
                              
                      %>
                      <tbody class="table table-striped table-hover text text-dark">
                            <tr>
                                <td scope="row" class="text-center"><%= serVO.getId() %></td>
                                <td class="text-center"><%= serVO.getFecha_Pedido()%></td>
                                 <td class="text-center"><%= serVO.getDescripcion()%></td>
                                 <td class="text-center"><%= serVO.getCliente()%></td>
                                 <td class="text-center"><%= serVO.getRegistrado_Por()%></td>
                                 <td class="text-center"><%= serVO.getEstado()%></td>
                                
                                <td class="text-center">
                                     <form method="post" action="Servicio" class="justify-content-center">
                                            <input type="hidden" name="textId" value="<%= serVO.getId() %>" />
                                            <div class="row justify-content-center">
                                            <button class="btn-sm btn-warning mg-auto"><i><img src="assets/icons/edit.png" width="20px"></i></button>
                                            </div>
                                            <input type="hidden" name="opcion" value="3"/>
                                     </form>
                                </td>
                            </tr>
                      </tbody>
                      <% } %>
                      
                  </table>
                
                <br>
               </div>  
            </div>
            </div>

        <!-- Termina aqui -->
        
        <!-- Modales -->
        

    <!-- Modal para Actualizar -->
    
    
       </div>
    </div>
   

        <!-- End Modals -->

        
        <%@include file="dash2.jsp" %>


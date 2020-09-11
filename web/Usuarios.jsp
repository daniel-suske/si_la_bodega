<%-- 
    Document   : Usuarios
    Created on : 17-ago-2020, 23:49:09
    Author     : Yeison
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="modeloDAO.UsuarioDAO"%>
<%@page import="modeloVO.UsuarioVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="dash1.jsp"%>

      <title>Gestion de Empleados</title>

        <!-- AQUI VA EL contenido-->

        <div class="content-wrapper">

              <div class="content">
              
                <br>
                

                <h1 class="text text-dark">Gestion de Empleados</h1>
              
                  <hr>
                  <div class="navbar ">
                      <a class="btn btn-success btn-lg  text-light" href="RegistrarUsuarioE.jsp">+ Nuevo Registro</a>

                  <br><br><br>
                  <form class="form-inline form-control-lg" method="post" action="Usuario">
                      <input type="search" class="form-control form-dark" name="text"/>
                      <input type="submit" class="btn btn-primary" value="Buscar"/>
                      <input type="hidden" name="opcion" value="4" />
                  </form>
                  </div>
                  <br><br>
                 <div class="table-responsive">   
                    <table class="table table-bordered table-hover">
                        <thead class="table table-striped table-hover responsive nowrap">   
                            <tr>
                                <th scope="col" class="text-center">#</th>
                                <th scope="col" class="text-center">Nombres</th>
                                <th scope="col" class="text-center">Apellidos</th>
                                <th scope="col" class="text-center">Numero de Documento</th>
                                <th scope="col" class="text-center">Tipo de Documento</th>
                                <th scope="col" class="text-center">Correo</th>
                                <th scope="col" class="text-center">Telefono</th>
                                <th scope="col" class="text-center">Barrio</th>
                                <th scope="col" class="text-center">Dirección</th>
                                <th scope="col" class="text-center">Registrado Por</th>
                                <th scope="col" class="text-center">Perfil</th>
                                <th scope="col" class="text-center">Estado</th>
                                <th scope="col" class="text-center">Acciones</th>
                            </tr>  
                        </thead>
                      <%
                          UsuarioVO usuVO = new UsuarioVO();
                          UsuarioDAO usuDAO = new UsuarioDAO();
                          
                          String Id = ""; 
                          
                          ArrayList<UsuarioVO> listaUsuariosE = usuDAO.listarE();
                          
                          for (int i = 0; i < listaUsuariosE.size(); i++) {
                              
                              usuVO = listaUsuariosE.get(i);
                              
                      %>
                      <tbody class="table table-striped table-hover text text-dark">
                            <tr>
                                <td scope="row" class="text-center"><%= usuVO.getId() %></td>
                                <td class="text-center"><%= usuVO.getNombres() %></td>
                                <td class="text-center"><%= usuVO.getApellidos() %></td>
                                <td class="text-center"><%= usuVO.getNumero_Documento() %></td>
                                <td class="text-center"><%= usuVO.getTipo_Documento() %></td>
                                <td class="text-center"><%= usuVO.getCorreo() %></td>
                                <td class="text-center"><%= usuVO.getTelefono() %></td>
                                <td class="text-center"><%= usuVO.getBarrio() %></td>
                                <td class="text-center"><%= usuVO.getDireccion() %></td>
                                <td class="text-center"><%= usuVO.getId_Registrado_Por() %></td>
                                <td class="text-center"><%= usuVO.getPerfil() %></td>
                                <td class="text-center" name="EId"><%= usuVO.getEstado() %></td>
                                <td class="text-center">
                                    <form method="post" action="Usuario">
                                        <input type="hidden" name="textId" value="<%= usuVO.getId() %>" />
                                    <button class="btn btn-warning">Modificar</button>
                                        <input type="hidden" name="opcion" value="3"/>
                                    </form>
                                    |
                                    <%--
                                    if(usuVO.getEstado() == "Activo") { --%>
                                        
                                    <form method="post" action="Usuario">
                                        <input type="hidden" name="textId" value="<%= usuVO.getId() %>" />
                                    <button class="btn btn-danger">Inactivar</button>
                                        <input type="hidden" name="opcion" value="6"/>
                                    </form>
                                    
                                    <br>
                                    <%--<% } else if (usuVO.getEstado() == "Inactivo") { --%>
                                    
                                    <form method="post" action="Usuario">
                                        <input type="hidden" name="textId" value="<%= usuVO.getId() %>" />
                                    <button class="btn btn-secondary">Activar</button>
                                        <input type="hidden" name="opcion" value="7"/>
                                    </form>

                                </td>
                            </tr>
                      </tbody>
                      <% } %>
                      
                  </table>
                      <center>
                   <div style="color:Red">
                        <%if (request.getAttribute("mensajeFallido") != null) {%>
                        ${mensajeFallido}
                        <% } else { %>
                        ${mensajeExitoso}
                        <% } %>
                   </div> 
                      </center>
                <br>
               </div>   

        <!-- Termina aqui -->
        
        <!-- Modales -->
        
  <!--Modal Para Registrar -->

    <!-- Modal para Actualizar -->
    
       </div>
    </div>
   

        <!-- End Modals -->

        <%@include file="dash2.jsp" %>

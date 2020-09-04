<%-- 
    Document   : Perfiles
    Created on : 17-ago-2020, 23:49:09
    Author     : Yeison
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="modeloDAO.PerfilDAO"%>
<%@page import="modeloVO.PerfilVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="dash1.jsp" %>

  <title>Perfiles</title>


        <!-- AQUI VA EL contenido-->

        <div class="content-wrapper">

              <div class="content">
              
                <br>

                <h1 class="text text-dark">Gestion de Perfiles</h1>
              
                  <hr>
                  <div class="navbar ">

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
                        <thead class="table table-striped table-hover">   
                            <tr>
                                <th scope="col" class="text-center">#</th>
                                <th scope="col" class="text-center">Nombre</th>
                                <th scope="col" class="text-center">Acciones</th>
                            </tr>  
                        </thead>
                      <%
                          PerfilVO perfVO = new PerfilVO();
                          PerfilDAO perfDAO = new PerfilDAO();
                          
                          ArrayList<PerfilVO> listaPerfiles = perfDAO.listarP();
                          
                          for (int i = 0; i < listaPerfiles.size(); i++) {
                              
                              perfVO = listaPerfiles.get(i);
                              
                      %>
                      <tbody class="table table-striped table-hover text text-dark">
                            <tr>
                                <td scope="row" class="text-center"><%= perfVO.getId() %></td>
                                <td class="text-center"><%= perfVO.getNombre()%></td>
              
                                <td class="text-center">
                                    <form method="post" action="Perfil">
                                        <input type="hidden" name="textId" value="<%= perfVO.getId() %>" />
                                    <button class="btn btn-warning">Modificar</button>
                                        <input type="hidden" name="opcion" value="2"/>
                                    </form>
                                    |
                                   <!-- <a href="#" class="btn btn-danger">Inactivar</a> -->
                                </td>
                            </tr>
                      </tbody>
                      <% } %>
                      
                  </table>
                
                <br>
               </div>   

        <!-- Termina aqui -->
        
        <!-- Modales -->
        

    <!-- Modal para Actualizar -->
    
    
       </div>
    </div>
   

        <!-- End Modals -->


        <%@include file="dash2.jsp" %>
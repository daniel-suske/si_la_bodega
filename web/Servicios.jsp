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

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="ContentType" content="text/html">
    
    <link rel="stylesheet" type="text/css" href="assets/plugins/DataTables/datatables.min.css"/> 
    
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
                      <input type="search" class="form-control form-dark" name="text"/>
                      <input type="submit" class="btn btn-primary" value="Buscar"/>
                      <input type="hidden" name="opcion" value="4" />
                  </form>
                  </div>
                  <br><br>
                <div class="card bg-white" style="width: 100%">
                 <div class="card-body "> 
                 <div class="basic-data-table">  
                     
                    <table  id="datatable" class="table table-bordered table-hover">
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
                        <tbody class="table table-striped table-hover text text-dark">
                      <%
                          ServicioVO serVO = new ServicioVO();
                          ServicioDAO serDAO = new ServicioDAO();
                          
                          String e = "", a = "";
                          
                          ArrayList<ServicioVO> listaServicios = serDAO.listarS();
                          
                          for (int i = 0; i < listaServicios.size(); i++) {
                              
                              serVO = listaServicios.get(i);
                              
                      %>
                            <tr>
                                <td scope="row" class="text-center"><%= serVO.getId() %></td>
                                <td class="text-center"><%= serVO.getFecha_Pedido()%></td>
                                 <td class="text-center"><%= serVO.getDescripcion()%></td>
                                 <td class="text-center"><%= serVO.getCliente()%></td>
                                 <td class="text-center"><%= serVO.getRegistrado_Por()%></td>
                                 <%
                                     e = "Activo";
                                     a = "En Proceso";
                                     if(e.equals(serVO.getEstado())) {
                                         
                                 %>
                                 <td class="text-center bg-primary btn-outline-primary"><%= serVO.getEstado()%></td>
                                 
                                 <% } else if(a.equals(serVO.getEstado())){ %>
                                 <td class="text-center btn-outline-warning"><%= serVO.getEstado()%></td>
                                 <% } else { %>
                                 <td class="text-center btn-outline-"><%= serVO.getEstado()%></td>
                                 <% } %>
                                <td class="text-center">
                                     <form method="POST" action="Servicio" class="justify-content-center">
                                            <input type="hidden" name="textId" value="<%= serVO.getId() %>" />
                                            <div class="row justify-content-center">
                                            <button class="btn-sm btn-warning mg-auto"><i><img src="assets/icons/edit.png" width="20px"></i></button>
                                            </div>
                                            <input type="hidden" name="opcion" value="2"/>
                                     </form>
                                </td>
                            </tr>
                      <% } %>
                    </tbody>
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
            </div>
            </div>

        <!-- Termina aqui -->
        
        <!-- Modales -->
        

    <!-- Modal para Actualizar -->
    
    
       </div>
    </div>
   
    <script src="https://unpkg.com/jquery@3.3.1/dist/jquery.min.js"></script>

        <!-- End Modals -->

        
        <%@include file="dash2.jsp" %>

 <!-- Optional JavaScript -->
    <!--, then Popper.js, then Bootstrap JS -->
    <script src="assets/plugins/bootstrap/js/popper.min.js"></script>
    <script src="assets/plugins/bootstrap/js/bootstrap.js"></script>
    
    <script type="text/javascript" src="assets/plugins/DataTables/datatables.min.js"></script>
      
    <script>
        $(document).ready(function(){
            $("#datatable").DataTable({
                language: {
                        "sProcessing": "Procesando ...",
                        "sLengthMenu": "Mostrar _MENU_ registros",
                        "sZeroRecords": "No se encontraron resultados",
                        "sEmptyTable": "Ningún dato disponible en esta tabla",
                        "sInfo": "Mostrando registros del _START_ al _END_ de un total de _TOTAL_ registros",
                        "sInfoEmpty": "Mostrando registros del 0 al 0 de un total de 0 registros",
                        "sInfoFiltered": "(filtrado de un total de _MAX_ registros)",
                        "sSearch": "Buscar:",
                        "sInfoThousands": ",",
                        "sLoadingRecords": "Cargando ...",
                        "oPaginate": {
                            "sFirst": "Primero",
                            "sLast": "Último",
                            "sNext": "Siguiente",
                            "sPrevious": "Anterior"
                        },
                        "oAria": {
                            "sSortAscending": ": Activar para ordenar la columna de manera ascendente",
                            "sSortDescending": ": Activar para ordenar la columna de manera descendente"
                        },
                        "botones": {
                            "copiar": "Copiar",
                            "colvis": "Visibilidad"
                        }
                }
            });
        });
    </script>
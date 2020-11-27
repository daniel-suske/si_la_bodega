<%-- 
    Document   : MiServiciosTEC
    Created on : 24/11/2020, 10:06:52 PM
    Author     : Johan
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="modeloDAO.ServicioDAO"%>
<%@page import="modeloVO.ServicioVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="dash1.jsp" %>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="ContentType" content="text/html">
    
    <link rel="stylesheet" type="text/css" href="assets/css/ListarServicios.css"/>
    <link rel="stylesheet" type="text/css" href="assets/plugins/DataTables/datatables.min.css"/> 
    
    <title>Servicios</title>
        <!-- AQUI VA EL contenido-->

        <div class="content-wrapper">

              <div class="content">
              
                <br>

                <h1 class="text text-dark">Listado de Servicios</h1>
                <br><br>
                
                <div class="card bg-white" style="width: 100%">
                 <div class="card-body "> 
                 <div class="basic-data-table pagination-seperated pagination-seperated-rounded">    
                    <table id="datatable" class="table text-dark table-bordered table-hover text-justify">
                        <thead>   
                            <tr class="thead-dark">
                                <th scope="col" class="text-center">#</th>
                                <th scope="col" class="text-center">Fecha del Pedido</th>
                                <th scope="col" class="text-center">Descripción</th>
                                <th scope="col" class="text-center">Cliente del Servicio</th>
                                <th scope="col" class="text-center">Técnico a Cargo del Servicio</th>
                                <th scope="col" class="text-center">Estado</th>
                                <th scope="col" class="text-center">Acciones</th>
                            </tr>  
                        </thead>
                        <tbody>
                      <%
                          ServicioVO serVO = new ServicioVO();
                          ServicioDAO serDAO = new ServicioDAO();
                          String a = "Activo";
                          String e = "En Proceso";
                          String o = "Finalizado";
                          
                          ArrayList<ServicioVO> listaServicioSTEC = serDAO.listarSTEC(IdU);
                          
                          for (int i = 0; i < listaServicioSTEC.size(); i++) {
                              
                              serVO = listaServicioSTEC.get(i);
                              
                      %>
                            <tr>
                                 <td scope="row"><%= serVO.getId() %></td>
                                 <td><%= serVO.getFecha_Pedido()%></td>
                                 <td><%= serVO.getDescripcion()%></td>
                                 <td><%= serVO.getCliente()%></td>
                                 <td><%= serVO.getRegistrado_Por()%></td>
                                 <%
                                     if(serVO.getEstado().equals(a)) {
                                 %>
                                 <td class="text-center bg-primary text-light"><div class="estatus"><%= serVO.getEstado()%></div></td>
                                 <% } else if(serVO.getEstado().equals(e)) { %>
                                 <td class="text-center bg-warning text-dark"><div class="estatus"><%= serVO.getEstado()%></div></td>
                                 <% } else if(serVO.getEstado().equals(o)) { %>
                                 <td class="text-center bg-success text-dark"><div class="estatus"><%= serVO.getEstado()%></div></td>
                                 <% } %>
                                <td class="text-center">
                                     <form method="POST" action="Servicio" class="justify-content-center">
                                            <input type="hidden" name="textId" value="<%= serVO.getId() %>" />
                                            <div class="row justify-content-center">
                                            <button class="btn-sm btn-warning edit"><i><img src="assets/icons/edit.png" width="20px"></i></button>
                                            </div>
                                            <input type="hidden" name="opcion" value="2"/>
                                     </form>
                                            <a>Reparacion</a>
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
                <a href="javascript:window.print()">Imprimir</a>
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
    <script>
        document.getElementById(`servicio_menu`).classList.add("active");
        document.getElementById(`servicio_menu`).classList.add("expand");
        document.getElementById(`servicio`).classList.add("show");
        document.getElementById(`servicio_tecnico`).classList.add("active");
    </script>
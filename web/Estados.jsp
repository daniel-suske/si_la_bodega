<%-- 
    Document   : Estados
    Created on : 17-ago-2020, 23:49:09
    Author     : Yeison
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="modeloDAO.EstadoDAO"%>
<%@page import="modeloVO.EstadoVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="dash1.jsp" %>

    <link rel="stylesheet" type="text/css" href="assets/plugins/DataTables/datatables.min.css"/> 

    <title>Estados</title>

        <!-- AQUI VA EL contenido-->

        <div class="content-wrapper">

              <div class="content">
              
                <div class="card bg-white justify-content-center">
                    <div class="card-body ">

                        <h1 class="text text-dark">Estados</h1>
                        <hr>
                        
                </div></div>
                  <br><br>
                <div class="card bg-white" style="width: 100%">
                <div class="card-body ">
                 <div class="basic-data-table">   
                     
                    <table id="datatable" class="table table-bordered table-hover table-sm">
                        <thead class="table table-striped table-hover">   
                            <tr class="thead-dark">
                                <th scope="col" class="text-center">#</th>
                                <th scope="col" class="text-center">Nombre</th>
                                <th scope="col" class="text-center">Acciones</th>
                            </tr>  
                        </thead>
                      <tbody class="table table-striped table-hover text text-dark">
                      <%
                          EstadoVO estVO = new EstadoVO();
                          EstadoDAO estDAO = new EstadoDAO();
                          
                          ArrayList<EstadoVO> listaEstados = estDAO.listarE();
                          
                          for (int i = 0; i < listaEstados.size(); i++) {
                              
                              estVO = listaEstados.get(i);
                              
                      %>
                            <tr>
                                <td scope="row" class="text-center"><%= estVO.getId() %></td>
                                <td class="text-center"><%= estVO.getNombre()%></td>
              
                                <td class="text-center">
                                            <div class="row justify-content-center">
                                            <button class="btn-sm btn-warning mg-auto"><i><img src="assets/icons/edit.png" width="20px"></i></button>
                                            </div>
                                </td>
                            </tr>
                      <% } %>
                     </tbody>
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
        document.getElementById(`estado_menu`).classList.add("active");
        document.getElementById(`estado_menu`).classList.add("expand");
        document.getElementById(`estados`).classList.add("show");
        document.getElementById(`estado_gestion`).classList.add("active");
    </script>
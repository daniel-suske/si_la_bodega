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

    <link rel="stylesheet" type="text/css" href="assets/plugins/DataTables/datatables.min.css"/> 
    <title>Clientes</title>


        <!-- AQUI VA EL contenido-->

        <div class="content-wrapper">

              <div class="content">
              
                <br>

                <h1 class="text text-dark">Gestion de Clientes</h1>
              
                  <hr>
                  <div class="navbar ">

                  <br><br><br>
                  <form class="form-inline form-control-lg" method="post" action="Usuario">
                      <input type="search" class="form-control form-dark " name="text"/>
                      <input type="submit" class="btn btn-primary " value="Buscar"/>
                      <input type="hidden" name="opcion" value="4" />
                  </form>
                  </div>
                  <br><br>
                 <div class="card bg-white" style="width: 100%">
                 <div class="card-body "> 
                  <div class="table-responsive">   
                    <table id="datatable" class="table table-bordered table-hover table-sm">
                        <thead class="table table-striped table-hover">   
                            <tr class="thead-dark">
                                <th scope="col" class="text-center">#</th>
                                <th scope="col" class="text-center">Nombres</th>
                                <th scope="col" class="text-center">Apellidos</th>
                                <th scope="col" class="text-center">Numero de Documento</th>
                                <th scope="col" class="text-center">Tipo de Documento</th>
                                <th scope="col" class="text-center">Correo</th>
                                <th scope="col" class="text-center">Telefono</th>
                                <th scope="col" class="text-center">Barrio</th>
                                <th scope="col" class="text-center">Dirección</th>
                                <th scope="col" class="text-center">Perfil</th>
                                <th scope="col" class="text-center">Estado</th>
                                <th scope="col" class="text-center">Acciones</th>
                            </tr>  
                        </thead>
                        <tbody class="table table-striped table-hover text text-dark">
                      <%
                          UsuarioVO usuVO = new UsuarioVO();
                          UsuarioDAO usuDAO = new UsuarioDAO();
                          
                          ArrayList<UsuarioVO> listaUsuariosC = usuDAO.listarC();
                          
                          for (int i = 0; i < listaUsuariosC.size(); i++) {
                              
                              usuVO = listaUsuariosC.get(i);
                              
                      %>
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
                                <td class="text-center"><%= usuVO.getPerfil() %></td>
                                <td class="text-center"><%= usuVO.getEstado() %></td>
                                <td class="text-center">
                                <form method="post" action="Usuario" class="justify-content-center">
                                     <input type="hidden" name="textId" value="<%= usuVO.getId() %>" />
                                      <div class="row justify-content-center">
                                      <button class="btn-sm btn-warning mg-auto"><i><img src="assets/icons/edit.png" width="20px"></i></button>
                                      </div>
                                      <input type="hidden" name="opcion" value="3"/>
                                </form>
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
                   
                   <%@include file="dash2.jsp"%>
  
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
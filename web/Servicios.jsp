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
    <link rel="stylesheet" type="text/css" href="assets/css/ListarServicios.css"/>
    
    <title>Servicios</title>
        <!-- AQUI VA EL contenido-->

        <div class="content-wrapper">

              <div class="content">
              
                <br>

                <h1 class="text text-dark">Gestion de Servicios</h1>
              
                  <hr>
                  <br>
                  <div class="navbar">
                      <a class="btn btn-success btn-lg m-3 text-light" href="RegistrarServicio.jsp">+ Nuevo Registro</a><br>
                  <form class="form-inline" method="POST" action="Servicio">
                      <input type="search" class="form-control form-dark" name="text"/>
                      <input type="submit" class="btn btn-primary" value="Buscar"/>
                      <input type="hidden" name="opcion" value="4" />
                  </form>
                  </div>
                  
                <br><br>
                <div class="card bg-white" style="width: 100%">
                 <div class="card-body "> 
                 <div class="basic-data-table">  
                     
                      
                    <center>
                      <div style="color:Red">
                      <%if (request.getAttribute("mensajeFallido") != null) {%>
                      ${mensajeFallido}
                      <% } else { %>
                      ${mensajeExitoso}
                      <% } %>
                      </div> 
                   </center>
                      <hr>
                            <div>
                              <h1>Servicio</h1>

                            </div>
                          </div>

                          <div class="row">
                              <%
                                ServicioVO serVO = new ServicioVO();
                                ServicioDAO serDAO = new ServicioDAO();

                                String e = "", a = "", o = "";

                                ArrayList<ServicioVO> listaServicios = serDAO.listarS();

                                for (int i = 0; i < listaServicios.size(); i++) {

                                    serVO = listaServicios.get(i);
                              %>  
                            <div class="col-lg-6 col-xl-4">
                               <%
                                     e = "Activo";
                                     a = "En Proceso";
                                     o = "Finalizado";
                                     if(e.equals(serVO.getEstado())) {    
                               %>
                              <div class="card card-default p-4 border-primary bg-primary">
                                  <h2 class="text-dark text-center pb-2">Activo</h2>
                                <%
                                    } else if(a.equals(serVO.getEstado())) {
                                %>
                                <div class="card card-default p-4 border-warning bg-warning">   
                                  <h2 class="text-dark text-center pb-2">En Proceso</h2>
                                <%
                                    } else if(o.equals(serVO.getEstado())) {
                                %>
                                <div class="card card-default p-4 border-success bg-success">
                                  <h2 class="text-dark text-center pb-2">Finlizado</h2>
                                <%
                                    }
                                %>  
                                <a href="javascript:0" class="media text-dark" data-toggle="modal" data-target="#modal-contact">
                                  <img src="assets/img/elements/soporte-servicio.jpg" class="img-ser mr-3 img-fluid rounded" alt="Avatar Image">
                                  <div class="media-body">
                                    <h5 class="mt-0 mb-2 text-dark">Id  <%= serVO.getId() %></h5>
                                    <ul class="list-unstyled">
                                      <li class="d-flex mb-1">
                                        <i class="mdi mdi-map mr-1"></i>
                                        <span><%= serVO.getFecha_Pedido()%></span>
                                      </li>
                                      <li class="d-flex mb-1">
                                        <i class="mdi mdi-email mr-1"></i>
                                        <span><%= serVO.getDescripcion()%></span>
                                      </li>
                                      <li class="d-flex mb-1">
                                        <i class="mdi mdi-phone mr-1"></i>
                                        <span><%= serVO.getCliente()%></span>
                                      </li>
                                    </ul>

                                  </div>
                                </a>
                              </div>
                            </div>
                            <% } %>

                          </div>


                          <!-- Contact Modal -->
                          <div class="modal fade" id="modal-contact" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
                            aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                              <div class="modal-content">
                                <div class="modal-header justify-content-end border-bottom-0">
                                  <button type="button" class="btn-edit-icon" data-dismiss="modal" aria-label="Close">
                                    <i class="mdi mdi-pencil"></i>
                                  </button>
                                  <div class="dropdown">
                                    <button class="btn-dots-icon" type="button" id="dropdownMenuButton" data-toggle="dropdown"
                                      aria-haspopup="true" aria-expanded="false">
                                      <i class="mdi mdi-dots-vertical"></i>
                                    </button>
                                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuButton">
                                      <a class="dropdown-item" href="#">Action</a>
                                      <a class="dropdown-item" href="#">Another action</a>
                                      <a class="dropdown-item" href="#">Something else here</a>
                                    </div>
                                  </div>
                                  <button type="button" class="btn-close-icon" data-dismiss="modal" aria-label="Close">
                                    <i class="mdi mdi-close"></i>
                                  </button>
                                </div>
                                <div class="modal-body pt-0">
                                  <div class="row no-gutters">
                                    <div class="col-md-6">
                                      <div class="profile-content-left px-4">
                                        <div class="card text-center widget-profile px-0 border-0">
                                          <div class="card-img mx-auto rounded-circle">
                                            <img src="assets/img/user/u6.jpg" alt="user image">
                                          </div>
                                          <div class="card-body">
                                            <h4 class="py-2 text-dark">Albrecht Straub</h4>
                                            <p>Albrecht.straub@gmail.com</p>
                                            <a class="btn btn-primary btn-pill btn-lg my-4" href="#">Follow</a>
                                          </div>
                                        </div>
                                        <div class="d-flex justify-content-between ">
                                          <div class="text-center pb-4">
                                            <h6 class="text-dark pb-2">1503</h6>
                                            <p>Friends</p>
                                          </div>
                                          <div class="text-center pb-4">
                                            <h6 class="text-dark pb-2">2905</h6>
                                            <p>Followers</p>
                                          </div>
                                          <div class="text-center pb-4">
                                            <h6 class="text-dark pb-2">1200</h6>
                                            <p>Following</p>
                                          </div>
                                        </div>

                                      </div>
                                    </div>
                                    <div class="col-md-6">
                                      <div class="contact-info px-4">
                                        <h4 class="text-dark mb-1">Contact Details</h4>
                                        <p class="text-dark font-weight-medium pt-4 mb-2">Email address</p>
                                        <p>Albrecht.straub@gmail.com</p>
                                        <p class="text-dark font-weight-medium pt-4 mb-2">Phone Number</p>
                                        <p>+99 9539 2641 31</p>
                                        <p class="text-dark font-weight-medium pt-4 mb-2">Birthday</p>
                                        <p>Nov 15, 1990</p>
                                        <p class="text-dark font-weight-medium pt-4 mb-2">Event</p>
                                        <p>Lorem, ipsum dolor</p>
                                      </div>
                                    </div>
                                  </div>
                                </div>

                              </div>
                            </div>
                          </div>

                          <!-- Add Contact Button  -->
                          <div class="modal fade" id="modal-add-contact" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
                            aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                              <div class="modal-content">
                                <form >
                                  <div class="modal-header px-4">
                                    <h5 class="modal-title" id="exampleModalCenterTitle">Create New Contact</h5>
                                  </div>
                                  <div class="modal-body px-4">

                                    <div class="form-group row mb-6">
                                      <label for="coverImage" class="col-sm-4 col-lg-2 col-form-label">User Image</label>
                                      <div class="col-sm-8 col-lg-10">
                                        <div class="custom-file mb-1">
                                          <input type="file" class="custom-file-input" id="coverImage" required>
                                          <label class="custom-file-label" for="coverImage">Choose file...</label>
                                          <div class="invalid-feedback">Example invalid custom file feedback</div>
                                        </div>
                                      </div>
                                    </div>

                                    <div class="row mb-2">
                                      <div class="col-lg-6">
                                        <div class="form-group">
                                          <label for="firstName">First name</label>
                                          <input type="text" class="form-control" id="firstName" value="Albrecht">
                                        </div>
                                      </div>

                                      <div class="col-lg-6">
                                        <div class="form-group">
                                          <label for="lastName">Last name</label>
                                          <input type="text" class="form-control" id="lastName" value="Straub">
                                        </div>
                                      </div>

                                      <div class="col-lg-6">
                                        <div class="form-group mb-4">
                                          <label for="userName">User name</label>
                                          <input type="text" class="form-control" id="userName" value="Doe">
                                        </div>
                                      </div>

                                      <div class="col-lg-6">
                                        <div class="form-group mb-4">
                                          <label for="email">Email</label>
                                          <input type="email" class="form-control" id="email" value="albrecht.straub@gmail.com">
                                        </div>
                                      </div>

                                      <div class="col-lg-6">
                                        <div class="form-group mb-4">
                                          <label for="Birthday">Birthday</label>
                                          <input type="text" class="form-control" id="Birthday" value="01-10-1993">
                                        </div>
                                      </div>

                                      <div class="col-lg-6">
                                        <div class="form-group mb-4">
                                          <label for="event">Event</label>
                                          <input type="text" class="form-control" id="event" value="Some value for event">
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="modal-footer px-4">
                                    <button type="button" class="btn btn-secondary btn-pill" data-dismiss="modal">Cancel</button>
                                    <button type="button" class="btn btn-primary btn-pill">Save Contact</button>
                                  </div>
                                </form>
                              </div>
                            </div>
                          </div></div>
                      
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
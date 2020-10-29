<%-- 
    Document   : MiServicio.jsp
    Created on : 29-oct-2020, 8:17:39
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
    
    <link rel="stylesheet" type="text/css" href="assets/css/ListarServicios.css"/>
    
    <title>Servicios</title>
        <!-- AQUI VA EL contenido-->

        <div class="content-wrapper">

              <div class="content">
              
                <br>

                <h1 class="text text-dark">Gestion de Servicios</h1>
              
                  <hr>
                  
                <br><br>
                <div class="card bg-white" style="width: 100%">
                 <div class="card-body "> 
                     
                    
                    <center>
                      <div style="color:Red">
                      <%if (request.getAttribute("mensajeFallido") != null) {%>
                      ${mensajeFallido}
                      <% } else { %>
                      ${mensajeExitoso}
                      <% } %>
                      </div> 
                   </center>
                      <h2>Servicios Activos o Iniciados</h2>
                      <hr>

                          <div class="row">
                              <%
                                ServicioVO serVO = new ServicioVO();
                                ServicioDAO serDAO = new ServicioDAO();

                                String e = "", a = "", f = "";

                                ArrayList<ServicioVO> listaServiciosCL = serDAO.listarSCL();

                                for (int i = 0; i < listaServiciosCL.size(); i++) {

                                    serVO = listaServiciosCL.get(i);
                                    
                                     a = "Activo";
                                     e = "En Proceso";
                                     f = "Finalizado";
                                 if (serVO.getEstado().equals(a)) {
                               %>
                            <article class="service bg-primary border-A">
                               <form id="fomularS" class="formil" method="POST" action="Servicio">
                               <input type="hidden" name="textId" value="<%=serVO.getId()%>"/>
                               <button class="linkS" type="submit" data-toggle="modal" data-target="#modal-contact">
                               <input type="hidden" name="opcion" value="4"/>
                               <div class="row-service">
                                   <h2 class="text-light title-service"><%= serVO.getEstado()%></h2>
                                <div class="col-5">
                                  <img src="assets/img/elements/soporte-servicio.jpg" class="primer"/>
                                </div>
                                <div class="col-6">
                                    <ul class="list-unstyled">
                                      <li class="d-flex mb-1 iconi">
                                        <i class="mdi mdi-folder-key mdi-36px mr-3"></i>
                                        <span class="text-id text-light">Id:</span><span class="text-dat-id text-dark mb-2 mr-2 badge badge-pill badge-light"> <%= serVO.getId()%></span>
                                        <input type="hidden" value="<%= serVO.getId()%>"/>
                                      </li> 
                                      <li class="d-flex mb-1 text-dark">
                                        <i class="mdi mdi-calendar-edit mdi-36px mr-3"></i>
                                        <span class="text-dat color-text-a mb-2 mr-2 badge badge-pill badge-light"><%= serVO.getFecha_Pedido()%></span>
                                        <input type="hidden" value="<%= serVO.getFecha_Pedido()%>"/>
                                      </li>
                                      <li class="d-flex mb-1 text-dark">
                                        <i class="mdi mdi-contact-mail mdi-36px mr-3"></i>
                                        <span class="text-dat fondo-text-a"><%= serVO.getCliente()%></span>
                                        <input type="hidden" value="<%= serVO.getCliente()%>"/>
                                      </li>
                                      <li class="d-flex mb-1 text-dark">
                                        <i class="mdi mdi-script-text mdi-36px mr-3"></i>
                                        <span class="text-dat fondo-text-a"><%= serVO.getDescripcion()%></span>
                                        <input type="hidden" value="<%= serVO.getDescripcion()%>"/>
                                        <input type="hidden" value="<%= serVO.getEstado()%>"/>
                                      </li>
                                    </ul>
                                </div>
                                </div>
                               </button>  
                               </form>
                          </article>
                               <% } else if(serVO.getEstado().equals(e)) { %>
                            <article class="service bg-warning border-E">
                               <form id="fomularS" class="formil" method="POST" action="Servicio">
                               <input type="hidden" name="textId" value="<%=serVO.getId()%>"/>
                               <button class="linkS" type="submit" data-toggle="modal" data-target="#modal-contact">
                               <input type="hidden" name="opcion" value="4"/>
                               <div class="row-service">
                                   <h2 class="text-danger  title-service"><%= serVO.getEstado()%></h2>
                                <div class="col-5">
                                  <img src="assets/img/elements/soporte-servicio.jpg" class="primer"/>
                                </div>
                                <div class="col-6 text-dark">
                                    <ul class="list-unstyled">
                                      <li class="d-flex mb-1">
                                        <i class="mdi mdi-folder-key mdi-36px mr-3"></i>
                                        <span class="text-id">Id:</span><span class="text-dat-id text-dark mb-2 mr-2 badge badge-pill badge-light"> <%= serVO.getId()%></span>
                                        <input type="hidden" value="<%= serVO.getId()%>"/>
                                      </li> 
                                      <li class="d-flex mb-1">
                                        <i class="mdi mdi-calendar-edit mdi-36px mr-3"></i>
                                        <span class="text-dat color-text-a mb-2 mr-2 badge badge-pill badge-light"><%= serVO.getFecha_Pedido()%></span>
                                        <input type="hidden" value="<%= serVO.getFecha_Pedido()%>"/>
                                      </li>
                                      <li class="d-flex mb-1">
                                        <i class="mdi mdi-contact-mail mdi-36px mr-3"></i>
                                        <span class="text-dat fondo-text-a"><%= serVO.getCliente()%></span>
                                        <input type="hidden" value="<%= serVO.getCliente()%>"/>
                                      </li>
                                      <li class="d-flex mb-1">
                                        <i class="mdi mdi-script-text mdi-36px mr-3"></i>
                                        <span class="text-dat fondo-text-a"><%= serVO.getDescripcion()%></span>
                                        <input type="hidden" value="<%= serVO.getDescripcion()%>"/>
                                        <input type="hidden" value="<%= serVO.getEstado()%>"/>
                                      </li>
                                    </ul>
                                </div>
                                </div> 
                               </button>  
                               </form>
                          </article>
                                   <% } else if(serVO.getEstado().equals(f)) { %>
                            <article class="service bg-success border-F">
                               <form id="fomularS" class="formil" method="POST" action="Servicio">
                               <input type="hidden" name="textId" value="<%=serVO.getId()%>"/>
                               <button class="linkS" type="submit" data-toggle="modal" data-target="#modal-contact">
                               <input type="hidden" name="opcion" value="4"/>
                               <div class="row-service">
                                   <h2 class="text-dark title-service"><%= serVO.getEstado()%></h2>
                                <div class="col-5">
                                  <img src="assets/img/elements/soporte-servicio.jpg" class="primer"/>
                                </div>
                                <div class="col-6 text-dark">
                                    <ul class="list-unstyled">
                                      <li class="d-flex mb-1">
                                        <i class="mdi mdi-folder-key mdi-36px mr-3"></i>
                                        <span class="text-id">Id:</span><span class="text-dat-id text-dark mb-2 mr-2 badge badge-pill badge-light"> <%= serVO.getId()%></span>
                                        <input type="hidden" value="<%= serVO.getId()%>"/>
                                      </li> 
                                      <li class="d-flex mb-1">
                                        <i class="mdi mdi-calendar-edit mdi-36px mr-3"></i>
                                        <span class="text-dat color-text-a mb-2 mr-2 badge badge-pill badge-light"><%= serVO.getFecha_Pedido()%></span>
                                        <input type="hidden" value="<%= serVO.getFecha_Pedido()%>"/>
                                      </li>
                                      <li class="d-flex mb-1">
                                        <i class="mdi mdi-contact-mail mdi-36px mr-3"></i>
                                        <span class="text-dat fondo-text-a"><%= serVO.getCliente()%></span>
                                        <input type="hidden" value="<%= serVO.getCliente()%>"/>
                                      </li>
                                      <li class="d-flex mb-1">
                                        <i class="mdi mdi-script-text mdi-36px mr-3"></i>
                                        <span class="text-dat fondo-text-a"><%= serVO.getDescripcion()%></span>
                                        <input type="hidden" value="<%= serVO.getDescripcion()%>"/>
                                        <input type="hidden" value="<%= serVO.getEstado()%>"/>
                                      </li>
                                    </ul>
                                </div>
                                </div> 
                               </button>  
                               </form>
                          </article>
                          <% } 
                             } %>
                      </div>
                          

                          <!-- Modal del Servicio -->
                          <div class="modal fade" id="modal-contact" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
                            aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                              <div class="modal-content">
                                <div class="modal-header justify-content-end border-bottom-0">
                                    <form method="POST" action="Servicio" class="justify-content-center">
                                            <input type="hidden" name="textId" value="<%= serVO.getId() %>" />
                                            <div class="btn-sm btn-warning mr-1">
                                            <button><i class="mdi mdi-24px mdi-square-edit-outline"></i></button>
                                            </div>
                                            <input type="hidden" name="opcion" value="2"/>
                                     </form>

                                        <div class="btn-sm btn-info"><span class="">Estado</span><i class="mdi mdi-24px mdi-dots-vertical"></i></div>
   
                                  <button type="button" class="btn-close-icon" data-dismiss="modal" aria-label="Close">
                                      <div class="btn-sm btn-danger"><i class="mdi mdi-24px mdi-close-circle-outline"></i></div>
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
                                            <h4 class="py-2 text-dark">Cliente</h4>
                                            <p>Nombre Both</p>
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
                                        <h4 class="text-dark mb-1">Detalles del Servicio</h4>
                                        <p class="text-dark font-weight-medium pt-4 mb-2">Id</p>
                                        <p>Id Both</p>
                                        <p class="text-dark font-weight-medium pt-4 mb-2">Fecha</p>
                                        <p>Date Both</p>
                                        <p class="text-dark font-weight-medium pt-4 mb-2">Descripción</p>
                                        <p>Descripción Both</p>
                                      </div>
                                    </div>
                                  </div>
                                </div>

                              </div>
                            </div>
                          </div>

                 </div>
               </div>
                      
       </div>
    </div>
                          
        <!-- Termina aqui -->          


 <!-- Optional JavaScript -->
    <!--, then Popper.js, then Bootstrap JS -->
    <script src="assets/plugins/jquery/jquery.min.js" type="text/javascript"></script>
    <script src="https://kit.fontawesome.com/2c36e9b7b1.js" crossorigin="anonymous"></script>
    <%@include file="dash2.jsp"%>
    <script>
        document.getElementById(`servicio_menu`).classList.add("active");
        document.getElementById(`servicio_menu`).classList.add("expand");
        document.getElementById(`servicio`).classList.add("show");
        document.getElementById(`servicio_cliente`).classList.add("active");
    </script>
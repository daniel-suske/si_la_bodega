<%-- 
    Document   : PerfilU
    Created on : 15-oct-2020, 2:21:49
    Author     : Yeison
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="modeloVO.UsuarioVO"%>
<%@page import="modeloDAO.UsuarioDAO"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="assets/css/estilos.css" rel="stylesheet" type="text/css"/>
<%@include file="dash1.jsp" %>


  <title>Mi Perfil</title>

        <!-- AQUI VA EL contenido-->

 <div class="content-wrapper">
        <div class="content">
            <div class="bg-white border rounded">

		<div class="row no-gutters">
			<div class="col-lg-4 col-xl-3">
                            <div class="profile-content-left pt-5 pb-3 px-3 px-xl-5">
                                <div class="card text-center widget-profile px-0 border-0">
                                    <div class="card-img mx-auto rounded-circle">
                                        <img src="ControladorImagenUsuario?idu=<%=IdU%>" onerror="this.src='assets/img/user/usuario.png'" class="image-perfil">
                                    </div>
                                    <div class="card-body">
                                        <h4 class="py-2 text-dark"><%= NombreU %> <%= ApellidoU %></h4>
                                        <p><%= CorreoU %></p>
                                        <a class="btn btn-primary btn-pill btn-lg my-4" href="#"><%= PerfilU %></a>
                                    </div>
                                </div>
                                    
                                <hr class="w-100">
                                <div class="contact-info pt-4">
                                        <h5 class="text-dark mb-1">Información de Contacto</h5>
                                        <p class="text-dark font-weight-medium pt-4 mb-2">Correo Electronico</p>
                                        <p><%= CorreoU %></p>
                                        <p class="text-dark font-weight-medium pt-4 mb-2">Teléfono</p>
                                        <p><%= TelefonoU %></p>
                                        <p class="text-dark font-weight-medium pt-4 mb-2">Fecha de Nacimiento</p>
                                        <p>Nov 15, 1990</p>
                                        <p class="text-dark font-weight-medium pt-4 mb-2">Perfil social</p>
                                        <p class="pb-3 social-button">
                                            <a href="#" class="mb-1 btn btn-outline btn-twitter rounded-circle">
                                                <i class="mdi mdi-twitter"></i>
                                            </a>
                                            <a href="#" class="mb-1 btn btn-outline btn-linkedin rounded-circle">
                                                <i class="mdi mdi-linkedin"></i>
                                            </a>
                                            <a href="#" class="mb-1 btn btn-outline btn-facebook rounded-circle">
                                                <i class="mdi mdi-facebook"></i>
                                            </a>
                                            <a href="#" class="mb-1 btn btn-outline btn-skype rounded-circle">
                                                <i class="mdi mdi-skype"></i>
                                            </a>
                                        </p>
                                </div>
                        </div>
                    </div>
                    <div class="col-lg-8 col-xl-9">
			<div class="profile-content-right py-5">
			<ul class="nav nav-tabs px-3 px-xl-5 nav-style-border" id="myTab" role="tablist">
                            <li class="nav-item">
				<a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Perfil</a>
                            </li>
                            <li class="nav-item">
				<a class="nav-link active" id="settings-tab" data-toggle="tab" href="#settings" role="tab" aria-controls="settings" aria-selected="false">Opciones</a>
                            </li>
			</ul>
                        <div class="tab-content px-3 px-xl-5" id="myTabContent">
			<div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                          <div class="mt-5">
                            <div class="row">
                              <div class="col-xl-4">
                                <div class="media widget-media p-4 bg-white border">
                                  <div class="icon rounded-circle mr-4 bg-primary">
                                    <i class="mdi mdi-account-outline text-white "></i>
                                  </div>
                                  <div class="media-body align-self-center">
                                    <h4 class="text-primary mb-2">5300</h4>
                                    <p>Nuevos Usuarioss</p>
                                  </div>
                                </div>
                              </div>
                              <div class="col-xl-4">
                                <div class="media widget-media p-4 bg-white border">
                                  <div class="icon rounded-circle bg-warning mr-4">
                                    <i class="mdi mdi-cart-outline text-white "></i>
                                  </div>
                                  <div class="media-body align-self-center">
                                    <h4 class="text-primary mb-2">1953</h4>
                                    <p>Ordenes Pedidas</p>
                                  </div>
                                </div>
                              </div>
                              <div class="col-xl-4">
                                <div class="media widget-media p-4 bg-white border">
                                  <div class="icon rounded-circle mr-4 bg-danger">
                                    <i class="mdi mdi-cart-outline text-white "></i>
                                  </div>
                                  <div class="media-body align-self-center">
                                    <h4 class="text-primary mb-2">1450</h4>
                                    <p>Total de Ventas</p>
                                  </div>
                                </div>
                              </div>
                            </div>
                            <div class="row">
                              <div class="col-xl-6"> 
                        <!-- Notification Table -->
                        <div class="card card-default" data-scroll-height="550">
                          <div class="card-header justify-content-between ">
                            <h2>Ultimas Notificaciones</h2>
                            <div>
                                <button class="text-black-50 mr-2 font-size-20"><i class="mdi mdi-cached"></i></button>
                                <div class="dropdown show d-inline-block widget-dropdown">
                                    <a class="dropdown-toggle icon-burger-mini" href="#" role="button" id="dropdown-notification" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-display="static"></a>
                                    <ul class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdown-notification">
                                      <li class="dropdown-item"><a  href="#">Acción</a></li>
                                      <li class="dropdown-item"><a  href="#">Otra acción</a></li>
                                      <li class="dropdown-item"><a  href="#">Something else here</a></li>
                                    </ul>
                                  </div>
                            </div>

                          </div>
                          <div class="card-body slim-scroll">
                            <div class="media pb-3 align-items-center justify-content-between">
                              <div class="d-flex rounded-circle align-items-center justify-content-center mr-3 media-icon iconbox-45 bg-primary text-white">
                                <i class="mdi mdi-cart-outline font-size-20"></i>
                              </div>
                              <div class="media-body pr-3 ">
                                <a class="mt-0 mb-1 font-size-15 text-dark" href="#">New Order</a>
                                <p >Selena has placed an new order</p>
                              </div>
                              <span class=" font-size-12 d-inline-block"><i class="mdi mdi-clock-outline"></i> 10 AM</span>
                            </div>

                            <div class="media py-3 align-items-center justify-content-between">
                              <div class="d-flex rounded-circle align-items-center justify-content-center mr-3 media-icon iconbox-45 bg-success text-white">
                                <i class="mdi mdi-email-outline font-size-20"></i>
                              </div>
                              <div class="media-body pr-3">
                                <a class="mt-0 mb-1 font-size-15 text-dark" href="#">New Enquiry</a>
                                <p >Phileine has placed an new order</p>
                              </div>
                              <span class=" font-size-12 d-inline-block"><i class="mdi mdi-clock-outline"></i> 9 AM</span>
                            </div>


                            <div class="media py-3 align-items-center justify-content-between">
                              <div class="d-flex rounded-circle align-items-center justify-content-center mr-3 media-icon iconbox-45 bg-warning text-white">
                                <i class="mdi mdi-stack-exchange font-size-20"></i>
                              </div>
                              <div class="media-body pr-3">
                                <a class="mt-0 mb-1 font-size-15 text-dark" href="#">Support Ticket</a>
                                <p >Emma has placed an new order</p>
                              </div>
                              <span class=" font-size-12 d-inline-block"><i class="mdi mdi-clock-outline"></i> 10 AM</span>
                            </div>

                            <div class="media py-3 align-items-center justify-content-between">
                              <div class="d-flex rounded-circle align-items-center justify-content-center mr-3 media-icon iconbox-45 bg-primary text-white">
                                <i class="mdi mdi-cart-outline font-size-20"></i>
                              </div>
                              <div class="media-body pr-3">
                                <a class="mt-0 mb-1 font-size-15 text-dark" href="#">New order</a>
                                <p >Ryan has placed an new order</p>
                              </div>
                              <span class=" font-size-12 d-inline-block"><i class="mdi mdi-clock-outline"></i> 10 AM</span>
                            </div>

                            <div class="media py-3 align-items-center justify-content-between">
                              <div class="d-flex rounded-circle align-items-center justify-content-center mr-3 media-icon iconbox-45 bg-info text-white">
                                <i class="mdi mdi-calendar-blank font-size-20"></i>
                              </div>
                              <div class="media-body pr-3">
                                <a class="mt-0 mb-1 font-size-15 text-dark" href="">Comapny Meetup</a>
                                <p >Phileine has placed an new order</p>
                              </div>
                              <span class=" font-size-12 d-inline-block"><i class="mdi mdi-clock-outline"></i> 10 AM</span>
                            </div>

                            <div class="media py-3 align-items-center justify-content-between">
                              <div class="d-flex rounded-circle align-items-center justify-content-center mr-3 media-icon iconbox-45 bg-warning text-white">
                                <i class="mdi mdi-stack-exchange font-size-20"></i>
                              </div>
                              <div class="media-body pr-3">
                                <a class="mt-0 mb-1 font-size-15 text-dark" href="#">Support Ticket</a>
                                <p >Emma has placed an new order</p>
                              </div>
                              <span class=" font-size-12 d-inline-block"><i class="mdi mdi-clock-outline"></i> 10 AM</span>
                            </div>

                            <div class="media py-3 align-items-center justify-content-between">
                              <div class="d-flex rounded-circle align-items-center justify-content-center mr-3 media-icon iconbox-45 bg-success text-white">
                                <i class="mdi mdi-email-outline font-size-20"></i>
                              </div>
                              <div class="media-body pr-3">
                                <a class="mt-0 mb-1 font-size-15 text-dark" href="#">New Enquiry</a>
                                <p >Phileine has placed an new order</p>
                              </div>
                              <span class=" font-size-12 d-inline-block"><i class="mdi mdi-clock-outline"></i> 9 AM</span>
                            </div>

                          </div>
                          <div class="mt-3"></div>
                        </div>
 </div>
            <div class="col-xl-6"> 
                  <!-- To Do list -->
                  <div class="card card-default todo-table" id="todo" data-scroll-height="550">
                    <div class="card-header justify-content-between">
                      <h2>To Do List</h2>
                      <a class="btn btn-primary btn-pill" id="add-task" href="#" role="button"> Add task </a>
                    </div>
                    <div class="card-body slim-scroll">
                      <div class="todo-single-item d-none" id="todo-input">
                        <form >
                          <div class="form-group">
                            <input type="text" class="form-control" placeholder="Enter Todo" autofocus>
                          </div>
                        </form>
                      </div>
                      <div class="todo-list" id="todo-list">
                        <div class="todo-single-item d-flex flex-row justify-content-between finished">
                          <i class="mdi"></i>
                          <span >Finish Dashboard UI Kit update</span>
                          <span class="badge badge-primary">Finished</span>
                        </div>
                        <div class="todo-single-item d-flex flex-row justify-content-between current">
                          <i class="mdi"></i>
                          <span >Create new prototype for the landing page</span>
                          <span class="badge badge-primary">Today</span>
                        </div>
                        <div class="todo-single-item d-flex flex-row justify-content-between ">
                          <i class="mdi"></i>
                          <span > Add new Google Analytics code to all main files </span>
                          <span class="badge badge-danger">Yesterday</span>
                        </div>

                        <div class="todo-single-item d-flex flex-row justify-content-between ">
                          <i class="mdi"></i>
                          <span >Update parallax scroll on team page</span>
                          <span class="badge badge-success">Dec 15, 2018</span>
                        </div>

                        <div class="todo-single-item d-flex flex-row justify-content-between ">
                          <i class="mdi"></i>
                          <span >Update parallax scroll on team page</span>
                          <span class="badge badge-success">Dec 15, 2018</span>
                        </div>
                        <div class="todo-single-item d-flex flex-row justify-content-between ">
                          <i class="mdi"></i>
                          <span >Create online customer list book</span>
                          <span class="badge badge-success">Dec 15, 2018</span>
                        </div>
                        <div class="todo-single-item d-flex flex-row justify-content-between ">
                          <i class="mdi"></i>
                          <span >Lorem ipsum dolor sit amet, consectetur.</span>
                          <span class="badge badge-success">Dec 15, 2018</span>
                        </div>

                        <div class="todo-single-item d-flex flex-row justify-content-between mb-1">
                          <i class="mdi"></i>
                          <span >Update parallax scroll on team page</span>
                          <span class="badge badge-success">Dec 15, 2018</span>
                        </div>
                      </div>
                    </div>
                    <div class="mt-3"></div>
                  </div>
</div>
                              <div class="col-12">
                                <!-- Recent Order Table -->
                                <div class="card card-table-border-none" id="recent-orders">
                                  <div class="card-header justify-content-between">
                                    <h2>Recent Orders</h2>
                                    <div class="date-range-report ">
                                      <span></span>
                                    </div>
                                  </div>
                                  <div class="card-body pt-0 pb-5">
                                    <table class="table card-table table-responsive table-responsive-large" style="width:100%">
                                      <thead>
                                        <tr>
                                          <th>Order ID</th>
                                          <th>Product Name</th>
                                          <th class="d-none d-xl-table-cell">Units</th>
                                          <th class="d-none d-xl-table-cell">Order Date</th>
                                          <th class="d-none d-xl-table-cell">Order Cost</th>
                                          <th>Status</th>
                                          <th></th>
                                        </tr>
                                      </thead>
                                      <tbody>
                                        <tr>
                                          <td>24541</td>
                                          <td>
                                            <a class="text-dark" href=""> Coach Swagger</a>
                                          </td>
                                          <td class="d-none d-xl-table-cell">1 Unit</td>
                                          <td class="d-none d-xl-table-cell">Oct 20, 2018</td>
                                          <td class="d-none d-xl-table-cell">$230</td>
                                          <td>
                                            <span class="badge badge-success">Completed</span>
                                          </td>
                                          <td class="text-right">
                                            <div class="dropdown show d-inline-block widget-dropdown">
                                              <a class="dropdown-toggle icon-burger-mini" href="" role="button" id="dropdown-recent-order1"
                                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-display="static"></a>
                                              <ul class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdown-recent-order1">
                                                <li class="dropdown-item">
                                                  <a href="#">View</a>
                                                </li>
                                                <li class="dropdown-item">
                                                  <a href="#">Remove</a>
                                                </li>
                                              </ul>
                                            </div>
                                          </td>
                                        </tr>
                                        <tr>
                                          <td>24541</td>
                                          <td>
                                            <a class="text-dark" href=""> Toddler Shoes, Gucci Watch</a>
                                          </td>
                                          <td class="d-none d-xl-table-cell">2 Units</td>
                                          <td class="d-none d-xl-table-cell">Nov 15, 2018</td>
                                          <td class="d-none d-xl-table-cell">$550</td>
                                          <td>
                                            <span class="badge badge-warning">Delayed</span>
                                          </td>
                                          <td class="text-right">
                                            <div class="dropdown show d-inline-block widget-dropdown">
                                              <a class="dropdown-toggle icon-burger-mini" href="#" role="button" id="dropdown-recent-order2"
                                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-display="static"></a>
                                              <ul class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdown-recent-order2">
                                                <li class="dropdown-item">
                                                  <a href="#">View</a>
                                                </li>
                                                <li class="dropdown-item">
                                                  <a href="#">Remove</a>
                                                </li>
                                              </ul>
                                            </div>
                                          </td>
                                        </tr>
                                        <tr>
                                          <td>24541</td>
                                          <td>
                                            <a class="text-dark" href=""> Hat Black Suits</a>
                                          </td>
                                          <td class="d-none d-xl-table-cell">1 Unit</td>
                                          <td class="d-none d-xl-table-cell">Nov 18, 2018</td>
                                          <td class="d-none d-xl-table-cell">$325</td>
                                          <td>
                                            <span class="badge badge-warning">On Hold</span>
                                          </td>
                                          <td class="text-right">
                                            <div class="dropdown show d-inline-block widget-dropdown">
                                              <a class="dropdown-toggle icon-burger-mini" href="#" role="button" id="dropdown-recent-order3"
                                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-display="static"></a>
                                              <ul class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdown-recent-order3">
                                                <li class="dropdown-item">
                                                  <a href="#">View</a>
                                                </li>
                                                <li class="dropdown-item">
                                                  <a href="#">Remove</a>
                                                </li>
                                              </ul>
                                            </div>
                                          </td>
                                        </tr>
                                        <tr>
                                          <td>24541</td>
                                          <td>
                                            <a class="text-dark" href=""> Backpack Gents, Swimming Cap Slin</a>
                                          </td>
                                          <td class="d-none d-xl-table-cell">5 Units</td>
                                          <td class="d-none d-xl-table-cell">Dec 13, 2018</td>
                                          <td class="d-none d-xl-table-cell">$200</td>
                                          <td>
                                            <span class="badge badge-success">Completed</span>
                                          </td>
                                          <td class="text-right">
                                            <div class="dropdown show d-inline-block widget-dropdown">
                                              <a class="dropdown-toggle icon-burger-mini" href="#" role="button" id="dropdown-recent-order4"
                                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-display="static"></a>
                                              <ul class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdown-recent-order4">
                                                <li class="dropdown-item">
                                                  <a href="#">View</a>
                                                </li>
                                                <li class="dropdown-item">
                                                  <a href="#">Remove</a>
                                                </li>
                                              </ul>
                                            </div>
                                          </td>
                                        </tr>
                                        <tr>
                                          <td>24541</td>
                                          <td>
                                            <a class="text-dark" href=""> Speed 500 Ignite</a>
                                          </td>
                                          <td class="d-none d-xl-table-cell">1 Unit</td>
                                          <td class="d-none d-xl-table-cell">Dec 23, 2018</td>
                                          <td class="d-none d-xl-table-cell">$150</td>
                                          <td>
                                            <span class="badge badge-danger">Cancelled</span>
                                          </td>
                                          <td class="text-right">
                                            <div class="dropdown show d-inline-block widget-dropdown">
                                              <a class="dropdown-toggle icon-burger-mini" href="#" role="button" id="dropdown-recent-order5"
                                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-display="static"></a>
                                              <ul class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdown-recent-order5">
                                                <li class="dropdown-item">
                                                  <a href="#">View</a>
                                                </li>
                                                <li class="dropdown-item">
                                                  <a href="#">Remove</a>
                                                </li>
                                              </ul>
                                            </div>
                                          </td>
                                        </tr>
                                      </tbody>
                                    </table>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>

                        </div>
	<div class="tab-pane fade show active" id="settings" role="tabpanel" aria-labelledby="settings-tab">

                          <div class="mt-5">
                            
                              <form id="agregar-img" method="POST" action="Usuario" enctype="multipart/form-data">
                                  <div class="form-group">
                                  <label for="Img-Perfil">Imagen:</label>
                                  </div>
                                  <input type="hidden" name="textId" id="textId" value="<%= IdU %>"/>
                                    <div class="custom-file" style="height: 60px; cursor:pointer; ">
                                        <input type="file" class="custom-file-input" accept="image/*"  style="cursor:pointer;" onchange="validateFileType()" multiple="multiple" name="Img-Perfil" id="Img-Perfil" >

                                        <label class="custom-file-label text-justify" for="Img-Perfil" style="border: 1px dashed  #000;">Seleccione o arrastre la imagen</label>
                                        <i class="formulario__validacion-estado far fa-times-circle"></i>
                                    </div>
                                  <input type="hidden" name="opcion" value="13"/>
                                  <button type="submit" for="agregar-img" class="btn btn-success border border-dark btn-block mt-5 mb-5">Agregar</button>
                                  <div style="color:Red">
                                        <%if (request.getAttribute("mensajeFallido") != null) {%>
                                        ${mensajeFallido}
                                        <% } else { %>
                                        ${mensajeExitoso}
                                        <% } %>
                                  </div>  
                            </form>
                            
                            <form action="Usuario" method="POST">
                              <div class="row mb-2">
                                <div class="col-lg-6">
                                  <input type="hidden" name="textId" value="<%= IdU %>"/>
                                  <div class="form-group">
                                    <label for="nombres">Nombres:</label>
                                    <input type="text" class="form-control" name="nombres" id="nombres" value="<%= NombreU %>">
                                  </div>
                                </div>

                                <div class="col-lg-6">
                                  <div class="form-group">
                                    <label for="apellidos">Apellidos:</label>
                                    <input type="text" class="form-control" name="apellidos" id="apellidos" value="<%= ApellidoU %>">
                                  </div>
                                </div>
                              </div>

                              <div class="form-group mb-4">
                                <label for="documento">Número de Documento:</label>
                                <input type="text" class="form-control" name="documento" id="documento" value="<%= NumeroDU %>">
                                <span class="d-block mt-1">Para esta opción debes estra seguro de cambiarlo.</span>
                              </div>

                               <div class="form-group">
                                    <label>Tipo de Documento:</label>
                                    <select name="tipo" class="form-control form-control-lg">
                                    <option value="" selected>Seleccione su tipo de Identificación...</option>
                                    <%
                                        String cc = "CC";
                                        String ce = "CE";
                                        String pa = "PA";
                                        String rc = "RC";

                                        if (cc.equals(TipoDU)) {
                                    %>
                                    <option value="CC" selected>Cédula de Ciudadanía</option>
                                    <option value="CE">Cédula de Extranjería</option>
                                    <option value="PA">Pasaporte</option>
                                    <option value="RC">Registro Civil</option>
                                    <%
                                        } else if(ce.equals(TipoDU)){
                                    %>
                                    <option value="CC">Cédula de Ciudadanía</option>
                                    <option value="CE" selected>Cédula de Extranjería</option>
                                    <option value="PA">Pasaporte</option>
                                    <option value="RC">Registro Civil</option>
                                    <%
                                        }  else if(pa.equals(TipoDU)) {
                                    %>
                                    <option value="CC">Cédula de Ciudadanía</option>
                                    <option value="CE">Cédula de Extranjería</option>
                                    <option value="PA" selected>Pasaporte</option>
                                    <option value="RC">Registro Civil</option>
                                    <%
                                        }  else if(rc.equals(TipoDU)) {
                                    %>
                                    <option value="CC">Cédula de Ciudadanía</option>
                                    <option value="CE">Cédula de Extranjería</option>
                                    <option value="PA" selected>Pasaporte</option>
                                    <option value="RC">Registro Civil</option>
                                    <% } %>
                                    </select>       
                                </div>                                       
                                <div class="form-group">
                                    <label>Correo:</label>
                                    <input type="email" name="correos" class="form-control" placeholder="Ingrese Email" value="<%= CorreoU %>">
                                </div>	
                                <div class="form-group">
                                    <label>Teléfono:</label>
                                    <input type="number" name="telefono" class="form-control" placeholder="Ingrese Nombres Completos" value="<%= TelefonoU %>">
                                </div>
                                <div class="form-group">
                                    <label>Barrio:</label>
                                   <input type="text" name="barrio" class="form-control" placeholder="Ingrese Nombres Completos" value="<%= BarrioU %>">
                                </div>
                                <div class="form-group">
                                    <label>Dirección:</label>
                                    <input type="text" name="direccion" class="form-control" placeholder="Ingrese Nombres Completos" value="<%= DireccionU %>">
                                </div>
                              <div class="d-flex justify-content-end mt-5">
                                <button type="submit" class="btn btn-warning border border-dark btn-lg btn-block mt-5 btn-pill">Modificar</button>
                                <input type="hidden" name="opcion" value="12"/>
                              </div>
                              <div style="color:Red">
                                    <%if (request.getAttribute("mensajeFallido") != null) {%>
                                    ${mensajeFallido}
                                    <% } else { %>
                                    ${mensajeExitoso}
                                    <% } %>
                              </div>
                            </form>
                          </div>
                        </div>
		</div>
	</div>
</div>
</div>
</div>
</div>
</div>

        <!-- End Modals -->
<script>
// Add the following code if you want the name of the file appear on select
$(".custom-file-input").on("change", function() {
  var fileName = $(this).val().split("\\").pop();
  $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
});
</script>
    
<script type="text/javascript">
       function validateFileType(){
           var fileName = document.getElementById("Img-Perfil").value;
           var idxDot = fileName.lastIndexOf(".") + 1;
           var extFile = fileName.substr(idxDot, fileName.length).toLowerCase();
           if (extFile=="jpg" || extFile=="jpeg" || extFile=="png"){
               //TO DO
           }else{
               alert("Solo se Aceptan archivos tipo imagen");
               var filess = document.getElementById("Img-Perfil");
               filess.value="";
           }   
       }
</script>

        <%@include file="dash2.jsp" %>
    <script>
        document.getElementById(`opcionesPU_menu`).classList.add("active");
        document.getElementById(`opcionesPU_menu`).classList.add("expand");
        document.getElementById(`configuracion`).classList.add("show");
        document.getElementById(`opciones_perfilPU`).classList.add("active");
    </script>
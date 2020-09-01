<%-- 
    Document   : Usuarios
    Created on : 17-ago-2020, 23:49:09
    Author     : Yeison
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="modeloDAO.UsuarioDAO"%>
<%@page import="modeloVO.UsuarioVO"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <meta name="description" content="Pagina web de Servicio Tecnico de Reparación de Electrodomesticos, Atendemos desde cualquier lugar. Ofrecemos servicio a domicilio como local tambien aplicando las mejores formas de cumplir nuestra mision.">
  <meta name="keywords" content="Servicio Tecnico de Reparación de Electrodomesticos, Servicio, Reparaciones de electrodomesticos, Reparaciones de electrodomesticos dañados, Servicio Tecnico de electrodomesticos, Electrodomesticos aberiados, Empresa reparadora de electrodomesticos.">
  <meta name="author" content="Grupo-6">


  <title>Empleados</title>

  <!-- GOOGLE FONTS -->
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500|Poppins:400,500,600,700|Roboto:400,500" rel="stylesheet" />
  <link href="https://cdn.materialdesignicons.com/4.4.95/css/materialdesignicons.min.css" rel="stylesheet" />


  <!-- PLUGINS CSS STYLE -->
  <link href="assets/plugins/nprogress/nprogress.css" rel="stylesheet" />
  <link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.css" />
  <link rel="stylesheet" type="text/css" href="assets/plugins/data-tables/datatables.bootstrap4.min.css" />
  <link rel="stylesheet" href="assets/plugins/data-tables/jquery.datatables.min.css" />
  <link rel="stylesheet" href="assets/plugins/data-tables/responsive.datatables.min.css" />

  
  
  <!-- No Extra plugin used -->
  
  
  
  <link href="assets/plugins/jvectormap/jquery-jvectormap-2.0.3.css" rel="stylesheet" />
  
  
  
  <link href="assets/plugins/daterangepicker/daterangepicker.css" rel="stylesheet" />
  
  
  
  <link href="assets/plugins/toastr/toastr.min.css" rel="stylesheet" />
  
  

  <!-- SLEEK CSS -->
  <link id="sleek-css" rel="stylesheet" href="assets/css/sleek.css" />
  <link href="assets/css/estilos.css" rel="stylesheet" />
  <link href="assets/css/users.css" rel="stylesheet"/>
  
        <!--Icono-->
        <link  rel = "apple-touch-icon"  tallas = "57x57"  href = "assets/img/Iconos.ico/apple-icon-57x57.png" > 
        <link  rel = "apple-touch-icon"  tallas = "60x60"  href = "assets/img/Iconos.ico/apple -icon-60x60.png " > 
        <link  rel = " apple-touch-icon "  tamaños = " 72x72 "  href = "assets/img/Iconos.ico/apple-icon-72x72.png " > 
        <link  rel = " apple-touch-icon "  tamaños = "76x76"  href = "assets/img/Iconos.ico/apple-icon-76x76.png" > 
        <link  rel = "apple-touch-icon "  tamaños = " 114x114 "  href = "assets/img/Iconos.ico/apple-icon-114x114.png "> 
        <link  rel = "apple-touch-icon"  tallas = "120x120"  href = "/assets/img/Iconos.ico/apple-icon-120x120.png" > 
        <link  rel = "apple-touch-icon"  tallas = "144x144"  href = "/assets/img/Iconos.ico/apple-icon-144x144.png " > 
        <link  rel = " apple-touch-icon "  tamaños = " 152x152 "  href = "assets/img/Iconos.ico/apple-icon-152x152.png "> 
        <link  rel = " apple-touch-icon "  tamaños = "180x180"  href = "assets/img/Iconos.ico/apple-icon-180x180.png" > 
        <link  rel = "icon"  type = "image / png"  tamaños = "192x192"  href = "assets/img/Iconos.ico/android-icon-192x192.png" > 
        <link  rel = "icon"  type = "image / png"  tamaños = "32x32"  href = "assets/img/Iconos.ico/favicon-32x32.png" > 
        <link  rel = "icon"  type = "image / png"  tallas = "96x96"  href = "assets/img/Iconos.ico/favicon-96x96.png" > 
        <link  rel = "icon"  type = "image / png"  tallas = "16x16"  href = "assets/img/Iconos.ico/favicon-16x16. png "> 
        <link  rel = " manifest " href = "assets/img/Iconos.ico/manifest.json" > 
        <meta  name ="msapplication-TileColor"  content = "#ffffff" > 
        <meta  name = "msapplication-TileImage"  content = "assets/img/Iconos.ico/ms-icon-144x144.png" > 
        <meta  name = "theme-color"  content = "#ffffff" >

  
  
  
</head>


<body class="header-fixed sidebar-fixed sidebar-dark header-light" id="body">
  
  <script>
    NProgress.configure({ showSpinner: false });
    NProgress.start();
  </script>

  
  <div id="toaster"></div>
  

  <div class="wrapper">
    <!-- Github Link -->


            <!--
          ====================================
          ——— LEFT SIDEBAR WITH FOOTER
          =====================================
        -->
        <aside class="left-sidebar bg-sidebar">
          <div id="sidebar" class="sidebar sidebar-with-footer">
            <!-- Aplication Brand -->
            <div class="app-brand">
              <img class="logo" src="assets/img/logo.png">
            </div>
            <!-- begin sidebar scrollbar -->
            <div class="sidebar-scrollbar">

              <!-- sidebar menu -->
              <ul class="nav sidebar-inner" id="sidebar-menu">
                

                
                  <li  class="has-sub active expand" >
                    <a class="sidenav-item-link" href="dashboard.jsp">
                      <i class="mdi mdi-view-dashboard-outline"></i>
                      <span class="nav-text">MENU</span> 
                    </a>

                  </li>
                

                

                
                  <li  class="has-sub" >
                    <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#usuarios"
                      aria-expanded="false" aria-controls="usuarios">
                      <i class="mdi mdi-pencil-box-multiple"></i>
                      <span class="nav-text">USUARIOS</span> <b class="caret"></b>
                    </a>
                    <ul  class="collapse"  id="usuarios"
                      data-parent="#sidebar-menu">
                      <div class="sub-menu">
                        
                        
                          
                            <li >
                              <a class="sidenav-item-link" href="#">
                               
                                <span class="nav-text">Empleados</span> <b class="caret"></b>
                              </a>
  
                            </li>
                          
                        

                        
                        
                          
                            <li >
                              <a class="sidenav-item-link" href="UsuariosC.jsp">
                                <span class="nav-text">Clientes</span> <b class="caret"></b>
                                
                              </a>
                            </li>

  
                            
                            <li >
                              <a class="sidenav-item-link" href="Perfiles.jsp">
                                <span class="nav-text">Perfiles</span> <b class="caret"></b>
                                
                              </a>
                            </li>                            
                          
       
                        
                      </div>
                    </ul>
                  </li>
                

                

                
                  <li  class="has-sub" >
                    <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#components"
                      aria-expanded="false" aria-controls="components">
                      <i class="mdi mdi-folder-multiple-outline"></i>
                      <span class="nav-text">SERVICIOS</span> <b class="caret"></b>
                    </a>
                    <ul  class="collapse"  id="components"
                      data-parent="#sidebar-menu">
                      <div class="sub-menu">
                        
                        
                          
                            <li >
                              <a class="sidenav-item-link" href="Servicios.jsp">
                                <span class="nav-text">Gestion</span>
                                
                              </a>
                            </li>
                          
                        

                        
                        
                          

                                                  

                        
                      </div>
                    </ul>
                  </li>
                

                

                
                  <li  class="has-sub" >
                    <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#icons"
                      aria-expanded="false" aria-controls="icons">
                      <i class="mdi mdi-diamond-stone"></i>
                      <span class="nav-text">Productos</span> <b class="caret"></b>
                    </a>
                    <ul  class="collapse"  id="icons"
                      data-parent="#sidebar-menu">
                      <div class="sub-menu">
                        
                        
                          
                            <li >
                              <a class="sidenav-item-link" href="material-icon.html">
                                <span class="nav-text">Gestion</span>
                                
                              </a>
                            </li>
                          
                        

                        
                        
                          
                          
                        

                        
                      </div>
                    </ul>
                  </li>
                

                

                
                  <li  class="has-sub" >
                    <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#forms"
                      aria-expanded="false" aria-controls="forms">
                      <i class="mdi mdi-email-mark-as-unread"></i>
                      <span class="nav-text">Reparaciones</span> <b class="caret"></b>
                    </a>
                    <ul  class="collapse"  id="forms"
                      data-parent="#sidebar-menu">
                      <div class="sub-menu">
                        
                        
                          
                            <li >
                              <a class="sidenav-item-link" href="basic-input.html">
                                <span class="nav-text">Gestion</span>
                                
                              </a>
                            </li>
                          
                          
                        

                        
                      </div>
                    </ul>
                  </li>
                

                

                
                  <li  class="has-sub" >
                    <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#tables"
                      aria-expanded="false" aria-controls="tables">
                      <i class="mdi mdi-table"></i>
                      <span class="nav-text">Repuestos</span> <b class="caret"></b>
                    </a>
                    <ul  class="collapse"  id="tables"
                      data-parent="#sidebar-menu">
                      <div class="sub-menu">
                        
                        
                          
                            <li >
                              <a class="sidenav-item-link" href="consultarRepuesto.jsp">
                                <span class="nav-text">Inventario de Repuestos</span>
                                
                              </a>
                            </li>
                          
                        
                       
                        
                        
                        <li  class="has-sub" >
                          <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#data-tables"
                            aria-expanded="false" aria-controls="data-tables">
                            <span class="nav-text">Facturas</span> <b class="caret"></b>
                          </a>
                          <ul  class="collapse"  id="data-tables">
                            <div class="sub-menu">
                              
                              <li >
                                <a href="basic-data-table.html">Recientes</a>
                              </li>
                              
                              <li >
                                <a href="responsive-data-table.html">Responsive Data Table</a>
                              </li>
                              
                              <li >
                                <a href="hoverable-data-table.html">Hoverable Data Table</a>
                              </li>
                              
                              <li >
                                <a href="expendable-data-table.html">Expendable Data Table</a>
                              </li>
                              
                            </div>
                          </ul>
                        </li>
                        

                        
                      </div>
                    </ul>
                  </li>
                

                

                
                  <li  class="has-sub" >
                    <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#maps"
                      aria-expanded="false" aria-controls="maps">
                      <i class="mdi mdi-google-maps"></i>
                      <span class="nav-text">Facturas</span> <b class="caret"></b>
                    </a>
                    <ul  class="collapse"  id="maps"
                      data-parent="#sidebar-menu">
                      <div class="sub-menu">
                        
                        
                          
                            <li >
                              <a class="sidenav-item-link" href="consultarFactura.jsp">
                                <span class="nav-text">General</span>
                                
                              </a>
                            </li>
                          
                        

                        
                        
                          
                            <li >
                              <a class="sidenav-item-link" href="vector-map.html">
                                <span class="nav-text">Especificas</span>
                                
                              </a>
                            </li>
                          
                        

                        
                      </div>
                    </ul>
                  </li>
                

                



                

                
                  <li  class="has-sub" >

                    <ul  class="collapse"  id="pages"
                      data-parent="#sidebar-menu">
                      <div class="sub-menu">
                        
                        
                          
                        
                        

                        

                        
                        
                        <li  class="has-sub" >
                          <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#others"
                            aria-expanded="false" aria-controls="others">
                            <span class="nav-text">Others</span> <b class="caret"></b>
                          </a>
                          <ul  class="collapse"  id="others">
                            <div class="sub-menu">
                              
                              <li >
                                <a href="invoice.html">Invoice</a>
                              </li>
                              
                              <li >
                                <a href="404.html">404 Page</a>
                              </li>
                              
                            </div>
                          </ul>
                        </li>
                        

                        
                      </div>
                    </ul>
                  </li>
                

                
                  <li  class="has-sub" >
                    <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#estados"
                      aria-expanded="false" aria-controls="estados">
                      <i class="mdi mdi-table"></i>
                      <span class="nav-text">Estados</span> <b class="caret"></b>
                    </a>
                    <ul  class="collapse"  id="estados"
                      data-parent="#sidebar-menu">
                      <div class="sub-menu">
                        
                    
                      
                        <li >
                          <a class="sidenav-item-link" href="Estados.jsp">
                            <span class="nav-text">Gestion</span>
                            
                          </a>
                        </li>
                    

                    </div>
                    </ul>

                
                  <li  class="has-sub" >
                    <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#documentation"
                      aria-expanded="false" aria-controls="documentation">
                      <i class="mdi mdi-book-open-page-variant"></i>
                      <span class="nav-text">Configuración</span> <b class="caret"></b>
                    </a>
                    <ul  class="collapse"  id="documentation"
                      data-parent="#sidebar-menu">
                      <div class="sub-menu">
                        
                        
                          
                            <li class="section-title">
                              opciones
                            </li>
                          
                        

                        
                        
                          
                            <li >
                              <a class="sidenav-item-link" href="quick-start.html">
                                <span class="nav-text">Usuario</span>
                                
                              </a>
                            </li>
                          
                        

                        
                        
                          
                            <li >
                              <a class="sidenav-item-link" href="customization.html">
                                <span class="nav-text">Personalización</span>
                                
                              </a>
                            </li>
                          
              
                      
                      </div>
                      </ul>
                  </li>     
                      
                        

                        

                        
                       
                          
                        

                        

                

                
              </ul>

            </div>

            <div class="sidebar-footer">
              <hr class="separator mb-0" />
              <div class="sidebar-footer-content">
                <h6 class="text-uppercase">
                  Cpu Uses <span class="float-right">40%</span>
                </h6>
                <div class="progress progress-xs">
                  <div
                    class="progress-bar active"
                    style="width: 40%;"
                    role="progressbar"
                  ></div>
                </div>
                <h6 class="text-uppercase">
                  Memory Uses <span class="float-right">65%</span>
                </h6>
                <div class="progress progress-xs">
                  <div
                    class="progress-bar progress-bar-warning"
                    style="width: 65%;"
                    role="progressbar"
                  ></div>
                </div>
              </div>
            </div>
          </div>
        </aside>


    <div class="page-wrapper">
                <!-- Header -->
          <header class="main-header " id="header">
            <nav class="navbar navbar-static-top navbar-expand-lg">
              <!-- Sidebar toggle button -->
              <button id="sidebar-toggler" class="sidebar-toggle">
                <span class="sr-only">Toggle navigation</span>
              </button>
              <!-- search form -->
              <div class="search-form d-none d-lg-inline-block">
                <div class="input-group">
                  <button type="button" name="search" id="search-btn" class="btn btn-flat">
                    <i class="mdi mdi-magnify"></i>
                  </button>
                  <input type="text" name="query" id="search-input" class="form-control" placeholder="'button', 'chart' etc."
                    autofocus autocomplete="off" />
                </div>
                <div id="search-results-container">
                  <ul id="search-results"></ul>
                </div>
              </div>

              <div class="navbar-right ">
                <ul class="nav navbar-nav">
                  <li class="dropdown notifications-menu">
                    <button class="dropdown-toggle" data-toggle="dropdown">
                      <i class="mdi mdi-bell-outline"></i>
                    </button>
                    <ul class="dropdown-menu dropdown-menu-right">
                      <li class="dropdown-header">Tienes 5 notificaciones</li>
                      <li>
                        <a href="#">
                          <i class="mdi mdi-account-plus"></i> Nuevos Empleados Registrados
                          <span class=" font-size-12 d-inline-block float-right"><i class="mdi mdi-clock-outline"></i> 10 AM</span>
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <i class="mdi mdi-account-remove"></i> Usuarios Inactivados
                          <span class=" font-size-12 d-inline-block float-right"><i class="mdi mdi-clock-outline"></i> 07 AM</span>
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <i class="mdi mdi-chart-areaspline"></i>  Generar Reporte3
                          <span class=" font-size-12 d-inline-block float-right"><i class="mdi mdi-clock-outline"></i> 12 PM</span>
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <i class="mdi mdi-account-supervisor"></i> Nuevos Clientes
                          <span class=" font-size-12 d-inline-block float-right"><i class="mdi mdi-clock-outline"></i> 10 AM</span>
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <i class="mdi mdi-server-network-off"></i> Estado del Servidor
                          <span class=" font-size-12 d-inline-block float-right"><i class="mdi mdi-clock-outline"></i> 05 AM</span>
                        </a>
                      </li>
                      <li class="dropdown-footer">
                        <a class="text-center" href="#"> Visualizar todo </a>
                      </li>
                    </ul>
                  </li>
                  <li class="right-sidebar-in right-sidebar-2-menu">
                    <i class="mdi mdi-settings mdi-spin"></i>
                  </li>
                  <!-- User Account -->
                  <li class="dropdown user-menu">
                    <button href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
                      <img src="assets/img/user/usuario.png" class="user-image" alt="User Image" />
                      <span class="d-none d-lg-inline-block">Nombre</span>
                    </button>
                    <ul class="dropdown-menu dropdown-menu-right">
                      <!-- User image -->
                      <li class="dropdown-header">
                        <img src="assets/img/user/usuario.png" class="img-circle" alt="User Image" />
                        <div class="d-inline-block">
                         Nombre y Apellido <small class="pt-1">Nombre@gmail.com</small>
                        </div>
                      </li>

                      <li>
                        <a href="#">
                          <i class="mdi mdi-account"></i> My Perfil
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <i class="mdi mdi-email"></i> Mensages
                        </a>
                      </li>
                      <li>
                        <a href="#"> <i class="mdi mdi-diamond-stone"></i> Cargos</a>
                      </li>
                      <li class="right-sidebar-in">
                        <a href="javascript:0"> <i class="mdi mdi-settings"></i> Configuración </a>
                      </li>

                      <li class="dropdown-footer">
                        <a href="index.jsp"> <i class="mdi mdi-logout"></i> Cerrar Sesión </a>
                      </li>
                    </ul>
                  </li>
                </ul>
              </div>
            </nav>


          </header>






        <!-- AQUI VA EL contenido-->

        <div class="content-wrapper">

              <div class="content">
              
                <br>
                

                <h1 class="text text-dark">Gestion de Empleados</h1>
              
                  <hr>
                  <div class="navbar ">
                  <a class="btn btn-success btn-lg  text-light" data-toggle="modal" data-target=".bd-example-modal-lg">+ Nuevo Registro</a>

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
                                <th scope="col" class="text-center">Id</th>
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
    <div class="modal fade bd-example-modal-lg  modal-efe" tabindex="-1" role="dialog"
        aria-labelledby="myLargeModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg  modal-efe">

            <div class="modal-content modal-efe">
                <div class="modal-header">

                    
                    <img class="logona" src="assets/img/logo.png" alt="logo">
                    <button type="button"  data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true" class="equis">&times;</span>
                    </button>


                </div>
                <div class="modal-body">
                    <h4 class="modal-title">Registro de Empleados</h4>
                    
                    <form method="post" action="Usuario" class="formulario"> <!-- id="formulario" por Arreglar-->
 
                        <div class="formulario__grupo" id="grupo__nombres">
                            <span>
                                <label for="nombres" class="formulario__label">Nombres:</label>
                                <div class="formulario__grupo-input">
                                    <input type="text" class="formulario__input" name="nombres" id="nombres"
                                        placeholder="Nombre Completo">
                                    <i class="formulario__validacion-estado far fa-times-circle"></i>
                                </div>
                                <p class="formulario__input-error">Los NOMBRES debe ser de 4 a 50 digitos y solo pueden
                                    contener letras</p>
                        </div>

                        <div class="formulario__grupo" id="grupo__apellidos">
                            <label for="apellidos" class="formulario__label">Apellidos:</label>
                            <div class="formulario__grupo-input">
                                <input type="text" class="formulario__input" name="apellidos" id="apellidos"
                                    placeholder="Apellido Completo">
                                <i class="formulario__validacion-estado far fa-times-circle"></i>
                            </div>
                            <p class="formulario__input-error">Los APELLIDOS debe ser de 4 a 50 digitos y solo pueden
                                contener letras</p>
                        </div>

                        <div class="formulario__grupo" id="grupo__tipo">
                            <label for="tipo" class="formulario__label">Tipo de Documento:</label>
                            <div class="formulario__grupo-input">
                                <select name="tipo" id="tipo" class="formulario__input  selects">
                                    <option value="EFE" selected>Seleccione su tipo de
                                        Identificación</option>
                                    <option value="CC">Cédula de Ciudadanía</option>
                                    <option value="CE">Cédula de Extranjería</option>
                                    <option value="PA">Pasaporte</option>
                                    <option value="RC">Registro Civil</option>
                                </select>

                                <i class="formulario__validacion-estado far fa-times-circle"></i>
                            </div>
                            <p class="formulario__input-error">Debe seleccionar el Tipo de Documento</p>
                        </div>

                        <div class="formulario__grupo" id="grupo__documento">
                            <label for="documento" class="formulario__label">Número de Documento:</label>
                            <div class="formulario__grupo-input">
                                <input type="number" class="formulario__input" name="documento" id="documento"
                                    placeholder="Digite Correctamente">
                                <i class="formulario__validacion-estado far fa-times-circle"></i>
                            </div>
                            <p class="formulario__input-error">El Numero de Documento debe ser de 7 a 11 digitos y solo
                                pueden contener numeros</p>
                        </div>

                        <div class="formulario__grupo" id="grupo__telefono">
                            <label for="telefono" class="formulario__label">Teléfono:</label>
                            <div class="formulario__grupo-input">
                                <input type="number" class="formulario__input" name="telefono" id="telefono"
                                    placeholder="Fijo o Celular">
                                <i class="formulario__validacion-estado far fa-times-circle"></i>
                            </div>
                            <p class="formulario__input-error">El Telefono debe ser de 6 a 10 digitos y solo pueden
                                contener numeros</p>
                        </div>                     
                        
                        <div class="formulario__grupo" id="grupo__direccion">
                            <label for="direccion" class="formulario__label">Dirección:</label>
                            <div class="formulario__grupo-input">
                                <input type="text" class="formulario__input" name="direccion" id="direccion"
                                    placeholder="Dirrecion actual">
                                <i class="formulario__validacion-estado far fa-times-circle"></i>
                            </div>
                            <p class="formulario__input-error">La direccion debe ser de 15 a 100 digitos y puede
                                contener numeros, letras y simbolos</p>
                        </div>

                        <div class="formulario__grupo" id="grupo__correo">
                            <label for="email" class="formulario__label">Correo:</label>
                            <div class="formulario__grupo-input">
                                <input type="text" class="formulario__input" name="correos" id="correo"
                                    placeholder="Digite Correctamente">
                                <i class="formulario__validacion-estado far fa-times-circle"></i>
                            </div>
                            <p class="formulario__input-error">El correo debe ser de 10 a 100 digitos y puede debe
                                contener un formato de correo</p>
                        </div>
                        
                        <div class="formulario__grupo" id="grupo__direccion">
                            <label for="barrio" class="formulario__label">Barrio:</label>
                            <div class="formulario__grupo-input">
                                <input type="text" class="formulario__input" name="barrio" id="barrio"
                                    placeholder="Una localidad">
                                <i class="formulario__validacion-estado far fa-times-circle"></i>
                            </div>
                            <p class="formulario__input-error">La direccion debe ser de 15 a 100 digitos y puede
                                contener numeros, letras y simbolos</p>
                        </div>                           

                        <div class="formulario__grupo" id="grupo__contrasena">
                            <label for="contrasena" class="formulario__label">Contraseña:</label>
                            <div class="formulario__grupo-input">
                                <input type="password" class="formulario__input" name="contrasena" id="contrasena">
                                <i class="formulario__validacion-estado far fa-times-circle"></i>
                            </div>
                            <p class="formulario__input-error">La contraseña debe ser minimo de 8 a 50 digitos y debe
                                contener numeros y letras</p>
                        </div>

                        <div class="formulario__grupo" id="grupo__contrasena2">
                            <label for="contrasena2" class="formulario__label">Repetir Contraseña:</label>
                            <div class="formulario__grupo-input">
                                <input type="password" class="formulario__input" name="contrasena2" id="contrasena2">
                                <i class="formulario__validacion-estado far fa-times-circle"></i>
                            </div>
                            <p class="formulario__input-error">Ambas contraseñas deben ser iguales</p>
                        </div>
                        
                        <div class="formulario__grupo" id="grupo__contrasena2">
                                <label for="textId_R" class="formulario__label">Id de Usuario a cargo del registro:</label>
                            <div class="formulario__grupo-input">
                                <input type="number" class="formulario__input" name="textId_R" id="Id_R">
                                <i class="formulario__validacion-estado far fa-times-circle"></i>
                            </div>
                                
                        </div>      
                        
                        <div class="formulario__grupo" id="grupo__tipo">
                            <label for="textPerfil" class="formulario__label">Perfil:</label>
                            <div class="formulario__grupo-input">
                                <select name="textPerfil" id="" class="formulario__input  selects">
                                    <option selected>Seleccione el Perfil:</option>
                                    <option value="1">Administrador</option>
                                    <option value="2">Secretari@</option>
                                    <option value="3">Tecnico</option>
                                    <option value="4">Cajero</option>
                                </select>

                                <i class="formulario__validacion-estado far fa-times-circle"></i>
                            </div>
                            <p class="formulario__input-error">Debe seleccionar el Tipo de Perfil</p>
                        </div>    
                        
                        <div class="formulario__grupo" id="grupo__contrasena2">
                                <label for="textEstado" class="formulario__label">Estado:</label>
                             <div class="formulario__grupo-input">
                                <select name="textEstado" id="" class="formulario__input  selects">
                                    <option selected>Seleccione el Estado:</option>
                                    <option value="1">Activo</option>
                                </select>

                                <i class="formulario__validacion-estado far fa-times-circle"></i>
                            </div>
                                
                        </div>                         

                        <div class="formulario__grupo" id="grupo__terminos">
                            <label>
                                <input class="formulario__checkbox text-dark" type="checkbox" name="terminos" id="terminos">
                                Acepto los Terminos y Condiciones
                            </label>
                        </div>


                        <div class="formulario__mensaje" id="formulario__mensaje">
                            <p>
                                <i class="fas fa-exclamation-triangle"></i> <b>Error: </b>Porfavor Diligencie los Campos
                                del Formulario Correctamente </p>

                        </div>
                </div>
                <div class="modal-footer">
                    <!--<div class="formulario__grupo formulario__grupo-btn-enviar ">-->
                        <button type="submit" class="btn_f">Registrar</button>
                        <input type="hidden" value="2" name="opcion">
                        
                        <p class="formulario__mensaje-exito" id="formulario__mensaje-exito">Formulario Enviado
                            Correctamente</p>

                <br>
                <div style="color:Red">
                    <center>
                        <%if (request.getAttribute("mensajeFallido") != null) {%>
                        ${mensajeFallido}
                        <% } else { %>
                        ${mensajeExitoso}
                        <% } %>
                    </center>
                </div>
                </div>
                    
              </form>

                        </div>
                    </div>
                </div>
    <!-- Modal para Actualizar -->
    
       </div>
    </div>
   

        <!-- End Modals -->


          <footer class="footer mt-auto">
            <div class="copyright bg-white">
              <p>
                &copy; <span id="copy-year">2019</span> Personalización por el Grupo-6
              </p>
            </div>
            <script>
                var d = new Date();
                var year = d.getFullYear();
                document.getElementById("copy-year").innerHTML = year;
            </script>
          </footer>

    </div>
  </div>

 <script src="assets/plugins/nprogress/nprogress.js"></script>
                      
<script src="assets/plugins/jquery/jquery.min.js"></script>
<script src="assets/plugins/slimscrollbar/jquery.slimscroll.min.js"></script>
<script src="assets/plugins/jekyll-search.min.js"></script>
<script src="assets/plugins/bootstrap/js/popper.min.js"></script>



<script src="assets/plugins/charts/Chart.min.js"></script>
  


<script src="assets/plugins/jvectormap/jquery-jvectormap-2.0.3.min.js"></script>
<script src="assets/plugins/jvectormap/jquery-jvectormap-world-mill.js"></script>
  


<script src="assets/plugins/daterangepicker/moment.min.js"></script>
<script src="assets/plugins/daterangepicker/daterangepicker.js"></script>
<script>
  jQuery(document).ready(function() {
    jQuery('input[name="dateRange"]').daterangepicker({
    autoUpdateInput: false,
    singleDatePicker: true,
    locale: {
      cancelLabel: 'Clear'
    }
  });
    jQuery('input[name="dateRange"]').on('apply.daterangepicker', function (ev, picker) {
      jQuery(this).val(picker.startDate.format('MM/DD/YYYY'));
    });
    jQuery('input[name="dateRange"]').on('cancel.daterangepicker', function (ev, picker) {
      jQuery(this).val('');
    });
  });
</script>
  


<!--del Table-->

<script src="assets/plugins/data-tables/jquery.datatables.min.js"></script>
<script src="assets/plugins/data-tables/datatables.bootstrap4.min.js/"></script>
<script src="assets/plugins/data-tables/datatables.responsive.min.js"></script>
<!-->
<script type="text/javascript">
    $(document).ready(function() {
        //Asegurate que el id que le diste a la tabla sea igual al texto despues del simbolo #
        $('#userList').DataTable();
    } );
</script>

<!--end table-->


<script src="assets/js/sleek.bundle.js"></script>
</body>

</html>


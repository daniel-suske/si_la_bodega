<%-- 
    Document   : Usuarios
    Created on : 17-ago-2020, 23:49:09
    Author     : Yeison
--%>
<%@include file="Sesiones.jsp"%>
<%@page import="modeloVO.UsuarioVO"%>
<%@page import="modeloDAO.UsuarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    HttpSession miSesion = (HttpSession)request.getSession();
    
    String IdU ="", NombreU = "", ApellidoU = "", p = "", PerfilU = "", CorreoU = "", TelefonoU = "", NumeroDU = "", TipoDU = "", BarrioU = "", DireccionU = "";
    
    if (miSesion.getAttribute("sesion_usuario") == null) {
        
        request.getRequestDispatcher("index.jsp").forward(request, response);
        
    } else {
        
        UsuarioVO usuVO = (UsuarioVO)miSesion.getAttribute("sesion_usuario");
        
        IdU = usuVO.getId();
        NombreU = usuVO.getNombres();
        ApellidoU = usuVO.getApellidos();
        CorreoU = usuVO.getCorreo();
        TelefonoU = usuVO.getTelefono();
        NumeroDU = usuVO.getNumero_Documento();
        TipoDU = usuVO.getTipo_Documento();
        BarrioU = usuVO.getBarrio();
        DireccionU = usuVO.getDireccion();
        p = usuVO.getPerfil();
        if(p.equals("1")) {
           PerfilU = "Gerente";
        } else if(p.equals("2")) {
            PerfilU = "Secretari@";
        } else if(p.equals("3")) {
            PerfilU = "Tecnico";
        } else if(p.equals("4")) {
            PerfilU = "Cajero";
        } else if(p.equals("5")){
            PerfilU = "Cliente";
        }
        
    }

%>
<html lang="es">
    <head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <meta name="description" content="Pagina web de Servicio Tecnico de Reparación de Electrodomesticos, Atendemos desde cualquier lugar. Ofrecemos servicio a domicilio como local tambien aplicando las mejores formas de cumplir nuestra mision.">
        <meta name="keywords" content="Servicio Tecnico de Reparación de Electrodomesticos, Servicio, Reparaciones de electrodomesticos, Reparaciones de electrodomesticos dañados, Servicio Tecnico de electrodomesticos, Electrodomesticos aberiados, Empresa reparadora de electrodomesticos.">
        <meta name="author" content="Grupo-6">


       
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

        <!-- GOOGLE FONTS -->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500|Poppins:400,500,600,700|Roboto:400,500" rel="stylesheet" />
        <link href="https://cdn.materialdesignicons.com/4.4.95/css/materialdesignicons.min.css" rel="stylesheet" />


        <!--formulario css -->
        

        <!-- switch -->
        <link rel="stylesheet" href="assets/css/switch.css">
        <!-- PLUGINS CSS STYLE -->
        <link href="assets/plugins/nprogress/nprogress.css" rel="stylesheet" />
        <link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.css">

        <link rel="shortcut icon" href="recursos/favicon.ico" />


        <!-- No Extra plugin used -->



        <link href="assets/plugins/jvectormap/jquery-jvectormap-2.0.3.css" rel="stylesheet" />



        <link href="assets/plugins/daterangepicker/daterangepicker.css" rel="stylesheet" />



        <link href="assets/plugins/toastr/toastr.min.css" rel="stylesheet" />



        <!-- SLEEK CSS -->
        <link id="sleek-css" rel="stylesheet" href="assets/css/sleek.css" />
        <link href="assets/css/estilos.css" rel="stylesheet" />

        <!--Icono-->
        <link  rel = "apple-touch-icon"  tallas = "57x57"  href = "assets/img/Iconos.ico/apple-icon-57x57.png"> 
        <link  rel = "apple-touch-icon"  tallas = "60x60"  href = "assets/img/Iconos.ico/apple -icon-60x60.png"> 
        <link  rel = " apple-touch-icon "  tamaños = " 72x72 "  href = "assets/img/Iconos.ico/apple-icon-72x72.png"> 
        <link  rel = " apple-touch-icon "  tamaños = "76x76"  href = "assets/img/Iconos.ico/apple-icon-76x76.png"> 
        <link  rel = "apple-touch-icon "  tamaños = " 114x114 "  href = "assets/img/Iconos.ico/apple-icon-114x114.png"> 
        <link  rel = "apple-touch-icon"  tallas = "120x120"  href = "assets/img/Iconos.ico/apple-icon-120x120.png"> 
        <link  rel = "apple-touch-icon"  tallas = "144x144"  href = "assets/img/Iconos.ico/apple-icon-144x144.png"> 
        <link  rel = " apple-touch-icon "  tamaños = " 152x152 "  href = "assets/img/Iconos.ico/apple-icon-152x152.png"> 
        <link  rel = " apple-touch-icon "  tamaños = "180x180"  href = "assets/img/Iconos.ico/apple-icon-180x180.png"> 
        <link  rel = "icon"  type = "image / png"  tamaños = "192x192"  href = "assets/img/Iconos.ico/android-icon-192x192.png"> 
        <link  rel = "icon"  type = "image / png"  tamaños = "32x32"  href = "assets/img/Iconos.ico/favicon-32x32.png"> 
        <link  rel = "icon"  type = "image / png"  tallas = "96x96"  href = "assets/img/Iconos.ico/favicon-96x96.png"> 
        <link  rel = "icon"  type = "image / png"  tallas = "16x16"  href = "assets/img/Iconos.ico/favicon-16x16.png"> 
        <link  rel = " manifest " href = "assets/img/Iconos.ico/manifest.json"> 
        <meta  name ="msapplication-TileColor"  content = "#ffffff"> 
        <meta  name = "msapplication-TileImage"  content = "assets/img/Iconos.ico/ms-icon-144x144.png"> 
        <meta  name = "theme-color"  content = "#ffffff" >



        <!--
          HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries
        -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
        <script src="assets/plugins/nprogress/nprogress.js"></script>
    </head>


    <body class="header-fixed sidebar-fixed sidebar-dark header-light" id="body">

        <script>
            NProgress.configure({showSpinner: false});
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

                            <%
                                if(p.equals("1")) {
                            %>

                            <li  class="has-sub" id="dashboard_menu">
                                <a class="sidenav-item-link" href="dashboard.jsp">
                                    <i class="mdi mdi-view-dashboard-outline"></i>
                                    <span class="nav-text">MENU</span> 
                                </a>

                            </li>
                            
                            <% } else if(p.equals("2")) { %>

                            <li  class="has-sub" id="dashboard_menu">
                                <a class="sidenav-item-link" href="dashboardS.jsp">
                                    <i class="mdi mdi-view-dashboard-outline"></i>
                                    <span class="nav-text">MENU</span> 
                                </a>

                            </li>
                            
                            <% } else if(p.equals("3")) { %>

                            <li  class="has-sub" id="dashboard_menu">
                                <a class="sidenav-item-link" href="dashboardT.jsp">
                                    <i class="mdi mdi-view-dashboard-outline"></i>
                                    <span class="nav-text">MENU</span> 
                                </a>

                            </li>
                            
                            <% } else if(p.equals("4")) { %>

                            <li  class="has-sub" id="dashboard_menu">
                                <a class="sidenav-item-link" href="dashboardCA.jsp">
                                    <i class="mdi mdi-view-dashboard-outline"></i>
                                    <span class="nav-text">MENU</span> 
                                </a>

                            </li>
                            
                            <% } else if(p.equals("5")) { %>

                            <li  class="has-sub" id="dashboard_menu">
                                <a class="sidenav-item-link" href="dashboardCL.jsp">
                                    <i class="mdi mdi-view-dashboard-outline"></i>
                                    <span class="nav-text">MENU</span> 
                                </a>

                            </li>
                            
                            
                            <%
                                }

                                if(p.equals("1") || p.equals("2")) {
                            %>


                            <li  class="has-sub" id="usuario_menu">
                              <a id="usuario_coll" class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#usuario"
                              aria-expanded="false" aria-controls="usuario">
                              <i class="mdi mdi-account-circle"></i>
                              <span class="nav-text">USUARIOS</span><b class="caret"></b>
                            </a>
                            <ul  class="collapse"  id="usuario" data-parent="#sidebar-menu">
                              <div class="sub-menu">


                                    <li id="usuario_empleado">
                                      <a class="sidenav-item-link" href="Usuarios.jsp">
                                        <span class="nav-text">Empleados</span>

                                      </a>
                                    </li>



                                    <li id="usuario_cliente">
                                      <a class="sidenav-item-link" href="UsuariosC.jsp">
                                        <span class="nav-text">Clientes</span>

                                      </a>
                                    </li>




                                    <li id="usuario_perfiles">
                                      <a class="sidenav-item-link" href="Perfiles.jsp">
                                        <span class="nav-text">Perfiles</span>

                                      </a>
                                    </li>


                              </div>
                            </ul>
                          </li>

                          <% } %>

                            <li  class="has-sub" id="servicio_menu">
                                <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#servicio"
                                   aria-expanded="false" aria-controls="servicio">
                                    <i class="mdi mdi-clipboard-list"></i>
                                    <span class="nav-text">SERVICIOS</span> <b class="caret"></b>
                                </a>
                                <ul  class="collapse"  id="servicio"
                                     data-parent="#sidebar-menu">
                                    <div class="sub-menu">

                                        <%if(p.equals("1") || p.equals("2") || p.equals("3") || p.equals("4")) { %>

                                        <li id="servicio_gestion">
                                            <a class="sidenav-item-link" href="Servicios.jsp">
                                                <span class="nav-text">Gestion</span>
                                            </a>
                                        </li>
                                        <% } %>
                                        <li id="servicio_listar">
                                          <a class="sidenav-item-link" href="ListarServicios.jsp">
                                            <span class="nav-text">Listar Servicios</span>
                                          </a>
                                        </li>
                                        
                                        <% if(p.equals("5")) { %>
                                        <li id="servicio_cliente">
                                          <a class="sidenav-item-link" href="MiServicio.jsp">
                                            <span class="nav-text">Mis Servicios</span>
                                          </a>
                                        </li>
                                        <% } %>
                                        
                                    </div>
                                </ul>
                            </li>





                            <li class="has-sub" id="producto_menu">
                                <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#producto"
                                   aria-expanded="false" aria-controls="producto">
                                    <i class="mdi mdi-laptop-chromebook"></i>
                                    <span class="nav-text">PRODUCTOS</span> <b class="caret"></b>
                                </a>
                                <ul  class="collapse"  id="producto"
                                     data-parent="#sidebar-menu">
                                    <div class="sub-menu">


                                        <li id="producto_gestion">
                                            <a class="sidenav-item-link" href="consultarProducto.jsp">
                                                <span class="nav-text">Gestion</span>

                                            </a>
                                        </li>


                                    </div>
                                </ul>
                            </li>





                            <li  class="has-sub" id="reparacion_menu">
                                <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#reparacion_c"
                                   aria-expanded="false" aria-controls="reparacion_c">
                                    <i class="mdi mdi mdi-wrench"></i>
                                    <span class="nav-text">REPARACIONES</span> <b class="caret"></b>
                                </a>
                                <ul  class="collapse"  id="reparacion_c"
                                     data-parent="#sidebar-menu">
                                    <div class="sub-menu">

                                        <li id="reparacion_gestion">
                                            <a class="sidenav-item-link" href="consultaReparacion.jsp">
                                                <span class="nav-text">Gestion</span>
                                            </a>
                                        </li>
                                        
                                       <li class="has-sub" >
                                            <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#detalles_reparacion"
                                               aria-expanded="false" aria-controls="detalles_reparacion">
                                                <span class="nav-text">Detalles de Reparaciones</span> <b class="caret"></b>
                                            </a>
                                            <ul  class="collapse"  id="detalles_reparacion">
                                                <div class="sub-menu">

                                                    <li >
                                                        <a href="#">Recientes</a>
                                                    </li>

                                                    <li >
                                                        <a href="#">Productos</a>
                                                    </li>


                                                </div>
                                            </ul>
                                        </li>




                                    </div>
                                </ul>
                            </li>





                            <li class="has-sub" id="repuesto_menu">
                                <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#repuesto_c"
                                   aria-expanded="false" aria-controls="repuesto_c">
                                    <i class="mdi mdi-screwdriver"></i>
                                    <span class="nav-text">REPUESTOS</span> <b class="caret"></b>
                                </a>
                                <ul  class="collapse"  id="repuesto_c"
                                     data-parent="#sidebar-menu">
                                    <div class="sub-menu">



                                        <li id="repuesto_gestion">
                                            <a class="sidenav-item-link" href="consultarRepuesto.jsp">
                                                <span class="nav-text">Inventario de Repuestos</span>

                                            </a>

                                        </li>




                                        <li  class="has-sub" >
                                            <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#detalles_repuestos"
                                               aria-expanded="false" aria-controls="detalles_repuestos">
                                                <span class="nav-text">Detalles de Repuestos</span> <b class="caret"></b>
                                            </a>
                                            <ul  class="collapse" id="detalles_repuestos">
                                                <div class="sub-menu">

                                                    <li >
                                                        <a href="#">Especifica</a>
                                                    </li>

                                                    <li >
                                                        <a href="#">Reciente</a>
                                                    </li>


                                                </div>
                                            </ul>
                                        </li>



                                    </div>
                                </ul>
                            </li>





                            <li  class="has-sub" id="factura_menu">
                                <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#factura_c"
                                   aria-expanded="false" aria-controls="factura_c">
                                    <i class="mdi mdi-cash-usd"></i>
                                    <span class="nav-text">FACTURA</span> <b class="caret"></b>
                                </a>
                                <ul  class="collapse"  id="factura_c"
                                     data-parent="#sidebar-menu">
                                    <div class="sub-menu">



                                        <li id="factura_gestion">
                                            <a class="sidenav-item-link" href="consultarFactura.jsp">
                                                <span class="nav-text">General</span>

                                            </a>
                                        </li>


                                        <li >
                                            <a class="sidenav-item-link" href="#">
                                                <span class="nav-text">Especificas</span>
                                            </a>
                                        </li>




                                    </div>
                                </ul>
                            </li>



                            <li  class="has-sub" id="estado_menu">
                                <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#estados"
                                   aria-expanded="false" aria-controls="estados">
                                    <i class="mdi mdi-table"></i>
                                    <span class="nav-text">ESTADOS</span> <b class="caret"></b>
                                </a>
                                <ul  class="collapse"  id="estados"
                                     data-parent="#sidebar-menu">
                                    <div class="sub-menu">



                                        <li id="estado_gestion">
                                            <a class="sidenav-item-link" href="Estados.jsp">
                                                <span class="nav-text">Gestion</span>

                                            </a>
                                        </li>


                                    </div>
                                </ul>
                            </li>

                            <li  class="has-sub" id="opcionesPU_menu">
                                <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#configuracion"
                                   aria-expanded="false" aria-controls="configuracion">
                                    <i class="mdi mdi-cogs"></i>
                                    <span class="nav-text">CONFIGURACIÓN</span> <b class="caret"></b>
                                </a>
                                <ul  class="collapse"  id="configuracion"
                                     data-parent="#sidebar-menu">
                                    <div class="sub-menu">



                                        <li id="opciones_perfilPU">
                                            <a class="sidenav-item-link" href="PerfilU.jsp">
                                                <span class="nav-text">Opciones de Perfil</span>
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
                        <button id="sidebar-toggler" class="sidebar-toggle text-dark">
                            <span class="sr-only">Toggle navigation</span>
                        </button>
                        <!-- search form -->
                        <div class="search-form d-none d-lg-inline-block">
                            <div class="input-group">
                                <button type="button" name="search" id="search-btn" class="btn btn-flat">
                                    <i class="mdi mdi-magnify text-primary"></i>
                                </button>
                                <input type="text" name="query" id="search-input" class="form-control" placeholder="Busqueda"
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
                                        <i class="mdi mdi-bell-outline text-primary"></i>
                                    </button>
                                    <ul class="dropdown-menu dropdown-menu-right">
                                        <li class="dropdown-header">Tienes 5 notificaciones</li>
                                        <li>
                                            <a href="#">
                                                <i class="mdi mdi-account-plus text-primary"></i> Nuevos Empleados Registrados
                                                <span class=" font-size-12 d-inline-block float-right"><i class="mdi mdi-clock-outline"></i> 10 AM</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="mdi mdi-account-remove text-primary"></i> Usuarios Inactivados
                                                <span class=" font-size-12 d-inline-block float-right"><i class="mdi mdi-clock-outline"></i> 07 AM</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="mdi mdi-chart-areaspline text-primary"></i>  Generar Reporte
                                                <span class=" font-size-12 d-inline-block float-right"><i class="mdi mdi-clock-outline"></i> 12 PM</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="mdi mdi-account-supervisor text-primary"></i> Nuevos Clientes
                                                <span class=" font-size-12 d-inline-block float-right"><i class="mdi mdi-clock-outline"></i> 10 AM</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="mdi mdi-server-network-off text-primary"></i> Estado del Servidor
                                                <span class=" font-size-12 d-inline-block float-right"><i class="mdi mdi-clock-outline"></i> 05 AM</span>
                                            </a>
                                        </li>
                                        <li class="dropdown-footer">
                                            <a class="text-center" href="#"> Visualizar todo </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="right-sidebar-in right-sidebar-2-menu">
                                    <i class="mdi mdi-settings mdi-spin text-primary"></i>
                                </li>
                                <!-- User Account -->
                                <li class="dropdown user-menu">
                                  <button href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
                                    <img src="ControladorImagenUsuario?idu=<%=IdU%>" onerror="this.src='assets/img/user/usuario.png'" class="image-user">
                                    <span class="d-none d-lg-inline-block"><%= NombreU %></span>
                                  </button>
                                  <ul class="dropdown-menu dropdown-menu-right">
                                    <!-- User image -->
                                    <li class="dropdown-header">
                                      <img src="ControladorImagenUsuario?idu=<%=IdU%>" onerror="this.src='assets/img/user/usuario.png'" class="image-user">
                                      <div class="d-inline-block">
                                      <%= NombreU %> <small class="pt-1"><%= CorreoU %></small>
                                      </div>
                                    </li>

                                    <li>
                                        <a href="PerfilU.jsp" class="text-dark">
                                        <i class="mdi mdi-account text-primary"></i>Mi Perfil
                                      </a>
                                    </li>
                                    <li>
                                      <a href="#" class="text-dark">
                                        <i class="mdi mdi-email text-primary"></i>Mensages
                                      </a>
                                    </li>
                                    <li>
                                      <a href="#" class="text-dark">
                                          <i class="mdi mdi-diamond-stone text-primary"></i>Cargos</a>
                                    </li>
                                    <li class="right-sidebar-in">
                                      <a href="PerfilU.jsp" class="text-dark">
                                          <i class="mdi mdi-settings text-primary"></i>Configuración</a>
                                    </li>

                                    <li class="dropdown-footer">
                                    <form method="POST" action="Sesiones">
                                        <a class="text-dark"> 
                                            <i class="mdi mdi-logout text-primary"></i><input class="btn btn-sm btn-outline-primary" type="submit" value="Cerrar Sesión"/></a>
                                    </form>
                                    </li>
                                  </ul>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </header>
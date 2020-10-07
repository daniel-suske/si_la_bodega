<%-- 
    Document   : dashboardS
    Created on : 17-sep-2020, 1:34:25
    Author     : Yeison
--%>
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
    
    String NombreU = "", ApellidoU = "", p = "", PerfilU = "", CorreoU = "";
    
    if (miSesion.getAttribute("sesion_usuario") == null) {
        
        request.getRequestDispatcher("index.jsp").forward(request, response);
        
    } else {
        
        UsuarioVO usuVO = (UsuarioVO)miSesion.getAttribute("sesion_usuario");
        
        NombreU = usuVO.getNombres();
        ApellidoU = usuVO.getApellidos();
        CorreoU = usuVO.getCorreo();
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

        <title>La Bodega T</title>
       
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
        <link  rel = "apple-touch-icon"  tallas = "57x57"  href = "assets/img/Iconos.ico/apple-icon-57x57.png" > 
        <link  rel = "apple-touch-icon"  tallas = "60x60"  href = "assets/img/Iconos.ico/apple -icon-60x60.png " > 
        <link  rel = " apple-touch-icon "  tamaños = " 72x72 "  href = "assets/img/Iconos.ico/apple-icon-72x72.png " > 
        <link  rel = " apple-touch-icon "  tamaños = "76x76"  href = "assets/img/Iconos.ico/apple-icon-76x76.png" > 
        <link  rel = "apple-touch-icon "  tamaños = " 114x114 "  href = "assets/img/Iconos.ico/apple-icon-114x114.png "> 
        <link  rel = "apple-touch-icon"  tallas = "120x120"  href = "assets/img/Iconos.ico/apple-icon-120x120.png" > 
        <link  rel = "apple-touch-icon"  tallas = "144x144"  href = "assets/img/Iconos.ico/apple-icon-144x144.png " > 
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



                            <li  class="has-sub active expand" >
                                <a class="sidenav-item-link" href="dashboardT.jsp">
                                    <i class="mdi mdi-view-dashboard-outline"></i>
                                    <span class="nav-text">MENU</span> 
                                </a>

                            </li>


                            <li  class="has-sub" >
                                <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#components"
                                   aria-expanded="false" aria-controls="components">
                                    <i class="mdi mdi-clipboard-list"></i>
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
                                <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#forms"
                                   aria-expanded="false" aria-controls="forms">
                                    <i class="mdi mdi mdi-wrench"></i>
                                    <span class="nav-text">Reparaciones</span> <b class="caret"></b>
                                </a>
                                <ul  class="collapse"  id="forms"
                                     data-parent="#sidebar-menu">
                                    <div class="sub-menu">



                                        <li >
                                            <a class="sidenav-item-link" href="consultaReparacion.jsp">
                                                <span class="nav-text">Gestion</span>

                                            </a>
                                        </li>
                                        
                                                                                <li  class="has-sub" >
                                            <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#data-tables"
                                               aria-expanded="false" aria-controls="data-tables">
                                                <span class="nav-text">Detalles de Repuestos</span> <b class="caret"></b>
                                            </a>
                                            <ul  class="collapse"  id="data-tables">
                                                <div class="sub-menu">

                                                    <li >
                                                        <a href="basic-data-table.html">Recientes</a>
                                                    </li>

                                                    <li >
                                                        <a href="responsive-data-table.html">Responsive Data Table</a>
                                                    </li>


                                                </div>
                                            </ul>
                                        </li>




                                    </div>
                                </ul>
                            </li>





                            <li  class="has-sub" >
                                <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#tables"
                                   aria-expanded="false" aria-controls="tables">
                                    <i class="mdi mdi-screwdriver"></i>
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
                                                <span class="nav-text">Detalles de Repuestos</span> <b class="caret"></b>
                                            </a>
                                            <ul  class="collapse"  id="data-tables">
                                                <div class="sub-menu">

                                                    <li >
                                                        <a href="basic-data-table.html">Recientes</a>
                                                    </li>

                                                    <li >
                                                        <a href="responsive-data-table.html">Responsive Data Table</a>
                                                    </li>


                                                </div>
                                            </ul>
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
                                                <span class="nav-text">Otros</span> <b class="caret"></b>
                                            </a>
                                            <ul  class="collapse"  id="others">
                                                <div class="sub-menu">

                                                    <li >
                                                        <a href="invoice.html">Convexo</a>
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
                                <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#documentation"
                                   aria-expanded="false" aria-controls="documentation">
                                    <i class="mdi mdi-cogs"></i>
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
                                                <i class="mdi mdi-chart-areaspline"></i>  Generar Reporte
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
                                    <span class="d-none d-lg-inline-block"><%= NombreU %></span>
                                  </button>
                                  <ul class="dropdown-menu dropdown-menu-right">
                                    <!-- User image -->
                                    <li class="dropdown-header">
                                      <img src="assets/img/user/usuario.png" class="img-circle" alt="User Image" />
                                      <div class="d-inline-block">
                                      <%= NombreU %> <small class="pt-1"><%= CorreoU %></small>
                                      </div>
                                    </li>

                                    <li>
                                        <a href="#" class="text-dark">
                                        <i class="mdi mdi-account text-primary"></i> Mi Perfil
                                      </a>
                                    </li>
                                    <li>
                                      <a href="#" class="text-dark">
                                        <i class="mdi mdi-email text-primary"></i> Mensages
                                      </a>
                                    </li>
                                    <li>
                                      <a href="#" class="text-dark">
                                          <i class="mdi mdi-diamond-stone text-primary"></i> Cargos</a>
                                    </li>
                                    <li class="right-sidebar-in">
                                      <a href="javascript:0" class="text-dark">
                                          <i class="mdi mdi-settings text-primary"></i> Configuración </a>
                                    </li>

                                    <li class="dropdown-footer">
                                    <form method="POST" action="Sesiones">
                                        <a class="text-dark"> 
                                            <i class="mdi mdi-logout text-primary"></i><input class="btn btn-sm btn-outline-primary" type="submit" value="Cerrar Session"/></a>
                                    </form>
                                    </li>
                                  </ul>
                                </li>
                            </ul>
                        </div>
                    </nav>


                </header>

<div class="content-wrapper">

      <div class="content">
       
        <h2 class="h1 text-right text-uppercase text-primary"><%= PerfilU %></h2>
        <h1 class="text-left text-dark">Bienvenido <span class="text-primary">:</span> <br> <%= NombreU %> <%= ApellidoU %></h1> 
       
        <hr><h2 class="h2">TECNICO</h2>

        <div class="card-body">
            <h3>Buzon</h3>
        </div>


        <br>
        </div>
    </div>     
        
        <!-- footer ->
        
      <%@include file="dash2.jsp"%>
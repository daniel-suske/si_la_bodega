<%-- 
    Document   : Perfiles
    Created on : 17-ago-2020, 23:49:09
    Author     : Yeison
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="modeloDAO.PerfilDAO"%>
<%@page import="modeloVO.PerfilVO"%>

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


  <title>Perfiles</title>

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
                              <a class="sidenav-item-link" href="Usuarios.jsp">
                               
                                <span class="nav-text">Empleados</span> <b class="caret"></b>
                              </a>
  
                            </li>
                          
                        

                        
                        
                          
                            <li >
                              <a class="sidenav-item-link" href="UsuariosC.jsp">
                                <span class="nav-text">Clientes</span> <b class="caret"></b>
                                
                              </a>
                            </li>

  
                            
                            <li >
                              <a class="sidenav-item-link" href="#">
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
                              <a class="sidenav-item-link" href="basic-tables.html">
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
                              <a class="sidenav-item-link" href="google-map.html">
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

                <h1 class="text text-dark">Gestion de Perfiles</h1>
              
                  <hr>
                  <div class="navbar ">

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
                        <thead class="table table-striped table-hover">   
                            <tr>
                                <th scope="col" class="text-center">Id</th>
                                <th scope="col" class="text-center">Nombre</th>
                                <th scope="col" class="text-center">Acciones</th>
                            </tr>  
                        </thead>
                      <%
                          PerfilVO perfVO = new PerfilVO();
                          PerfilDAO perfDAO = new PerfilDAO();
                          
                          ArrayList<PerfilVO> listaPerfiles = perfDAO.listarP();
                          
                          for (int i = 0; i < listaPerfiles.size(); i++) {
                              
                              perfVO = listaPerfiles.get(i);
                              
                      %>
                      <tbody class="table table-striped table-hover text text-dark">
                            <tr>
                                <td scope="row" class="text-center"><%= perfVO.getId() %></td>
                                <td class="text-center"><%= perfVO.getNombre()%></td>
              
                                <td class="text-center">
                                    <form method="post" action="Perfil">
                                        <input type="hidden" name="textId" value="<%= perfVO.getId() %>" />
                                    <button class="btn btn-warning">Modificar</button>
                                        <input type="hidden" name="opcion" value="2"/>
                                    </form>
                                    |
                                   <!-- <a href="#" class="btn btn-danger">Inactivar</a> -->
                                </td>
                            </tr>
                      </tbody>
                      <% } %>
                      
                  </table>
                
                <br>
               </div>   

        <!-- Termina aqui -->
        
        <!-- Modales -->
        

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

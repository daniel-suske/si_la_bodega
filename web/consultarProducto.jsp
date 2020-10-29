
<%@page import="java.util.ArrayList"%>
<%@page import="modeloDAO.ProductoDAO"%>
<%@page import="modeloVO.ProductoVO"%>
<%@page import="modeloVO.UsuarioVO"%>
<%@include file="dash1.jsp" %>
<link rel="stylesheet" type="text/css" href="assets/plugins/DataTables/datatables.min.css"/> 
<!-- AQUI VA EL contenido-->
<title>Consultar Productos</title>
<div class="content-wrapper">

    <div class="content">
        <div class="card bg-white justify-content-center">
            <div class="card-body ">
                  
                <h5>Consultar Productos</h5>
                <br><br>
                <div class="form-inline">
                <form method="post" action="Producto" class="form-inline"> 

                   
                  
                        
                </form>

                    <button class="btn btn-dark btn-lg m-3 text-light">
                        <a  href="registrarProducto.jsp" style="text-decoration:none; color:white">Crear Producto </a>
                    </button>
                    <button class="btn btn-primary btn-lg m-3 text-light">
                        <a  href="consultarProducto.jsp" style="text-decoration:none; color:white">Todos Los Productos</a>
                    </button>
            </div>



        </div></div>

    <br><br> 
    <div > 
        <% if (request.getAttribute("mensajeError") != null) { %> <h4 class="text-center text-danger mb-2">${mensajeError}</h4> <%}%>
    </div>  
    <div class="card bg-white" style="width:100%">
        <div class="card-body ">
            
            <div class="basic-data-table">
                <table id="datatable" class="table table-responsive table-sm table-bordered table-hover" style="width: 100%"> 
                    <thead class="bg-dark" > 
                        <tr class="thead-dark">  
                            <th class="text-light-center">Id</th>
                            <th class="text-light">Tipo de Producto</th>
                            <th class="text-light">Marca</th>
                            <th class="text-light">Modelo</th>
                            <th class="text-light">Numero de Serie</th>
                            <th class="text-light">Estado</th>
                            <th class="text-light">Editar</th>
                            <th class="text-light">Estado</th>
                        </tr> 

                    </thead> 

                    <tbody> 
                          <%
                          
                            if ( request.getAttribute("Producto") == null) {
                                
                               String a = ""; 
                                
                                ProductoDAO PaDAO = new ProductoDAO();
                               ProductoVO PoVO = new ProductoVO();
                                ArrayList<ProductoVO> ListaProductos = PaDAO.listarP();
                                for (int i = 0; i < ListaProductos.size(); i++) {

                                    PoVO = ListaProductos.get(i);
                        %>
                    

                        

                        <tr class="text-dark"> 
                            <td scope="col" class="text-center"><%=PoVO.getId()%></td>
                            <td scope="col" class="text-center"><%=PoVO.getTipo_Producto()%></td>
                            <td scope="col" class="text-center"><%=PoVO.getMarca()%></td>
                            <td scope="col" class="text-center"><%=PoVO.getModelo()%></td>
                            <td scope="col" class="text-center"><%=PoVO.getNumero_Serie()%></td>
                            <td scope="col" class="text-center"><%=PoVO.getEstado()%></td>
                            <td> 
                               
                               <form action="Producto" method="post">
                                    <input type="hidden" value="5" name="opcion">
                                     <input type="hidden" value="<%=PoVO.getId()%>" name="Id">
                                     <div  class="row justify-content-center">
                                     <button class="btn btn-outline-primary auto mb-1">
                                         <i><img src="assets/icons/edit.png" width="20px"></i></button>
                                     </div>
                                </form>
                            </td>

                                                    <td>


                                                        <%
                                                             a = "Activo";

                                                            if (a.equals(PoVO.getEstado())) {
                                                        %>
                                                        <form action="Producto"  class=""  method="POST">
                                            <input type="hidden" value="<%=PoVO.getId()%>" name="Id" id="Id">
                                            <input type="hidden" value="2" name="textestado">
                                            <input type="hidden" value="6" name="opcion">

                                            <button class="m-auto">
                                                <label class="swtich-container m-auto">
                                                <input type="checkbox" checked  id="switch">
                                                <div class="slider bg-primary">

                                                    <span class="on">Activo</span>
                                                    <span class="off">Inactivo</span>
                                                </div>
                                                </label>
                                            </button>

                                            <% } else{ %>
                                            
                                            <form action="Producto"  class=""  method="POST">
                                                <input type="hidden" value="<%=PoVO.getId()%>" name="Id" id="Id">
                                                <input type="hidden" value="1" name="textestado">
                                                <input type="hidden" value="7" name="opcion">
                                                <button>
                                                    <label class="swtich-container">
                                                    <input type="checkbox"  id="switch">
                                                    <div class="slider bg-danger">
                                                        <span class="on">Activo</span>
                                                        <span class="off">Inactivo</span>
                                                    </div>
                                                    </label>
                                                    
                                                </button>
                                            
                                            </form>

                                            
                                                <% } %>
                                                 </form>
                                                    </td>

                                                    </tr> 
                                                    <%} }%> 
                                                    </tbody>
                                                    
                                                    </table> 
                                                    </div>
                                                    </div>
                                                    </div>




                                                    </div>
                                                    </div>  
                                                   

                                                    <!-- Termina aqui -->


                                                    <script src="https://unpkg.com/jquery@3.3.1/dist/jquery.min.js"></script>

                                                    <%@include file="dash2.jsp"%>

                                                    <!-- Optional JavaScript -->
                                                    <!--, then Popper.js, then Bootstrap JS -->
                                                    <script src="assets/plugins/bootstrap/js/popper.min.js"></script>
                                                    <script src="assets/plugins/bootstrap/js/bootstrap.js"></script>

                                                    <script type="text/javascript" src="assets/plugins/DataTables/datatables.min.js"></script>

                                                    <script>
                                                        $(document).ready(function () {
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

                                                    <!--Script para cargar la pagina en el lugar del scroll anterior-->
                                                    <script>
                                                        window.onload = function () {
                                                            var pos = window.name || 0;
                                                            window.scrollTo(0, pos);
                                                        };
                                                        window.onunload = function () {
                                                            window.name = self.pageYOffset || (document.documentElement.scrollTop + document.body.scrollTop);
                                                        };
                                                    </script>
<script>
        document.getElementById(`producto_menu`).classList.add("active");
        document.getElementById(`producto_menu`).classList.add("expand");
        document.getElementById(`producto`).classList.add("show");
        document.getElementById(`producto_gestion`).classList.add("active");
</script>
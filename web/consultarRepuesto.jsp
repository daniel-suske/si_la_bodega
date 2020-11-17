<%@page import="java.util.ArrayList"%>
<%@page import="modeloDAO.RepuestoDAO"%>
<%@page import="modeloVO.RepuestoVO"%>
<%@include file="dash1.jsp" %>
<link rel="stylesheet" type="text/css" href="assets/plugins/DataTables/datatables.min.css"/> 

<link href="assets/plugins/data-tables/datatables.bootstrap4.min.css" rel="stylesheet">
<link href="assets/plugins/data-tables/responsive.datatables.min.css" rel="stylesheet">
<link href=""https://unpkg.com/sleek-dashboard/dist/assets/css/sleek.min.css">

      <link href="assets/css/consultarRepuesto.css" rel="stylesheet" type="text/css"/>
<!-- AQUI VA EL contenido-->
<title>Consultar Repuesto</title>
<div class="content-wrapper">

    <div class="content">
        <div class="card bg-white " style="width:100%">
            <div class="card-body ">
                <h4 class="text-center">Consultar Repuestos</h4>
                <br><br>

                <form method="post" action="Repuesto" class="form-inline "> 

                    <input type="hidden" value="3" name="opcion"> 
                    <label for="no_serie" class="m-2"> No_Serie:</label>
                    <input type="text"  class="form-control m-2" name="no_serie" id="no_serie" autofocus="1000"> 
                    <div class="form-inline">
                        <button class="btn btn-success m-2">Consultar</button> 
                </form>


                <a class="btn btn-info" style="text-decoration: none; color: #Fff" href="registrarRepuesto.jsp">Crear</a> 


                <a class="btn btn-dark m-2" style="text-decoration: none; color: #Fff" href="consultarRepuesto.jsp">Todo</a>
              
                <form name="ReporteUsuarios" action="GenerarPDF_Repuesto_1.jsp" target="_black" class="derecha pull-right">
                                    <button class="btn btn-dark btn-lg " type="submit"><i class="mdi mdi-file-pdf mdi-24px mr-2"></i> Generar PDF</button>
                                </form>
               
              

                

            </div>



        </div></div>

    <br><br> 
    <div > 
        <% if (request.getAttribute("mensajeError") != null) { %> <h4 class="text-center text-danger mb-2">${mensajeError}</h4> <%}%>
    </div>  
    <div class="card bg-white" style="width:100%">
        <div class="card-body ">
            <div class="basic-data-table pagination-seperated pagination-seperated-rounded ">
                <table id="responsive-data-table" class="table dt-responsive nowrap table-bordered table-striped " cellspading="0" style="border-collapse: collapse; overflow: hidden;   width:100%; border-radius: 5px !important; ">
                    <thead class="bg-dark" > 
                        <tr class="thead-dark">  
                            <th class="text-light" data-priority="1">#</th> 
                            <th class="text-light" data-priority="3">Imagen</th>
                            <th class="text-light" data-priority="2">Nombre</th> 
                            <th class="text-light" data-priority="6">No Serie</th> 
                            <th class="text-light">Marca</th> 
                            <th class="text-light">Modelo</th> 
                            <th class="text-light">Fecha Compra</th> 
                            <th class="text-light">Lugar Compra</th> 
                            <th class="text-light" data-priority="8 ">Valor Compra</th> 
                            <th class="text-light" data-priority="7">Valor Venta</th> 
                            <th class="text-light">Cantidad</th> 
                            <th class="text-light">Estado</th>
                            <th class="text-light" data-priority="5">Editar</th>
                            <th class="text-light" data-priority="4">Estado</th>
                        </tr> 

                    </thead> 

                    <tbody class="text-dark"> 

                        <%
                            if (request.getAttribute("validacion") == null) {

                                RepuestoVO repVO = new RepuestoVO();
                                RepuestoDAO repDAO = new RepuestoDAO();
                                ArrayList<RepuestoVO> listaVehiculos = repDAO.listar();
                                for (int i = 0; i < listaVehiculos.size(); i++) {
                                    repVO = listaVehiculos.get(i);%> 
                        <tr> 
                            <td scope="col" class="text-center" ><%=repVO.getId()%></td>
                            <td scope="col" >  <a href="ControladorImagenRepuesto?ids=<%=repVO.getId()%>"  target="_blank"> <img src="ControladorImagenRepuesto?ids=<%=repVO.getId()%>" onerror="this.src='assets/img/no_image.png'" width="100" height="100" ></a></td>

                            <td scope="col" ><%=repVO.getNombre()%> </td> 
                            <td scope="col" ><%=repVO.getNo_Serie()%></td> 
                            <td scope="col" ><%=repVO.getMarca()%></td> 
                            <td scope="col" ><%=repVO.getModelo()%></td> 
                            <td scope="col" ><%=repVO.getFecha_Compra()%></td> 
                            <td scope="col" ><%=repVO.getLugar_Compra()%></td> 
                            <td scope="col" ><%=repVO.getValor_Compra()%></td> 
                            <td scope="col" ><%=repVO.getValor_Venta()%></td> 
                            <td scope="col" ><%=repVO.getCantidad()%></td> 
                            <td scope="col" ><%=repVO.getEstado()%></td>
                            <td scope="col" class="justify-content-center" > 
                                <form action="Repuesto" class="m-2" method="POST">
                                    <input type="hidden" value="<%=repVO.getId()%>" name="Id" id="Id">
                                    <input type="hidden" value="4" name="opcion">

                                    <button class="btn btn-outline-success auto mb-1"  ><i><img src="assets/icons/edit.png" width="20px"><i></button>

                                                </form>
                                                </td>

                                                <td>


                                                    <%
                                                        String a = "Activo";

                                                        if (a.equals(repVO.getEstado())) {
                                                    %>
                                                    <form action="Repuesto"  class="m-2"  method="POST">
                                                        <input type="hidden" value="<%=repVO.getId()%>" name="Id" id="Id">
                                                        <input type="hidden" value="2" name="estado">
                                                        <input type="hidden" value="5" name="opcion">

                                                        <button >
                                                            <label class="swtich-container">
                                                                <input type="checkbox" checked  id="switch">
                                                                <div class="slider">

                                                                    <span class="on">Activo</span>
                                                                    <span class="off">Inactivo</span>
                                                                </div>
                                                            </label>
                                                        </button>

                                                        <%} else {%>
                                                        <form action="Repuesto"  class="m-2"  method="POST">
                                                            <input type="hidden" value="<%=repVO.getId()%>" name="Id" id="Id">
                                                            <input type="hidden" value="1" name="estado">
                                                            <input type="hidden" value="6" name="opcion">
                                                            <button>
                                                                <label class="swtich-container">
                                                                    <input type="checkbox"  id="switch">
                                                                    <div class="slider">
                                                                        <span class="on">Activo</span>
                                                                        <span class="off">Inactivo</span>
                                                                    </div>
                                                                </label>
                                                            </button>
                                                            <%}%>
                                                        </form>
                                                </td>

                                                </tr> 
                                                <%}
                                                    }%> 
                                                </tbody>
                                                <tfoot> 
                                                </tfoot> 
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
                                                    jQuery(document).ready(function () {

                                                        jQuery('#responsive-data-table').DataTable({
                                                            language: {
                                                                "sProcessing": "Procesando ...",
                                                                "sLengthMenu": "Mostrar _MENU_ registros",
                                                                "sZeroRecords": "No se encontraron resultados",
                                                                "sEmptyTable": "Ningn dato disponible en esta tabla",
                                                                "sInfo": "Mostrando registros del _START_ al _END_ de un total de _TOTAL_ registros",
                                                                "sInfoEmpty": "Mostrando registros del 0 al 0 de un total de 0 registros",
                                                                "sInfoFiltered": "(filtrado de un total de _MAX_ registros)",
                                                                "sSearch": "Buscar:",
                                                                "sInfoThousands": ",",
                                                                "sLoadingRecords": "Cargando ...",
                                                                "oPaginate": {
                                                                    "sFirst": "Primero",
                                                                    "sLast": "ltimo",
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
                                                            },
                                                            "aLengthMenu": [[10, 20, 50, 75, -1], [10, 20, 50, 75, "All"]],
                                                            "pageLength": 10,
                                                            "dom": '<"row justify-content-between top-information"lf>rt<"row justify-content-between bottom-information"ip><"clear">'


                                                        });

                                                    });
                                                </script>

                                                <script src="assets/plugins/data-tables/jquery.datatables.min.js"></script>
                                                <script src="assets/plugins/data-tables/datatables.bootstrap4.min.js"></script>
                                                <script src="assets/plugins/data-tables/datatables.responsive.min.js"></script>

                                                <!--Script para cargar la pagina en el lugar del scroll anterior -->
                                                <script>
                                                    window.onload = function () {
                                                        var pos = window.name || 0;
                                                        window.scrollTo(0, pos);
                                                    }
                                                    window.onunload = function () {
                                                        window.name = self.pageYOffset || (document.documentElement.scrollTop + document.body.scrollTop);
                                                    }
                                                </script>

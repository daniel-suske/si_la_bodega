<%-- 
    Document   : consultaReparacion
    Created on : 3/09/2020, 02:39:23 PM
    Author     : jony
--%>

<%@page import="modeloVO.ProductoVO"%>
<%@page import="modeloDAO.ProductoDAO"%>
<%@page import="modeloDAO.Detalles_RepuestoDAO"%>
<%@page import="modeloVO.Detalles_RepuestoVO"%>
<%@page import="modeloDAO.RepuestoDAO"%>
<%@page import="modeloVO.RepuestoVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modeloDAO.ReparacionDAO"%>
<%@page import="modeloVO.ReparacionVO"%>
<%@include file="dash1.jsp" %>
<link rel="stylesheet" type="text/css" href="assets/plugins/DataTables/datatables.min.css"/> 

<link href="assets/plugins/data-tables/datatables.bootstrap4.min.css" rel="stylesheet">
<link href="assets/plugins/data-tables/responsive.datatables.min.css" rel="stylesheet">
<link href=""https://unpkg.com/sleek-dashboard/dist/assets/css/sleek.min.css">

      
            <link href="assets/css/consultarReparacion.css" rel="stylesheet" type="text/css"/>


<!-- AQUI VA EL contenido-->
<title>Consultar Reparacion</title>
<div class="content-wrapper">

    <div class="content">
        <div class="card bg-white anchos">
            <div class="card-body ">
                <h3 class="text-center">Gestión de Reparación</h3>
                <br><br>


                <div class="form-inline justify-content-center">



                    <a class="btn btn-success hass m-2" href="registrarReparacion.jsp"> + Nueva Reparación</a>
                    
                <form name="ReporteUsuarios" action="GenerarPDF_Reparacion_1.jsp" target="_blank" class="derecha pull-right">
                    <button class="btn btn-dark btn-lg " type="submit"><i class="mdi mdi-file-pdf mdi-24px mr-2"></i> Generar PDF</button>
                </form>




                </div>



            </div></div>

        <br><br> 
        <div > 
            <% if (request.getAttribute("mensajeError") != null) { %> <h4 class="text-center text-danger">${mensajeError}</h4> <%}%>
        </div> 
        <div class="card bg-white " style="width: 100%">
            <div class="card-body ">

                <div class="basic-data-table pagination-seperated pagination-seperated-rounded ">
                    <table id="responsive-data-table" class="table dt-responsive nowrap table-bordered table-striped thable " cellspading="0" > 
                        <thead class="bg-dark" > 
                            <tr class="thead-dark" > 
                                <th class="text-light" data-priority="1">#</th> 
                                <th class="text-light" data-priority="2">Id Servicio</th> 
                                <th class="text-light" data-priority="5">Producto</th> 
                                <th class="text-light" data-priority="9">Fecha y Hora</th> 
                                <th class="text-light" data-priority="8">Descripcion</th> 
                                <th class="text-light" data-priority="3">Costos</th>
                                <th class="text-light" data-priority="6">Repuestos</th>
                                <th class="text-light" data-priority="7">Tecnico</th> 
                                <th class="text-light" data-priority="4">Acción</th>
                            </tr> 
                        </thead> 

                        <tbody class="text-dark"> 


                            <%
                                if (request.getAttribute("validacion") == null) {

                                    ReparacionVO repVO = new ReparacionVO();
                                    ReparacionDAO repDAO = new ReparacionDAO();
                                    ArrayList<ReparacionVO> listaReparaciones = repDAO.listar();

                                    Detalles_RepuestoVO detaVO = new Detalles_RepuestoVO();
                                    Detalles_RepuestoDAO detaDAO = new Detalles_RepuestoDAO();
                                    ArrayList<Detalles_RepuestoVO> listasRepuestos = detaDAO.listar();

                                    for (int i = 0; i < listaReparaciones.size(); i++) {
                                        repVO = listaReparaciones.get(i);%> 

                            <tr> 
                                <td class="text-center"><%=repVO.getId()%></td>
                                <td><%=repVO.getId_Servicio()%></td>
                                
                                <%
                                ProductoDAO proDAO = new ProductoDAO();
                                for (ProductoVO proVO : proDAO.listarP()) {
                                   String idpro=repVO.getId_Producto();
                                   String idpro1=proVO.getId();
                                   if (idpro.equals(idpro1)){
                                %>
                                <td><%=proVO.getTipo_Producto()+" "+proVO.getMarca()+" "+proVO.getModelo()%></td> 
                                <%}}%>
                                <td><%=repVO.getFecha_Hora()%></td> 
                                <td><%=repVO.getDescripcion()%></td> 
                                <td><%=repVO.getCostos()%></td> 
                                <td>
                                    <%
                                        for (int q = 0; q < listasRepuestos.size(); q++) {
                                            detaVO = listasRepuestos.get(q);%> 



                                    <%
                                        String id1 = detaVO.getId_Reparacion();
                                        String id2 = repVO.getId();
                                        if (id1.equals(id2)) {
                                            int modd = q%2;
                                            if(modd ==0){
                                            
                                    %>

                                    <p class="repuestom"><%=detaVO.getId_Repuesto()%></p><br>

                                    <% }else{%>
                                     <p class="repuestam"><%=detaVO.getId_Repuesto()%></p><br>
                                       <%}} }%>

                                </td>
                                <td><%=repVO.getTecnico()%></td> 

                                <td>
                                    <form action="Reparacion" class="m-2" method="POST">
                                        <input type="hidden" value="<%=repVO.getId()%>" name="Id" id="Id">
                                        <input type="hidden" value="4" name="opcion">
                                        <div class="row justify-content-center">
                                    <button class="btn btn-outline-warning auto mb-1"  ><i><img src="assets/icons/edit.png" width="20px"><i></button>
                                                        </div>
                                                        </form>

                                                        </td>

                                                        </tr> 
                                                        <%}}%> 

                                                        





                                                                                        </tbody>

                                                                                        </table> 
                                                                                        </div>
                                                                                        </div>
                                                                                        </div>
                                                                                        </div>




                                                                                        </div>



                                                                                        <!-- Termina aqui -->




                                                                                        <%@include file="dash2.jsp" %>

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
                                                                                        <script>
                                                                                            document.getElementById(`reparacion_menu`).classList.add("active");
                                                                                            document.getElementById(`reparacion_menu`).classList.add("expand");
                                                                                            document.getElementById(`reparacion_c`).classList.add("show");
                                                                                            document.getElementById(`reparacion_gestion`).classList.add("active");
                                                                                        </script>            
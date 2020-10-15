<%-- 
    Document   : consultaReparacion
    Created on : 3/09/2020, 02:39:23 PM
    Author     : jony
--%>

<%@page import="modeloDAO.Detalles_RepuestoDAO"%>
<%@page import="modeloVO.Detalles_RepuestoVO"%>
<%@page import="modeloDAO.RepuestoDAO"%>
<%@page import="modeloVO.RepuestoVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modeloDAO.ReparacionDAO"%>
<%@page import="modeloVO.ReparacionVO"%>
<%@include file="dash1.jsp" %>
<link rel="stylesheet" type="text/css" href="assets/plugins/DataTables/datatables.min.css"/> 

<!-- AQUI VA EL contenido-->
<title>Consultar Reparacion</title>
<div class="content-wrapper">

    <div class="content">
        <div class="card bg-white" style="width: 104%">
            <div class="card-body ">
                <h5>Consultar Repuestos</h5>
                <br><br>

                <form method="post" action="Repuesto" class="form-inline"> 

                    <input type="hidden" value="3" name="opcion"> 
                    <label for="no_serie" class="m-2"> No_Serie:</label>
                    <input type="text"  class="form-control m-2" name="no_serie" id="no_serie" autofocus="100"> 
                    <div class="form-inline">
                        <button class="btn btn-success m-2">Consultar</button> 
                </form>


                <a class="btn btn-info" style="text-decoration: none; color: #Fff" href="registrarReparacion.jsp">Crear</a>


                <a class="btn btn-dark m-2" style="text-decoration: none; color: #Fff" href="consultarReparacion.jsp">Todo</a>

            </div>



        </div></div>

    <br><br> 
    <div > 
        <% if (request.getAttribute("mensajeError") != null) { %> <h4 class="text-center text-danger">${mensajeError}</h4> <%}%>
    </div> 
    <div class="card bg-white " style="width: 100%">
        <div class="card-body ">
            
            <div class="basic-data-table">
                <table id="basic-data-table" class="table table-sm table-hover table-bordered"  width="100%"> 
                    <thead class="bg-dark" > 
                        <tr class="thead-dark" > 
                            <th class="text-light">#</th> 
                            <th class="text-light">Id Servicio</th> 
                            <th class="text-light">Id Producto</th> 
                            <th class="text-light">Fecha y Hora</th> 
                            <th class="text-light">Descripcion</th> 
                            <th class="text-light">Costos</th>
                            <th class="text-light">Repuestos</th>
                            <th class="text-light">Tecnico</th> 
                            <th class="text-light">Acción</th>
                        </tr> 
                    </thead> 

                    <tbody> 


                        <%
                            if (request.getAttribute("validacion") == null) {

                                ReparacionVO repVO = new ReparacionVO();
                                ReparacionDAO repDAO = new ReparacionDAO();
                                ArrayList<ReparacionVO> listaVehiculos = repDAO.listar();

                                Detalles_RepuestoVO detaVO = new Detalles_RepuestoVO();
                                Detalles_RepuestoDAO detaDAO = new Detalles_RepuestoDAO();
                                ArrayList<Detalles_RepuestoVO> listasRepuestos = detaDAO.listar();

                                for (int i = 0; i < listaVehiculos.size(); i++) {
                                    repVO = listaVehiculos.get(i);%> 

                        <tr> 
                            <td><%=repVO.getId()%></td>
                            <td><%=repVO.getId_Servicio()%></td> 
                            <td><%=repVO.getId_Producto()%></td> 
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
                                %>

                                <p><%=detaVO.getId_Repuesto()%></p><br>

                                <% }
                                    }%>

                            </td>
                            <td><%=repVO.getTecnico()%></td> 

                            <td>
                                <form action="Reparacion" class="m-2" method="POST">
                                    <input type="hidden" value="<%=repVO.getId()%>" name="Id" id="Id">
                                    <input type="hidden" value="4" name="opcion">
                                    <div class="row justify-content-center">
                                        <button class="btn btn-warning mb-2"><i><img src="assets/icons/editar.png" width="25px"><i></button>
                                                    </div>
                                                    </form>

                                                    </td>

                                                    </tr> 
                                                    <%}%> 

                                                    <%} else {%>
                                                    <%
                                                        ReparacionVO repVO = (ReparacionVO) request.getAttribute("repuesto");
                                                        if (repVO != null) {
                                                    %>
                                                    </thead> 

                                                    <tbody> 
                                                        <tr> 
                                                            <td scope="col"><%=repVO.getId()%></td>
                                                            <td scope="col"><%=repVO.getId_Servicio()%></td> 
                                                            <td scope="col"><%=repVO.getId_Producto()%></td> 
                                                            <td scope="col"><%=repVO.getFecha_Hora()%></td> 
                                                            <td scope="col"><%=repVO.getDescripcion()%></td> 
                                                            <td scope="col"><%=repVO.getCostos()%></td> 
                                                            <td scope="col"><%=repVO.getTecnico()%></td> 
                                                            <td scope="col">
                                                                <form action="Reparacion" class="m-2" method="POST">
                                                                    <input type="hidden" value="<%=repVO.getId()%>" name="Id" id="Id">
                                                                    <input type="hidden" value="4" name="opcion">
                                                                    <div class="row justify-content-center">
                                                                        <button class="btn btn-warning mb-2"><i><img src="assets/icons/editar.png" width="25px"><i></button>
                                                                                    </div>
                                                                    <h1>dfdfdf</h1>
                                                                                    </form>
                                                                                    <%}
                                                                                        }%>





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
                                                                                        $(document).ready(function () {
                                                                                            $("#basic-data-table").DataTable({
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



                                                                                    
<%-- 
    Document   : Usuarios
    Created on : 17-ago-2020, 23:49:09
    Author     : Yeison
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="modeloDAO.FacturaDAO"%>
<%@page import="modeloVO.FacturaVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="dash1.jsp" %>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="ContentType" content="text/html">
    <link rel="stylesheet" type="text/css" href="assets/plugins/DataTables/datatables.min.css"/> 
<!DOCTYPE html>


        <!--formulario css -->
    
        <!-- PLUGINS CSS STYLE -->

                <!-- AQUI VA EL contenido-->
                <title>Consultar Factura</title>
                <div class="content-wrapper">
                    <div class="content">
                        <div class="card bg-white" style="width: 100%">
                         
                            <div class="card-body " >
                               
                                <h5 >Factura</h5>
                                <div class="form-inline">
                    <form class="form-inline" method="post" action="Factura">
                        
                    </form>
                         </div>
                                                    
                        <button class="btn btn-dark btn-lg m-3 text-light">
                            <a href="consultarFactura.jsp" style="text-decoration:none; color:white">Todos Los Registros</a>
                        </button>
                        <button class="btn btn-primary btn-lg m-3 text-light">
                            <a href="RegistrarFactura.jsp" style="text-decoration:none; color:white">Crear Registro</a>
                            <input type="hidden" value="2" name="opcion">
                        </button>
                        
                    </form>
                
                            </div>
                        </div>
                       
                       
 <div class="card-body ">
                    <div class="card bg-white" style="width: 100%">
            <div class="card-body ">
                <div class="basic-data-table">
                    <table  id="datatable" class="table table-responsive table-sm table-bordered table-hover" style="width:100%" > 
                    <thead class=""style="background-color: #2C5AF8" > 
                        <tr>  
                            <th class="text-light">Id</th>
                            <th class="text-light">Fecha</th>
                            <th class="text-light">Servicio</th>
                            <th class="text-light">Tipo de Pago</th>
                            <th class="text-light">Valor Total</th>
                            <th class="text-light">Garantia</th>
                            <th class="text-light">Recibe</th>
                            <th class="text-light">Acción</th>   
                        </tr> 
                    </thead>
                    <tbody >
                        <%
                            FacturaVO fasVO = (FacturaVO) request.getAttribute("Factura");
                            if (fasVO == null) {

                                FacturaVO faVO = new FacturaVO();
                                FacturaDAO faDAO = new FacturaDAO();
                                ArrayList<FacturaVO> ListaFacturas = faDAO.listar();
                                for (int i = 0; i < ListaFacturas.size(); i++) {

                                    faVO = ListaFacturas.get(i);
                        %>                              
                        <tr class="text-dark justify-content-center">
                            <td><%=faVO.getId()%></td>
                            <td><%=faVO.getFecha()%></td>
                            <td scope="col" class="text-center"><%=faVO.getServicio()%></td>
                            <td scope="col" class="text-center"><%=faVO.getTipo_Pago()%></td>
                            <td><%=faVO.getValor_Total()%></td>
                            <td><%=faVO.getGarantia()%></td>
                            <td><%=faVO.getRecibe()%></td>                          
                            <td>
                                <form action="Factura" method="post">
                                    <input type="hidden" value="2" name="opcion">
                                    <input type="hidden" value="<%=faVO.getId()%>" name="textId" id="id">
                                    <div class="row justify-content-center">
                                        <button class="btn btn-primary"><i><img src="assets/icons/editar.png" width="18px"></i></button>                                        
                                    </div>
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
                </div>

                         
<%@include file="dash2.jsp" %>
 <script type="text/javascript" src="assets/plugins/DataTables/datatables.min.js"></script>
<script>
        $(document).ready(function(){
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
<script>
        document.getElementById(`factura_menu`).classList.add("active");
        document.getElementById(`factura_menu`).classList.add("expand");
        document.getElementById(`factura_c`).classList.add("show");
        document.getElementById(`factura_gestion`).classList.add("active");
</script>     
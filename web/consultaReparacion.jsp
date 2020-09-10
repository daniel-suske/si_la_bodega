<%-- 
    Document   : consultaReparacion
    Created on : 3/09/2020, 02:39:23 PM
    Author     : jony
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="modeloDAO.ReparacionDAO"%>
<%@page import="modeloVO.ReparacionVO"%>
<%@include file="dash1.jsp" %>

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
    <div class="card bg-white" style="width: 104%">
        <div class="card-body ">
            <table class="table table-sm table-hover table-bordered" > 
                <thead class=""style="background-color: #443F4F" > 
                    <tr> 
                        <th class="text-light">#</th> 
                        <th class="text-light">Id_Servicio</th> 
                        <th class="text-light">Id_Producto</th> 
                        <th class="text-light">Fecha_Hora</th> 
                        <th class="text-light">Descripcion</th> 
                        <th class="text-light">Costos</th> 
                        <th class="text-light">Tecnico</th> 
                        <th class="text-light">Acción</th>
                    </tr> 



                    <%
                        if (request.getAttribute("validacion") == null) {

                            ReparacionVO repVO = new ReparacionVO();
                            ReparacionDAO repDAO = new ReparacionDAO();
                            ArrayList<ReparacionVO> listaVehiculos = repDAO.listar();
                            for (int i = 0; i < listaVehiculos.size(); i++) {
                                repVO = listaVehiculos.get(i);%> 
                </thead> 

                <tbody> 
                    <tr> 
                        <td><%=repVO.getId()%></td>
                        <td><%=repVO.getId_Servicio()%></td> 
                        <td><%=repVO.getId_Producto()%></td> 
                        <td><%=repVO.getFecha_Hora()%></td> 
                        <td><%=repVO.getDescripcion()%></td> 
                        <td><%=repVO.getCostos()%></td> 
                        <td><%=repVO.getTecnico()%></td> 

                        <td>
                            <form action="Repuesto" class="m-2" method="POST">
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
                                                        <td><%=repVO.getId()%></td>
                                                        <td><%=repVO.getId_Servicio()%></td> 
                                                        <td><%=repVO.getId_Producto()%></td> 
                                                        <td><%=repVO.getFecha_Hora()%></td> 
                                                        <td><%=repVO.getDescripcion()%></td> 
                                                        <td><%=repVO.getCostos()%></td> 
                                                        <td><%=repVO.getTecnico()%></td> 
                                                        <td>
                                                            <form action="Repuesto" class="m-2" method="POST">
                                                                <input type="hidden" value="<%=repVO.getId()%>" name="Id" id="Id">
                                                                <input type="hidden" value="4" name="opcion">
                                                                <div class="row justify-content-center">
                                                                    <button class="btn btn-warning mb-2"><i><img src="assets/icons/editar.png" width="25px"><i></button>
                                                                                </div>
                                                                                </form>
                                                                                <%}}%>





                                                                                </tbody>
                                                                                <tfoot> 
                                                                                </tfoot> 
                                                                                </table> 
                                                                                </div>
                                                                                </div>




                                                                                </div>
                                                                                </div>   

                                                                                <!-- Termina aqui -->




                                                                                <%@include file="dash2.jsp" %>


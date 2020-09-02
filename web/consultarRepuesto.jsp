<%@page import="java.util.ArrayList"%>
<%@page import="modeloDAO.RepuestoDAO"%>
<%@page import="modeloVO.RepuestoVO"%>
<%@include file="dash1.jsp" %>

<!-- AQUI VA EL contenido-->
<title>Consultar Repuesto</title>
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
               
                    <button class="btn btn-info">
                        <a style="text-decoration: none; color: #Fff" href="registrarRepuesto.jsp">Crear</a>
                    </button>
                    <button class="btn btn-dark m-2">
                        <a style="text-decoration: none; color: #Fff" href="consultarRepuesto.jsp">All</a>
                    </button>
                </div>


                
            </div></div>

        <br><br> 
        <div style="color:red"> 
            <% if (request.getAttribute("mensajeError") != null) { %> ${mensajeError} <%}%>
        </div> 
        <div class="card bg-white" style="width: 104%">
            <div class="card-body ">
                <table class="table col-10 table-hover table-bordered" > 
                    <thead class=""style="background-color: #443F4F" > 
                        <tr> 
                            <th class="text-light">#</th> 
                            <th class="text-light">Nombre</th> 
                            <th class="text-light">No_Serie</th> 
                            <th class="text-light">Marca</th> 
                            <th class="text-light">Modelo</th> 
                            <th class="text-light">Fecha_Compra</th> 
                            <th class="text-light">Lugar_Compra</th> 
                            <th class="text-light">Valor_Compra</th> 
                            <th class="text-light">Valor_Venta</th> 
                            <th class="text-light">Cantidad</th> 
                            <th class="text-light">Estado</th>
                            <th class="text-light">Acción</th>
                        </tr> 



                        <%
                            if (request.getAttribute("validacion") == null) {

                                RepuestoVO repVO = new RepuestoVO();
                                RepuestoDAO repDAO = new RepuestoDAO();
                                ArrayList<RepuestoVO> listaVehiculos = repDAO.listar();
                                for (int i = 0; i < listaVehiculos.size(); i++) {
                                    repVO = listaVehiculos.get(i);%> 
                    </thead> 

                    <tbody> 
                        <tr> 
                            <td><%=repVO.getId()%></td>
                            <td><%=repVO.getNombre()%></td> 
                            <td><%=repVO.getNo_Serie()%></td> 
                            <td><%=repVO.getMarca()%></td> 
                            <td><%=repVO.getModelo()%></td> 
                            <td><%=repVO.getFecha_Compra()%></td> 
                            <td><%=repVO.getLugar_Compra()%></td> 
                            <td><%=repVO.getValor_Compra()%></td> 
                            <td><%=repVO.getValor_Venta()%></td> 
                            <td><%=repVO.getCantidad()%></td> 
                            <td><%=repVO.getEstado()%></td>
                            <td>
                                <form action="Repuesto" class="m-2" method="POST">
                                    <input type="hidden" value="<%=repVO.getId()%>" name="Id" id="Id">
                                    <input type="hidden" value="4" name="opcion">
                                    <div class="row justify-content-center">
                                        <button class="btn btn-warning mb-2"><i><img src="assets/icons/editar.png" width="25px"><i></button>
                                                    </div>
                                                    </form>
                                                    <form action="Repuesto"  class="m-2"  method="POST">



                                                        <%
                                                            String a = "Activo";

                                                            if (a.equals(repVO.getEstado())) {
                                                        %>
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
                                                    <%}%> 

                                                    <%} else {%>
                                                    <%
                                                        RepuestoVO repVO = (RepuestoVO) request.getAttribute("repuesto");
                                                        if (repVO != null) {
                                                    %>
                                                    </thead> 

                                                    <tbody> 
                                                        <tr> 
                                                            <td><%=repVO.getId()%></td>
                                                            <td><%=repVO.getNombre()%></td> 
                                                            <td><%=repVO.getNo_Serie()%></td> 
                                                            <td><%=repVO.getMarca()%></td> 
                                                            <td><%=repVO.getModelo()%></td> 
                                                            <td><%=repVO.getFecha_Compra()%></td> 
                                                            <td><%=repVO.getLugar_Compra()%></td> 
                                                            <td><%=repVO.getValor_Compra()%></td> 
                                                            <td><%=repVO.getValor_Venta()%></td> 
                                                            <td><%=repVO.getCantidad()%></td> 
                                                            <td><%=repVO.getEstado()%></td>
                                                            <td>
                                                                <form action="Repuesto" class="m-2" method="POST">
                                                                    <input type="hidden" value="<%=repVO.getId()%>" name="Id" id="Id">
                                                                    <input type="hidden" value="4" name="opcion">
                                                                    <div class="row justify-content-center">
                                                                    <button class="btn btn-warning mb-2"><i><img src="assets/icons/editar.png" width="25px"><i></button>
                                                                                </div>
                                                                                </form>
                                                                                <form action="Repuesto"  class="m-2"  method="POST">



                                                                                    <%
                                                                                        String a = "Activo";

                                                                                        if (a.equals(repVO.getEstado())) {
                                                                                    %>
                                                                                    <input type="hidden" value="<%=repVO.getId()%>" name="Id" id="Id">
                                                                                    <input type="hidden" value="2" name="estado">

                                                                                    <input type="hidden" value="5" name="opcion">

                                                                                    <button>
                                                                                        <label class="swtich-container">
                                                                                            <input type="checkbox" checked  id="switch">
                                                                                            <div class="slider">

                                                                                                <span class="on">Activo</span>
                                                                                                <span class="off">Inactivo</span>
                                                                                            </div>
                                                                                        </label>    
                                                                                    </button>
                                                                                    <%} else {%>

                                                                                    <input type="hidden" value="<%=repVO.getId()%>" name="Id" id="Id">
                                                                                    <input type="hidden" value="1" name="estado">

                                                                                    <input type="hidden" value="6" name="opcion">
                                                                                    <button>
                                                                                        <label class="swtich-container">
                                                                                            <input type="checkbox"   id="switch">
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
                                                                                <%}%> 

                                                                                <%}%>
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
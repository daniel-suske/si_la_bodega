<%-- 
    Document   : Usuarios
    Created on : 17-ago-2020, 23:49:09
    Author     : Yeison
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="modeloDAO.FacturaDAO"%>
<%@page import="modeloVO.FacturaVO"%>
<%@include file="dash1.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


        <!--formulario css -->
        <link rel="stylesheet" href="assets/css/registrarRepuesto.css">
        <!-- PLUGINS CSS STYLE -->

                <!-- AQUI VA EL contenido-->
                <title>Consultar Factura</title>
                <div class="content-wrapper">
                    <div class="content">
                        <div class="card bg-white" style="width: 104%">
                            <div class="card-body ">
                                <h1 >Factura</h1>
                <div style="display:flex; align-items:center; justify-content:center" >




                    <form class="form-inline center-block " method="post" action="Factura">


                        <tr>

                            <th>

                                <label>IdFactura:</label>
                                <input class="form-control m-2" type="text" name="textId">
                            </th>
                        </tr>

                        <br><br>
                        <button class="btn btn-warning ml-2 ">Consultar</button>
                        <br>
                        <button class="btn btn-dark ml-2">
                            <a href="consultarFactura.jsp" style="text-decoration:none; color:white">Todos</a>
                        </button>
                        <button class="btn btn-success ml-2">
                            <a href="RegistrarFactura.jsp" style="text-decoration:none; color:white">Crear</a>
                        </button>
                        <input type="hidden" value="2" name="opcion">
                    </form><br><br>

                </div>
                <div class="text-center" style="color: red">
                    
                   
                </div>
               

                    <div class="card bg-white" style="width: 100%">
            <div class="card-body ">
                <table class="table table-sm table-hover table-bordered" > 
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
                        
                        <%
                            FacturaVO fasVO = (FacturaVO) request.getAttribute("Factura");
                            if (fasVO == null) {

                                FacturaVO faVO = new FacturaVO();
                                FacturaDAO faDAO = new FacturaDAO();
                                ArrayList<FacturaVO> ListaFacturas = faDAO.listar();
                                for (int i = 0; i < ListaFacturas.size(); i++) {

                                    faVO = ListaFacturas.get(i);
                        %>
                    </thead>
                        <tbody class="table table-striped table-hover text text-dark">
                        <tr>
                            
                            <td><%=faVO.getId()%></td>
                            <td><%=faVO.getFecha()%></td>
                            <td><%=faVO.getServicio()%></td>
                            <td><%=faVO.getTipo_Pago()%></td>
                            <td><%=faVO.getValor_Total()%></td>
                            <td><%=faVO.getGarantia()%></td>
                            <td><%=faVO.getRecibe()%></td>
                            <td>
                                <form action="Factura" method="post">
                                    <input type="hidden" value="5" name="opcion">
                                     <input type="hidden" value="<%=faVO.getId()%>" name="textId">
                                     <div class="row justify-content-center">
                                    <button class="btn btn-success">Editar</button>
                                    
                                     </div>
                                     
                                </form>
                            </td>

                        </tr>
                        </tbody>
                        <%}
                        } else {
                            FacturaVO faVO = (FacturaVO) request.getAttribute("Factura");
                            if (faVO != null) {
                        %>
                        

                        <tbody>
                        <tr>
                            <td><%=faVO.getId()%></td>
                            <td><%=faVO.getFecha()%></td>
                            <td><%=faVO.getServicio()%></td>
                            <td><%=faVO.getTipo_Pago()%></td>
                            <td><%=faVO.getValor_Total()%></td>
                            <td><%=faVO.getGarantia()%></td>
                            <td><%=faVO.getRecibe()%></td>
                            <td>
                               <form action="Factura" method="post">
                                    <input type="hidden" value="5" name="opcion">
                                     <input type="hidden" value="<%=faVO.getId()%>" name="textId">
                                    <button class="btn btn-success">Editar</button>
                                    
                                    
                                </form>
                            </td>

                        </tr>
                        </tbody>
                        <%}}%>

                    </table>

                
                   
            </div>             
        </div>  
<%@include file="dash2.jsp" %>
<%-- 
    Document   : actualizarProducto
    Created on : 17/09/2020, 01:57:36 PM
    Author     : Patiño Sauarez
--%>
<%@page import="modeloVO.ProductoVO" %>
<%@page import="modeloDAO.ProductoDAO" %>
<%@page import="modeloDAO.EstadoDAO" %>
<%@page import="modeloVO.EstadoVO" %>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="dash1.jsp" %>
<link rel="stylesheet" type="text/css" href="assets/css/RegistrarFactura.css"/>

<title> Actualizar Producto</title>
<!-- AQUI VA EL contenido-->


<div class="content-wrapper">
    <main class="container mb-5">
        <div class="row">
            <h1 class="col-12 d-flex justify-content-center p-4 btn-primary w-100">Actualizar Producto</h1>
        </div>
        <section class="row mt-5">
            <div class="card w-100  m-auto">
                <div class="card-header container bg-secondary ">
                    <h2 class="m-auto">Producto</h2>
                </div>      


                <div class="card-body">
                    <form class="form"  method="post" action="Producto" id="form">

                        <%  ProductoVO PaVO = (ProductoVO) request.getAttribute("Producto");
                                    if (PaVO != null) {%>
                        <div class="form-row content ">
                            <div class="form-group col-md-6 " id="grupo__producto">
                                <label for="producto" class="formulario__label mark">Tipo Producto:</label>
                                <div class="formulario__grupo-input">
                                    <input class="form-control-lg col-lg-11" type="text" name="producto"  value="<%=PaVO.getTipo_Producto()%>">
                                    <i class="formulario__validacion-estado fas fa-exclamation-circle"></i>
                                </div>

                                <p class="formulario__input-error">Debe completar el nombre del producto</p>

                            </div>
                            <div class="form-group col-md-6" id="grupo__marca">
                                <label for="marca" class="formulario__label mark ">Marca</label>
                                <div class="formulario__grupo-input ">
                                    <input class="form-control-lg col-lg-11" type="text" name="marca" value="<%=PaVO.getMarca()%>">
                                    <i class="formulario__validacion-estado fas fa-exclamation-circle"></i>
                                </div>  
                                <p class="formulario__input-error">Debe digitar una marca del producto corrrespondiente</p>
                            </div>
                        </div>
                        <div class="form-row content">
                            <div class="form-group col-md-12" id="grupo__modelo">
                                <label for="modelo" class="formulario__label mark">Modelo:</label>

                                <div class="formulario__grupo-input">
                                    <input class="form-control-lg col-lg-11" type="text" name="modelo" value="<%=PaVO.getModelo()%>">
                                    <i class="formulario__validacion-estado fas fa-exclamation-circle"></i>

                                </div>
                                <p class="formulario__input-error">El modelo deber ser acorde al la marca</p> 
                            </div>
                            <div class="form-group col-md-6 " id="grupo__serie">
                                <label for="serie" class="formulario__label mark ">Numero de Serie :</label>
                                <div class="formulario__grupo-input">
                                    <input class="form-control-lg col-lg-11" type="text" name="serie" value="<%=PaVO.getNumero_Serie()%>">
                                    <i class="formulario__validacion-estado fas fa-exclamation-circle"></i>

                                </div>

                                <p class="formulario__input-error">Digite Numeros y letras Exactas de serie</p>
                            </div>

                            <div class="form-group col-md-6" id="grupo__status">
                                <label for="status" class="formulario__label mark ">Estado :</label>

                                <div class="formulario__grupo-input">

                                    <i class="formulario__validacion-status fas fa-exclamation-circle"></i>
                                    <select name="status"  class="form-control-lg col-lg-11">

                                        <%
                                            EstadoDAO estDAO = new EstadoDAO();
                                            for (EstadoVO estVO : estDAO.listarEA()) {
                                                String a = estVO.getNombre();
                                                String b = estVO.getId();
                                                if (a.equals(b)) {

                                        %>
                                        <option value="<%= estVO.getId()%>" selected> <%= estVO.getNombre()%></option>
                                        <%
                                        } else {
                                        %>
                                        <option value="<%= estVO.getId()%>" > <%= estVO.getNombre()%></option>
                                        <%
                                                }
                                            }
                                        %>
                                    </select>
                                </div>
                                <p class="formulario__input-error">Digite su estado activo</p>
                            </div>


                        </div>

                        <div class="formulario__btn ">
                            <button type="submit "class="formulario__btn btn btn-success border border-dark btn-lg btn-block col-lg-8 mt-5">Actualizar</button>     
                            <input type="hidden" value="3" name="opcion">
                            <input type="hidden" value="<%=PaVO.getId()%>" name="Id">

                        </div>
                </div>
            </div>

            </form>
            </div>
            </div>

        </section>
    </main>


    <center>
        <div style="color:Red">
            <%if (request.getAttribute("mensajeFallido") != null) {%>
            ${mensajeFallido}
            <% } else { %>
            ${mensajeExitoso}
            <% } %>
        </div>
    </center>
</div>
<%} else {%>

<h1>No hay datos a actualizar </h1>
<a href="consultarProducto.jsp" class="text-white btn btn-danger">Volver </a>
<%}%>





<!-- Termina aqui -->
<%@include file="dash2.jsp" %>

<%-- 
    Document   : registrarReparacion
    Created on : 3/09/2020, 02:29:09 PM
    Author     : jony
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="dash1.jsp" %>
<title>Registrar Reparacion</title>
<link rel="stylesheet" href="assets/css/registrarReparacion.css">

<div class="content-wrapper">

    <div class="content">


        <h3>Registrar Reparacion</h3>
        <br><br>

        <form action="Reparacion" class="formulario" id="formulario" name="formulario"
              method="POST">
            <div class="formulario__grupo" id="grupo__id_servicio">
                <span>
                    <label for="id_servicio" class="formulario__label">Id Servicio:</label>
                    <div class="formulario__grupo-input">
                        <input type="text" class="formulario__input" name="id_servicio" id="id_servicio"
                               placeholder="Id Servicio">
                        <i class="formulario__validacion-estado far fa-times-circle"></i>
                    </div>
                    <p class="formulario__input-error">Digite un Id servicio</p>
            </div>

            <div class="formulario__grupo" id="grupo__id_producto">
                <label for="id_producto" class="formulario__label">Id_Producto:</label>
                <div class="formulario__grupo-input">
                    <input type="text" class="formulario__input" name="id_producto" id="id_producto"
                           placeholder="58">

                    <i class="formulario__validacion-estado far fa-times-circle"></i>
                </div>
                <p class="formulario__input-error">Digite un id servicio</p>
            </div>

            <div class="formulario__grupo" id="grupo__fecha_compra">
                <label for="dates" class="formulario__label">Fecha Reparacion:</label>
                <div class="formulario__grupo-input">

                    <input type="date" class="formulario__input" name="dates" id="dates">
                    <input type="hidden" name="fecha" id="fecha" >
                    <i class="formulario__validacion-estado far fa-times-circle"></i>
                </div>
                <p class="formulario__input-error">Debe seleccionar una fecha de reparacion</p>
            </div>



            <div class="formulario__grupo" id="grupo__descripcion">
                <label for="descripcion " class="formulario__label">Descripcion:</label>
                <div class="formulario__grupo-input">
                    <textarea type="text" class="formulario__input" name="descripcion" id="descripcion"
                              placeholder="Descripcion del servicio"></textarea>
                    <i class="formulario__validacion-estado far fa-times-circle"></i>
                </div>
                <p class="formulario__input-error">La descripcion puede contener entre 3 a 50 digitos y
                    pueden contener letras, guiones y numeros</p>
            </div>

            



            <div class="formulario__grupo" id="grupo__costos">
                <label for="costos" class="formulario__label">Costos: </label>
                <div class="formulario__grupo-input">
                    <input type="number" class="formulario__input" name="costos" id="costos"
                           placeholder="Ejem: $ 4'183.000">
                    <i class="formulario__validacion-estado far fa-times-circle"></i>
                </div>
                <p class="formulario__input-error">Los costos solo pueden contener numeros</p>
            </div>

            <div class="formulario__grupo" id="grupo__tecnico">
                <label for="tecnico" class="formulario__label">Tecnico</label>
                <div class="formulario__grupo-input">
                    <input type="number" class="formulario__input" name="tecnico" id="tecnico"
                           placeholder="Ejem: 1">
                    <i class="formulario__validacion-estado far fa-times-circle"></i>
                </div>
                <p class="formulario__input-error">El tecnico solo puede contener numeros</p>
            </div>

                  <div class="formulario__grupo" id="grupo__repuesto">
                            <label for="repuesto" class="formulario__label">Repuesto</label>
                            <div class="formulario__grupo-inputs">
                                <select class="formulario__inputs" name="repuesto" id="repuesto">
                                    <option value="1">Activo</option>
                                    <option value="2">Inactivo</option>
                                </select>
                                        <a id="addElement" class="btn btn-secondary text-light"
                                            style="text-decoration:none">Agregar</a>
                                        
                            </div>
                            <p class="formulario__input-error">El valor de venta debe ser de 2 a 18 digitos y solo puede
                                contener numeros</p>
                        </div>



                        <div class="form-group mt-2" id="list-categories">

                        </div>

            <div>
                <input type="hidden" name="opcion" id="opcion" value="1">
                <input type="hidden" name="estado" id="estado" value="1">
            </div>




            <div class="formulario__mensaje" id="formulario__mensaje">
                <p>
                    <i class="fas fa-exclamation-triangle"></i> <b>Error: </b>Porfavor Diligencie los Campos
                    del Formulario Correctamente </p>

            </div>
    </div>

    <div class="formulario__grupo formulario__grupo-btn-enviar">
        <button  class="formulario__btn">Registrarme</button>
        <p class="formulario__mensaje-exito" id="formulario__mensaje-exito">Formulario Enviado
            Correctamente</p>
        <div > 
            <% if (request.getAttribute("mensajeError") != null) { %> <h3 class="text-danger">${mensajeError}</h3> <%}%>
    </div> 





        </form>


        <br>
    </div>
</div>   
<script src="assets/js/registrarReparacion.js" type="text/javascript"></script>

<%@include file="dash2.jsp" %>
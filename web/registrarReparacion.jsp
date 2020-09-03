<%-- 
    Document   : registrarReparacion
    Created on : 3/09/2020, 02:29:09 PM
    Author     : jony
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="dash1.jsp" %>
<title>Registrar Reparacion</title>
<link rel="stylesheet" href="assets/css/registrarRepuesto.css">
<div class="content-wrapper">

    <div class="content">


        <h3>Registrar Reparacion</h3>
        <br><br>

        <form action="Repuesto" class="formulario" id="formulario" name="formulario"
              method="POST">
            <div class="formulario__grupo" id="grupo__nombre">
                <span>
                    <label for="nombre" class="formulario__label">Id Servicio:</label>
                    <div class="formulario__grupo-input">
                        <input type="text" class="formulario__input" name="id_servicio" id="id_servicio"
                               placeholder="Ejem: Bomba de Agua">
                        <i class="formulario__validacion-estado far fa-times-circle"></i>
                    </div>
                    <p class="formulario__input-error">Digite un Id servicio</p>
            </div>

            <div class="formulario__grupo" id="grupo__no_serie">
                <label for="no_serie" class="formulario__label">Id_Producto</label>
                <div class="formulario__grupo-input">
                    <input type="text" class="formulario__input" name="id_producto" id="id_producto"
                           placeholder="58">

                    <i class="formulario__validacion-estado far fa-times-circle"></i>
                </div>
                <p class="formulario__input-error">Los Numero de Serie debe ser de 10 a 50 digitos y
                    pueden
                    contener numeros, guiones y letras</p>
            </div>

            <div class="formulario__grupo" id="grupo__marca">
                <label for="no_serie" class="formulario__label">Marca:</label>
                <div class="formulario__grupo-input">
                    <input type="text" class="formulario__input" name="marca" id="marca"
                           placeholder="Ejem: LG">
                    <i class="formulario__validacion-estado far fa-times-circle"></i>
                </div>
                <p class="formulario__input-error">La Marca debe ser de 2 a 50 digitos y
                    pueden
                    contener guiones y letras</p>
            </div>



            <div class="formulario__grupo" id="grupo__modelo">
                <label for="modelo" class="formulario__label">Modelo:</label>
                <div class="formulario__grupo-input">
                    <input type="text" class="formulario__input" name="modelo" id="modelo"
                           placeholder="Ejem: byt-23w1">
                    <i class="formulario__validacion-estado far fa-times-circle"></i>
                </div>
                <p class="formulario__input-error">El Modelo debe contener entre 3 a 50 digitos y
                    pueden contener letras, guiones y numeros</p>
            </div>

            <div class="formulario__grupo" id="grupo__fecha_compra">
                <label for="fecha_compra" class="formulario__label">Fecha Compra:</label>
                <div class="formulario__grupo-input">

                    <input type="date" class="formulario__input" name="dates" id="dates">
                    <input type="hidden" name="fecha" id="fecha" >
                    <i class="formulario__validacion-estado far fa-times-circle"></i>
                </div>
                <p class="formulario__input-error">Debe seleccionar una fecha de compra</p>
            </div>



            <div class="formulario__grupo" id="grupo__lugar_compra">
                <label for="lugar_compra" class="formulario__label">Lugar Compra:</label>
                <div class="formulario__grupo-input">
                    <input type="text" class="formulario__input" name="lugar_compra" id="lugar_compra"
                           placeholder="Ejem: almacen el reparador calle 7 #1">
                    <i class="formulario__validacion-estado far fa-times-circle"></i>
                </div>
                <p class="formulario__input-error">El Lugar de Compra debe ser de 10 a 100 digitos y pueden
                    contener numeros, letras guion y caracteres</p>
            </div>

            <div class="formulario__grupo" id="grupo__valor_compra">
                <label for="valor_compra" class="formulario__label">Valor Compra:</label>
                <div class="formulario__grupo-input">
                    <input type="number" class="formulario__input" name="valor_compra" id="valor_compra"
                           placeholder="Ejem: 150.000 $">
                    <i class="formulario__validacion-estado far fa-times-circle"></i>
                </div>
                <p class="formulario__input-error">El valor de compra debe ser de 2 a 18 digitos y solo
                    puede
                    contener numeros</p>
            </div>

            <div class="formulario__grupo" id="grupo__valor_venta">
                <label for="valor_venta" class="formulario__label">Valor Venta:</label>
                <div class="formulario__grupo-input">
                    <input type="number" class="formulario__input" name="valor_venta" id="valor_venta"
                           placeholder="Ejem:150.000 $">
                    <i class="formulario__validacion-estado far fa-times-circle"></i>
                </div>
                <p class="formulario__input-error">El valor de venta debe ser de 2 a 18 digitos y solo puede
                    contener numeros</p>
            </div>

            <div class="formulario__grupo" id="grupo__cantidad">
                <label for="cantidad" class="formulario__label">Cantidad:</label>
                <div class="formulario__grupo-input">
                    <input type="number" class="formulario__input" name="cantidad" id="cantidad">
                    <i class="formulario__validacion-estado far fa-times-circle"></i>
                </div>
                <p class="formulario__input-error">La cantidad de repuestos debe ser minimo de 1 a 8 digitos
                    y debe
                    contener numeros</p>
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





        </form>


        <br>
    </div>
</div>   
<script src="assets/js/registrarRepuesto.js" language="javascript" type="text/javascript"></script>

<%@include file="dash2.jsp" %>
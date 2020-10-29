<%-- 
    Document   : registrarReparacion
    Created on : 3/09/2020, 02:29:09 PM
    Author     : jony
--%>

<%@page import="modeloVO.ProductoVO"%>
<%@page import="modeloDAO.ProductoDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modeloVO.ServicioVO"%>
<%@page import="modeloDAO.ServicioDAO"%>
<%@page import="modeloVO.RepuestoVO"%>
<%@page import="modeloDAO.RepuestoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="dash1.jsp" %>
<title>Registrar Reparacion</title>
<link rel="stylesheet" href="assets/css/registrarReparacion.css">

<div class="content-wrapper">

    <div class="content">
 <div class="card bg-white justify-content-center mb-2" style="width: 100% ">
    <div class="card-body ">

        <h3 class="text-center">Registrar Reparación</h3>
        <br><br>

        <form action="Reparacion" class="formulario" id="formulario" name="formulario"
              method="POST">
            <div class="formulario__grupo" id="grupo__id_servicio">
                <span>
                    <label for="id_servicio" class="formulario__label">Servicio:</label>
                    <div class="formulario__grupo-input">

                        <select class="formulario__input" name="id_servicio" id="id_servicio">
                            <option disabled selected value="" >Seleccione un Servicio...</option>
                           
                            <%                                ServicioDAO serviDAO = new ServicioDAO();
                                for (ServicioVO serviVO : serviDAO.listarS()) {
                            %>
                            <option value="<%=serviVO.getId()%>"><%=serviVO.getDescripcion()%></option>

                            <%
                                }
                            %>



                        </select>
                        <i class="formulario__validacion-estado far fa-times-circle"></i>
                    </div>
                    <p class="formulario__input-error">Seleccione un Servicio</p>
            </div>

            <div class="formulario__grupo" id="grupo__id_producto">
                <label for="id_producto" class="formulario__label">Producto:</label>
                <div class="formulario__grupo-input">
                    
                    <select class="formulario__input" name="id_producto" id="id_producto">
                            <option disabled selected value="" >Seleccione un Producto...</option>
                           
                            <%                                ProductoDAO proDAO = new ProductoDAO();
                                for (ProductoVO proVO : proDAO.listarP()) {
                                    String es=proVO.getEstado();
                                    if(es.equals("Activo")){
                            %>
                            <option value="<%=proVO.getId()%>"><%=proVO.getTipo_Producto()%> <%=proVO.getMarca()%> <%=proVO.getModelo()%>  <%=proVO.getNumero_Serie()%></option>

                            <%
                                }}
                            %>



                        </select>

                    <i class="formulario__validacion-estado far fa-times-circle"></i>
                </div>
                <p class="formulario__input-error">Seleccione un producto</p>
            </div>

            <div class="formulario__grupo" id="grupo__dates">
                <label for="dates" class="formulario__label">Fecha y Hora Reparacion:</label>
                <div class="formulario__grupo-input">

                    <input type="datetime-local" class="formulario__input" onchange=" agre()" onblur=" agre()"  name="dates" id="dates">
                    <input type="hidden" name="fecha" id="fecha" >
                    <i class="formulario__validacion-estado far fa-times-circle"></i>
                </div>
                <p class="formulario__input-error">Debe seleccionar una fecha de reparacion</p>
            </div>



            <div class="formulario__grupo" id="grupo__descripcion">
                <label for="descripcion " class="formulario__label">Descripcion:</label>
                <div class="formulario__grupo-input">
                    <textarea  type="text" class="formulario__input" name="descripcion" id="descripcion"
                              placeholder="Descripcion del servicio"></textarea>
                    <i class="formulario__validacion-estado far fa-times-circle"></i>
                </div>
                <p class="formulario__input-error">La descripcion puede contener entre 10 a 500 digitos y
                    pueden contener letras, guiones y numeros</p>
            </div>





            <div class="formulario__grupo" id="grupo__costos">
                <label for="costos" class="formulario__label">Costos: </label>
                <div class="formulario__grupo-input">
                    <input type="number" class="formulario__input" onblur="adicionar()"  name="costos" id="costos"
                           placeholder="Ejem: $ 4'183.000">
                    <i class="formulario__validacion-estado far fa-times-circle"></i>
                </div>
                <p class="formulario__input-error">Los costos solo pueden contener numeros</p>
            </div>

            <div class="formulario__grupo" id="grupo__tecnico">
                <label for="tecnico" class="formulario__label">Tecnico</label>
                <div class="formulario__grupo-input">
                    
                      <select class="formulario__input" name="tecnico" id="tecnico">
                            <option disabled selected value="">Seleccione un Tecnico...</option>
                            <%  UsuarioDAO tecDAO = new UsuarioDAO();
                                for (UsuarioVO tecVO : tecDAO.listarT()) {
                            %>
                            <option value="<%=tecVO.getId()%>"><%=tecVO.getNombres()%></option>

                            <%
                                }
                            %>



                        </select>
                    <i class="formulario__validacion-estado far fa-times-circle"></i>
                </div>
                <p class="formulario__input-error">Seleccione un tecnico</p>
            </div>

            <div class="formulario__grupo" id="grupo__repuesto">
                <label for="repuesto" class="formulario__label">Repuesto</label>
                <div class="formulario__grupo-inputs">
                    <select class="formulario__inputs" name="repuestoss" id="repuestoss">
                        <option value="" >Seleccione...</option>
                        <%
                            RepuestoDAO repuDAO = new RepuestoDAO();

                            for (RepuestoVO repuVO : repuDAO.listar_Activos()) {
                        %>

                        <option value="<%=repuVO.getId()%>" ><%=repuVO.getNombre()%></option>


                        <%
                            }
                        %>



                    </select>
                    <labe>Cantidad</labe>
                    <input type="number" class="formulario__inputw" name="cantidad" id="cantidad">

                    <a id="addElement"  class="btn btn-secondary text-light"
                       style="text-decoration:none" type="button">Agregar</a>

                </div>
                <p class="formulario__input-error">El valor de venta debe ser de 2 a 18 digitos y solo puede
                    contener numeros</p>
            </div>


            <table class="mt-5"> 
                <thead>
                    <tr class="tablita">
                        <th><span class="">Eliminar</span></th>
                        <th><span class="">Repuesto</span></th>
                        <th><span class="">Valor Unidad</span></th>

                        <th> <span class="">Cantidad</span></th>

                        <th><span class="">Subtotal</span></th>
                    </tr>

                </thead>
                <tbody class="form-group mt-2" id="list-categories">



                </tbody>
                <tfoot class="form-group mt-2" id="list-final">
                    <tr class="tablota">
                        <th><span class=""></span></th>
                        <th><span class=""></span></th>
                        <th><span class=""></span></th>
                        <th><span class=""></span></th>
                        <th><span class="">Total Subtotal</span></th>
                    </tr>
                    <tr>
                        <th><span class=""></span></th>
                        <th><span class=""></span></th>
                        <th><span class=""></span></th>
                        <th><span class=""></span></th>
                        <th id="perra"></th>
                    </tr>
                </tfoot>


            </table>
            <br>


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
<script>
                       /* funcion para pasar input a formato moneda colombiana
                        * 
                        * function hola() {
                            var esq = document.getElementById("costos");
                            var esd = document.getElementById("costos").value;
                            var es=formatCurrency("es-CO", "COP", 2, esd);
                            esq.value =es 
                        }
                        function formatCurrency(locales, currency, fractionDigits, number) {
                            var formatted = new Intl.NumberFormat(locales, {
                                style: 'currency',
                                currency: currency,
                                minimumFractionDigits: fractionDigits
                            }).format(number);
                            return formatted;
                        }*/
    var textarea = document.querySelector('textarea');

textarea.addEventListener('keydown', autosize);
             
function autosize(){
  var el = this;
 
  setTimeout(function(){
    el.style.cssText = 'height:auto; padding:0';
    el.style.cssText = 'height:' + el.scrollHeight + 'px';
  },0);
}

</script>

<%@include file="dash2.jsp" %>
<%-- 
    Document   : registrarReparacion
    Created on : 3/09/2020, 02:29:09 PM
    Author     : jony
--%>


<%@page import="modeloDAO.Detalles_RepuestoDAO"%>
<%@page import="modeloVO.Detalles_RepuestoVO"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="modeloVO.ProductoVO"%>
<%@page import="modeloDAO.ProductoDAO"%>
<%@page import="modeloVO.ReparacionVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modeloVO.ServicioVO"%>
<%@page import="modeloDAO.ServicioDAO"%>
<%@page import="modeloVO.RepuestoVO"%>
<%@page import="modeloDAO.RepuestoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="dash1.jsp" %>
<title>Actualizar Reparacion</title>
<link rel="stylesheet" href="assets/css/registrarReparacion.css">

<div class="content-wrapper">


    <%                        ReparacionVO repaVO = (ReparacionVO) request.getAttribute("reparacion_id");
        if (repaVO != null) {


    %>

    <div class="content">


        <h3>Actualizar Reparacion</h3>
        <br><br>

        <form action="Reparacion" class="formulario" id="formulario" name="formulario"
              method="POST">
            <div class="formulario__grupo" id="grupo__id_servicio">
                <span>
                    <label for="id_servicio" class="formulario__label">Servicio:</label>
                    <div class="formulario__grupo-input">

                        <select class="formulario__input" name="id_servicio" id="id_servicio">
                            <option disabled  value="" >Seleccione un Servicio...</option>
                            <%                                ServicioDAO serviDAO = new ServicioDAO();
                                for (ServicioVO serviVO : serviDAO.listarS()) {
                                    String a = serviVO.getId();
                                    String b = repaVO.getId_Servicio();
                                    if (a == b) {

                            %>
                            <option value="<%=serviVO.getId()%>" selected><%=serviVO.getDescripcion()%></option>

                            <%
                            } else {
                            %>
                            <option value="<%=serviVO.getId()%>" ><%=serviVO.getDescripcion()%></option>

                            <%
                                        }
                                    }
                                }
                            %>



                        </select>
                        <i class="formulario__validacion-estado far fa-times-circle"></i>
                    </div>
                    <p class="formulario__input-error">Digite un Id servicio</p>
            </div>

            <div class="formulario__grupo" id="grupo__id_producto">
                <label for="id_producto" class="formulario__label">Id_Producto:</label>
                <div class="formulario__grupo-input">
                    <select class="formulario__input" name="id_producto" id="id_producto">
                        <option disabled selected value="" >Seleccione un Producto...</option>

                        <%                                ProductoDAO proDAO = new ProductoDAO();
                            for (ProductoVO proVO : proDAO.listarP()) {
                                String prod = proVO.getId();
                                String product = repaVO.getId_Producto();
                                if (product.equals(prod)) {
                        %>
                        <option value="<%=proVO.getId()%>" selected=""><%=proVO.getTipo_Producto()%> <%=proVO.getMarca()%> <%=proVO.getModelo()%>  <%=proVO.getNumero_Serie()%></option>

                        <%
                        } else {

                        %>
                        <option value="<%=proVO.getId()%>" ><%=proVO.getTipo_Producto()%> <%=proVO.getMarca()%> <%=proVO.getModelo()%>  <%=proVO.getNumero_Serie()%></option>

                        <%}
                            }%>
                    </select>

                    <i class="formulario__validacion-estado far fa-times-circle"></i>
                </div>
                <p class="formulario__input-error">Digite un id producto</p>
            </div>

            <div class="formulario__grupo" id="grupo__dates">
                <label for="dates" class="formulario__label">Fecha y Hora Reparacion:</label>
                <div class="formulario__grupo-input">
                    <%
                        DateTimeFormatter dateFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss.S");

                        String asc = repaVO.getFecha_Hora();

                        LocalDateTime date2 = LocalDateTime.parse(asc, dateFormatter);
                    %>

                    


                    <input type="datetime-local"  class="formulario__input" onchange="agre()" onblur="agre()" value="<%=date2%>"   name="dates" id="dates"  >
                    <input type="hidden" name="fecha" id="fecha" value="<%=date2%>">
                    <i class="formulario__validacion-estado far fa-times-circle"></i>
                </div>
                <p class="formulario__input-error">Debe seleccionar una fecha de reparacion</p>
            </div>



            <div class="formulario__grupo" id="grupo__descripcion">
                <label for="descripcion " class="formulario__label">Descripcion:</label>
                <div class="formulario__grupo-input">
                    <textarea  type="text" class="formulario__input" name="descripcion" id="descripcion"
                               placeholder="Descripcion del servicio"> <%=repaVO.getDescripcion()%> </textarea>
                    <i class="formulario__validacion-estado far fa-times-circle"></i>
                </div>
                <p class="formulario__input-error">La descripcion puede contener entre 10 a 500 digitos y
                    pueden contener letras, guiones y numeros</p>
            </div>





            <div class="formulario__grupo" id="grupo__costos">
                <label for="costos" class="formulario__label">Costos: </label>
                <div class="formulario__grupo-input">
                   
                    <input type="number" class="formulario__input" name="costos" id="costos" disabled=""
                           placeholder="Ejem: $ 4'183.000" value="<%=repaVO.getCostos()%>">
                    <i class="formulario__validacion-estado far fa-times-circle"></i>
                </div>
                <p class="formulario__input-error">Los costos solo pueden contener numeros</p>
            </div>

            <div class="formulario__grupo" id="grupo__tecnico">
                <label for="tecnico" class="formulario__label">Tecnico</label>
                <div class="formulario__grupo-input">

                    <select class="formulario__input" name="tecnico" id="tecnico" onchange="validselect('tecnico')" onblur="validselect('tecnico')">
                        <option disabled selected value="">Seleccione un Tecnico...</option>
                        <%  UsuarioDAO tecDAO = new UsuarioDAO();
                            for (UsuarioVO tecVO : tecDAO.listarT()) {
                                String tec1 = repaVO.getTecnico();
                                String tec2 = tecVO.getId();
                                if (tec1.equals(tec2)) {
                        %>
                        <option value="<%=tecVO.getId()%>" selected=""><%=tecVO.getNombres()%></option>

                        <%
                        } else {
                        %>
                        <option value="<%=tecVO.getId()%>" ><%=tecVO.getNombres()%></option>
                        <%}
                            }%>



                    </select>
                    <i class="formulario__validacion-estado far fa-times-circle"></i>
                </div>
                <p class="formulario__input-error">Seleccione un tecnico</p>
            </div>

                            <div class="formulario__grupo" style="display:none;" id="grupo__repuesto">
                <label for="repuesto" class="formulario__label">Repuesto</label>
                <div class="formulario__grupo-inputs">
                    <select class="formulario__inputs" name="repuesto" id="repuesto">
                        <option value="" selected>Seleccione...</option>
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
                       
                        <th><span class="">Repuesto</span></th>
                        <th><span class="">Valor Unidad</span></th>

                        <th> <span class="">Cantidad</span></th>

                        <th><span class="">Subtotal</span></th>
                    </tr>

                </thead>
                <tbody class="form-group mt-2" id="list-categories">
                    <%
                        int ak=0;
                        Detalles_RepuestoVO detalleVO = new Detalles_RepuestoVO();
                        Detalles_RepuestoDAO detalleDAO = new Detalles_RepuestoDAO(detalleVO);
                        ArrayList<Detalles_RepuestoVO> listaRepu = detalleDAO.consultarId(repaVO.getId());
                        for (int w = 0; w < listaRepu.size(); w++) {
                            detalleVO = listaRepu.get(w);
                            int s1=Integer.parseInt(detalleVO.getValor_Venta());
                            int s2=Integer.parseInt(detalleVO.getCantidad());
                            int s3=Integer.parseInt(repaVO.getCostos());
                            int sub=s1*s2;
                            ak +=sub;
                    %>

                    <tr> <th ><span class="mb-2" style="margin:auto"><%=detalleVO.getNombre()%></span></th>  <th><span class=""><%=detalleVO.getValor_Venta()%></span></th> <th><span class=""><%=detalleVO.getCantidad()%></span> </th> <th><span class=""><%=sub%></span></th></tr>

                    <%}%>
                <input type="hidden" value="<%=ak%>" id="ak">
                
                </tbody>
                <tfoot class="form-group mt-2" id="list-final"> 
                    <tr class="tablota">
                        
                        <th><span class=""></span></th>
                        <th><span class=""></span></th>
                        <th><span class=""></span></th>
                        <th><span class="">Total Subtotal</span></th>
                    </tr>
                    <tr>
                      
                        <th><span class=""></span></th>
                        <th><span class=""></span></th>
                        <th><span class=""></span></th>
                        <th id="perra"><%=ak%></th>
                    </tr>
                </tfoot>


            </table>
            <br>

            <div>
                <input type="hidden" name="opcion" id="opcion" value="3">
               <input type="hidden" name="Id" id="Id" value="<%=repaVO.getId()%>">
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
<!--  <a class="holas" name="holas" id="holas" >asas</a>
  <a class="holas">asas</a>
  <a class="holas">asas</a>
  <a class="holas">as</a>
  <a class="holas">as</a>
  <script>
       $(".holas").click( function () {
 
 alert("perra");
});
  </script> -->

<script src="assets/js/actualizarReparacion.js" type="text/javascript"></script>
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

                        function autosize() {
                            var el = this;

                            setTimeout(function () {
                                el.style.cssText = 'height:auto; padding:0';
                                el.style.cssText = 'height:' + el.scrollHeight + 'px';
                            }, 0);
                        }

</script>


<%@include file="dash2.jsp" %>
<%@page import="modeloVO.RepuestoVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modeloDAO.EstadoDAO"%>
<%@page import="modeloVO.EstadoVO"%>
<%@include file="dash1.jsp" %>
<link rel="stylesheet" href="assets/css/registrarRepuesto.css">
<title>Actualizar Repuesto</title>

<!-- AQUI VA EL contenido-->


        <div class="content-wrapper">

            <%                        RepuestoVO repVO = (RepuestoVO) request.getAttribute("repuesto_id");
                if (repVO != null) {


            %>

            <div class="content">
                <div class="card bg-white justify-content-center mb-2" style="width: 100% ">
    <div class="card-body ">


                <h2 class="text-center">Actualizar Repuestos</h2>
                <br><br>

                <form action="Repuesto" class="formulario" id="formulario" name="formulario"
                      method="POST">
                    <div class="formulario__grupo" id="grupo__nombre">
                        <span>
                            <label for="nombre" class="formulario__label">Nombre:</label>
                            <div class="formulario__grupo-input">
                                <input type="text" class="formulario__input" name="nombre" id="nombre" value="<%=repVO.getNombre()%>"
                                       placeholder="Ejem: Bomba de Agua">
                                <i class="formulario__validacion-estado far fa-times-circle"></i>
                            </div>
                            <p class="formulario__input-error">El Nombre del Repuesto debe ser de 7 a 50 digitos y
                                puede
                                contener numeros, guiones y letras</p>
                    </div>

                    <div class="formulario__grupo" id="grupo__no_serie">
                        <label for="no_serie" class="formulario__label">No_serie:</label>
                        <div class="formulario__grupo-input">
                            <input type="text" class="formulario__input" name="no_serie" id="no_serie" value="<%=repVO.getNo_Serie()%>"
                                   placeholder="Ejem: ARFL854224">

                            <i class="formulario__validacion-estado far fa-times-circle"></i>
                        </div>
                        <p class="formulario__input-error">Los Numero de Serie debe ser de 10 a 50 digitos y
                            pueden
                            contener numeros, guiones y letras</p>
                    </div>

                    <div class="formulario__grupo" id="grupo__marca">
                        <label for="no_serie" class="formulario__label">Marca:</label>
                        <div class="formulario__grupo-input">
                            <input type="text" class="formulario__input" name="marca" id="marca" value="<%=repVO.getMarca()%>"
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
                            <input type="text" class="formulario__input" name="modelo" id="modelo" value="<%=repVO.getModelo()%>"
                                   placeholder="Ejem: byt-23w1">
                            <i class="formulario__validacion-estado far fa-times-circle"></i>
                        </div>
                        <p class="formulario__input-error">El Modelo debe contener entre 3 a 50 digitos y
                            pueden contener letras, guiones y numeros</p>
                    </div>

                    <div class="formulario__grupo" id="grupo__fecha_compra">
                        <label for="fecha_compra" class="formulario__label">Fecha Compra:</label>
                        <div class="formulario__grupo-input">

                            <input type="date" class="formulario__input" onblur="agre()"  onchange="agre()" name="dates" id="dates" value="<%=repVO.getFecha_Compra()%>">
                            <input type="hidden" name="fecha" id="fecha" >
                            <i class="formulario__validacion-estado far fa-times-circle"></i>
                        </div>
                        <p class="formulario__input-error">Debe seleccionar una fecha de compra</p>
                    </div>



                    <div class="formulario__grupo" id="grupo__lugar_compra">
                        <label for="lugar_compra" class="formulario__label">Lugar Compra:</label>
                        <div class="formulario__grupo-input">
                            <input type="text" class="formulario__input" name="lugar_compra" id="lugar_compra" value="<%=repVO.getLugar_Compra()%>"
                                   placeholder="Ejem: almacen el reparador calle 7 #1">
                            <i class="formulario__validacion-estado far fa-times-circle"></i>
                        </div>
                        <p class="formulario__input-error">El Lugar de Compra debe ser de 10 a 100 digitos y pueden
                            contener numeros, letras guion y caracteres</p>
                    </div>

                    <div class="formulario__grupo" id="grupo__valor_compra">
                        <label for="valor_compra" class="formulario__label">Valor Compra:</label>
                        <div class="formulario__grupo-input">
                            <input type="number" class="formulario__input" name="valor_compra" id="valor_compra" value="<%=repVO.getValor_Compra()%>"
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
                            <input type="number" class="formulario__input" name="valor_venta" id="valor_venta" value="<%=repVO.getValor_Venta()%>"
                                   placeholder="Ejem:150.000 $">
                            <i class="formulario__validacion-estado far fa-times-circle"></i>
                        </div>
                        <p class="formulario__input-error">El valor de venta debe ser de 2 a 18 digitos y solo puede
                            contener numeros</p>
                    </div>

                    <div class="formulario__grupo" id="grupo__cantidad">
                        <label for="cantidad" class="formulario__label">Cantidad:</label>
                        <div class="formulario__grupo-input">
                            <input type="number" class="formulario__input" name="cantidad" id="cantidad" value="<%=repVO.getCantidad()%>">
                            <i class="formulario__validacion-estado far fa-times-circle"></i>
                        </div>
                        <p class="formulario__input-error">La cantidad de repuestos debe ser minimo de 1 a 8 digitos
                            y debe
                            contener numeros</p>
                    </div>

                    <div class="formulario__grupo" id="grupo__estado">
                        <label for="estado" class="formulario__label">Estado:</label>
                        <div class="formulario__grupo-input">
                            <select name="estado" class="formulario__input"  >
                                <%
                                    EstadoVO estVO = new EstadoVO();
                                    EstadoDAO estDAO = new EstadoDAO();
                                    ArrayList< EstadoVO> listaE = estDAO.listarE();
                                    for (int i = 0; i < listaE.size(); i++) {
                                        estVO = listaE.get(i);
                                        if (estVO.getId().equals(repVO.getEstado())) {
                                %>


                                <option selected value="<%=estVO.getId()%>"><%=estVO.getNombre()%></option>
                                <%} else {%>
                                <option  value="<%=estVO.getId()%>"><%=estVO.getNombre()%></option>
                                <%}
                                           }%>
                            </select>
                            <i class="formulario__validacion-estado far fa-times-circle"></i>

                        </div>
                        <p class="formulario__input-error">Seleccione un Estado</p>
                    </div>
                    <div class="formulario__grupo" id="grupo__imagen formulario__grupo-input" >
                        <label for="cantidad" class="formulario__label">Imagen del Repuesto</label>
                        <div class="custom-file" style="height: 60px; cursor:pointer; ">
                            <input type="file" class="custom-file-input"    accept="image/*"  style="cursor:pointer;" onchange="validateFileType()" multiple="multiple" name="imagen" id="imagen" >

                            <label class="custom-file-label text-justify" for="imagen" style="border: 1px dashed  #000;">Seleccione o arrastre la imagen</label>

                            <i class="formulario__validacion-estado far fa-times-circle"></i>
                        </div>
                        <p class="formulario__input-error">La cantidad de repuestos debe ser minimo de 1 a 8 digitos
                            y debe
                            contener numeros</p>
                    </div>

                    <div>
                        <input type="hidden" name="opcion" id="opcion" value="2">
                        <input type="hidden" name="Id" id="id" value="<%=repVO.getId()%>">

                    </div>




                    <div class="formulario__mensaje" id="formulario__mensaje">
                        <p>
                            <i class="fas fa-exclamation-triangle"></i> <b>Error: </b>Porfavor Diligencie los Campos
                            del Formulario Correctamente </p>

                    </div>
            </div>

            <div class="formulario__grupo formulario__grupo-btn-enviar">

                <button  class="formulario__btn">Actualizar</button>

                <p class="formulario__mensaje-exito" id="formulario__mensaje-exito">Formulario Enviado
                    Correctamente</p>




                <%} else { %>
                <h4 class="text-center text-danger mb-2">${mensajeError}</h4> 

                <a class="btn btn-dark m-2" style="text-decoration: none; color: #Fff" href="consultarRepuesto.jsp">Volver</a>
                <%}%>


                </form>


                <br>
            </div>
        </div> 
                

        <!-- Termina aqui -->

        <script>
            var dates = document.getElementById('dates').value;
            document.getElementById('fecha').value = dates;
            function agre() {
                var dates = document.getElementById('dates').value;
                document.getElementById('fecha').value = dates;


                console.log(document.getElementById('fecha').value);
            }

        </script>

        <script>
// Add the following code if you want the name of the file appear on select
            $(".custom-file-input").on("change", function () {
                var fileName = $(this).val().split("\\").pop();
                $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
            });
        </script>
        <%@include file="dash2.jsp" %>



<%-- 
    Document   : Usuarios
    Created on : 17-ago-2020, 23:49:09
    Author     : Yeison
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="modeloDAO.UsuarioDAO"%>
<%@page import="modeloVO.UsuarioVO"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="dash1.jsp" %>


  <title>Modificación de Usuarios</title>



        <!-- AQUI VA EL contenido-->

        <div class="content-wrapper">

              <div class="content">
              
                <br>

                <h1 class="text text-dark">Modificación de Usuarios</h1>
              
                  <hr>
                  
                  <br><br><br>
                 
                    <div class="row">
                    </div>
                    <section class="row">
                            <div class="card w-100 m-auto">
                                    <div class="card-header container bg-warning">
                                            <h2 class="m-auto ">Información del Usuario</h2>
                                    </div>
                                
                                <%
                                    UsuarioVO usuVO = (UsuarioVO)request.getAttribute("usuario");
                                    
                                    if (usuVO != null) {
                                                                         

                                %>

                                    <div class="card-body">
                                            <form action="Usuario" method="post">
                                                <input type="hidden" name="textId" value="<%= usuVO.getId()%>"/>
                                                    <div class="form-group">
                                                            <label>Nombres</label>
                                                            <input type="text" name="nombres" class="form-control" placeholder="Ingrese Nombres Completos" value="<%= usuVO.getNombres() %>">
                                                    </div>
                                                    <div class="form-group">
                                                            <label>Apellidos</label>
                                                            <input type="text" name="apellidos" class="form-control" placeholder="Ingrese Nombres Completos" value="<%= usuVO.getApellidos()%>">
                                                    </div>
                                                    <div class="form-group">
                                                            <label>Numero de Documento</label>
                                                            <input type="number" name="documento" class="form-control" placeholder="Ingrese Nombres Completos" value="<%= usuVO.getNumero_Documento()%>">
                                                    </div> 
                                                     <div class="form-group">
                                                            <label>Tipo de documento</label>
                                                            <input type="text" name="tipo" class="form-control" placeholder="Ingrese Nombres Completos" value="<%= usuVO.getTipo_Documento()%>">
                                                    </div>                                       
                                                    <div class="form-group">
                                                            <label>Correo</label>
                                                            <input type="email" name="correos" class="form-control" placeholder="Ingrese Email" value="<%= usuVO.getCorreo()%>">
                                                    </div>	
                                                    <div class="form-group">
                                                            <label>Telefono</label>
                                                            <input type="number" name="telefono" class="form-control" placeholder="Ingrese Nombres Completos" value="<%= usuVO.getTelefono() %>">
                                                    </div>
                                                    <div class="form-group">
                                                            <label>Barrio</label>
                                                            <input type="text" name="barrio" class="form-control" placeholder="Ingrese Nombres Completos" value="<%= usuVO.getBarrio() %>">
                                                    </div>
                                                    <div class="form-group">
                                                            <label>Direccion</label>
                                                            <input type="text" name="direccion" class="form-control" placeholder="Ingrese Nombres Completos" value="<%= usuVO.getDireccion() %>">
                                                    </div>
                                            
                                                    <div class="form-group">
                                                            <button class="btn btn-primary">Modificar</button>
                                                            <input type="hidden" name="opcion" value="5"/>
                                                    </div>														
                                            </form>
                                                            
                                                    <%} else { %>



                                                    <% } %>


                                                    <div style="color:Red">
                                                        <center>
                                                            <%if (request.getAttribute("mensajeFallido") != null) {%>
                                                            ${mensajeFallido}
                                                            <% } else { %>
                                                            ${mensajeExitoso}
                                                            <% } %>
                                                        </center>
                                                    </div>  
                                    </div>
                            </div>
                    </section>
    
       </div>
    </div>
   

        <!-- End Modals -->


          <footer class="footer mt-auto">
            <div class="copyright bg-white">
              <p>
                &copy; <span id="copy-year">2019</span> Personalización por el Grupo-6
              </p>
            </div>
            <script>
                var d = new Date();
                var year = d.getFullYear();
                document.getElementById("copy-year").innerHTML = year;
            </script>
          </footer>

    </div>
  </div>

 <script src="assets/plugins/nprogress/nprogress.js"></script>
                      
<script src="assets/plugins/jquery/jquery.min.js"></script>
<script src="assets/plugins/slimscrollbar/jquery.slimscroll.min.js"></script>
<script src="assets/plugins/jekyll-search.min.js"></script>
<script src="assets/plugins/bootstrap/js/popper.min.js"></script>



<script src="assets/plugins/charts/Chart.min.js"></script>
  


<script src="assets/plugins/jvectormap/jquery-jvectormap-2.0.3.min.js"></script>
<script src="assets/plugins/jvectormap/jquery-jvectormap-world-mill.js"></script>
  


<script src="assets/plugins/daterangepicker/moment.min.js"></script>
<script src="assets/plugins/daterangepicker/daterangepicker.js"></script>
<script>
  jQuery(document).ready(function() {
    jQuery('input[name="dateRange"]').daterangepicker({
    autoUpdateInput: false,
    singleDatePicker: true,
    locale: {
      cancelLabel: 'Clear'
    }
  });
    jQuery('input[name="dateRange"]').on('apply.daterangepicker', function (ev, picker) {
      jQuery(this).val(picker.startDate.format('MM/DD/YYYY'));
    });
    jQuery('input[name="dateRange"]').on('cancel.daterangepicker', function (ev, picker) {
      jQuery(this).val('');
    });
  });
</script>
  


<!--del Table-->

<script src="assets/plugins/data-tables/jquery.datatables.min.js"></script>
<script src="assets/plugins/data-tables/datatables.bootstrap4.min.js/"></script>
<script src="assets/plugins/data-tables/datatables.responsive.min.js"></script>
<!-->
<script type="text/javascript">
    $(document).ready(function() {
        //Asegurate que el id que le diste a la tabla sea igual al texto despues del simbolo #
        $('#userList').DataTable();
    } );
</script>

<!--end table-->


<script src="assets/js/sleek.bundle.js"></script>
</body>

</html>



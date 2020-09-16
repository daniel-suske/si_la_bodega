<%-- 
    Document   : Usuarios
    Created on : 17-ago-2020, 23:49:09
    Author     : Yeison
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="modeloVO.UsuarioVO"%>
<%@page import="modeloDAO.UsuarioDAO"%>

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
                                            <h2>Información del Usuario</h2>
                                    </div>
                                
                                <%
                                    UsuarioVO usuVO = (UsuarioVO)request.getAttribute("usuario");
                                    
                                    if (usuVO != null) {
                                                                         

                                %>

                                    <div class="card-body">
                                            <form action="Usuario" method="POST">
                                                <input type="hidden" name="textId" value="<%= usuVO.getId()%>"/>
                                                    <div class="form-group">
                                                            <label>Nombres:</label>
                                                            <input type="text" name="nombres" class="form-control" placeholder="Ingrese Nombres Completos" value="<%= usuVO.getNombres() %>">
                                                    </div>
                                                    <div class="form-group">
                                                            <label>Apellidos:</label>
                                                            <input type="text" name="apellidos" class="form-control" placeholder="Ingrese Nombres Completos" value="<%= usuVO.getApellidos()%>">
                                                    </div>
                                                    <div class="form-group">
                                                            <label>Número de Documento:</label>
                                                            <input type="number" name="documento" class="form-control" placeholder="Ingrese Nombres Completos" value="<%= usuVO.getNumero_Documento()%>">
                                                    </div> 
                                                     <div class="form-group">
                                                            <label>Tipo de Documento:</label>
                                                            <select name="tipo" class="form-control form-control-lg">
                                                                    <option value="" selected>Seleccione su tipo de Identificación...</option>
                                                                    <%
                                                                        String cc = "CC";
                                                                        String ce = "CE";
                                                                        String pa = "PA";
                                                                        String rc = "RC";
                                                                        
                                                                        if (cc.equals(usuVO.getTipo_Documento())) {
                                                                    %>
                                                                    <option value="CC" selected>Cédula de Ciudadanía</option>
                                                                    <option value="CE">Cédula de Extranjería</option>
                                                                    <option value="PA">Pasaporte</option>
                                                                    <option value="RC">Registro Civil</option>
                                                                    <%
                                                                        } else if(ce.equals(usuVO.getTipo_Documento())) {
                                                                    %>
                                                                    <option value="CC">Cédula de Ciudadanía</option>
                                                                    <option value="CE" selected>Cédula de Extranjería</option>
                                                                    <option value="PA">Pasaporte</option>
                                                                    <option value="RC">Registro Civil</option>
                                                                    <%
                                                                        }  else if(pa.equals(usuVO.getTipo_Documento())) {
                                                                    %>
                                                                    <option value="CC">Cédula de Ciudadanía</option>
                                                                    <option value="CE">Cédula de Extranjería</option>
                                                                    <option value="PA" selected>Pasaporte</option>
                                                                    <option value="RC">Registro Civil</option>
                                                                    <%
                                                                        }  else if(rc.equals(usuVO.getTipo_Documento())) {
                                                                    %>
                                                                    <option value="CC">Cédula de Ciudadanía</option>
                                                                    <option value="CE">Cédula de Extranjería</option>
                                                                    <option value="PA" selected>Pasaporte</option>
                                                                    <option value="RC">Registro Civil</option>
                                                                    <% } %>
                                                            </select>       
                                                    </div>                                       
                                                    <div class="form-group">
                                                            <label>Correo:</label>
                                                            <input type="email" name="correos" class="form-control" placeholder="Ingrese Email" value="<%= usuVO.getCorreo()%>">
                                                    </div>	
                                                    <div class="form-group">
                                                            <label>Teléfono:</label>
                                                            <input type="number" name="telefono" class="form-control" placeholder="Ingrese Nombres Completos" value="<%= usuVO.getTelefono() %>">
                                                    </div>
                                                    <div class="form-group">
                                                            <label>Barrio:</label>
                                                            <input type="text" name="barrio" class="form-control" placeholder="Ingrese Nombres Completos" value="<%= usuVO.getBarrio() %>">
                                                    </div>
                                                    <div class="form-group">
                                                            <label>Dirección:</label>
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


        <%@include file="dash2.jsp" %>


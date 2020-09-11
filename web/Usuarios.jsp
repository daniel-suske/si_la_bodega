<%-- 
    Document   : Usuarios
    Created on : 17-ago-2020, 23:49:09
    Author     : Yeison
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="modeloDAO.UsuarioDAO"%>
<%@page import="modeloVO.UsuarioVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="dash1.jsp"%>

      <title>Gestion de Empleados</title>

        <!-- AQUI VA EL contenido-->

        <div class="content-wrapper">

              <div class="content">
              
                <br>
                

                <h1 class="text text-dark">Gestion de Empleados</h1>
              
                  <hr>
                  <div class="navbar ">
                  <a class="btn btn-success btn-lg  text-light" data-toggle="modal" data-target=".bd-example-modal-lg">+ Nuevo Registro</a>

                  <br><br><br>
                  <form class="form-inline form-control-lg" method="post" action="Usuario">
                      <input type="search" class="form-control form-dark" name="text"/>
                      <input type="submit" class="btn btn-primary" value="Buscar"/>
                      <input type="hidden" name="opcion" value="4" />
                  </form>
                  </div>
                  <br><br>
                 <div class="table-responsive">   
                    <table class="table table-bordered table-hover">
                        <thead class="table table-striped table-hover responsive nowrap">   
                            <tr>
                                <th scope="col" class="text-center">#</th>
                                <th scope="col" class="text-center">Nombres</th>
                                <th scope="col" class="text-center">Apellidos</th>
                                <th scope="col" class="text-center">Numero de Documento</th>
                                <th scope="col" class="text-center">Tipo de Documento</th>
                                <th scope="col" class="text-center">Correo</th>
                                <th scope="col" class="text-center">Telefono</th>
                                <th scope="col" class="text-center">Barrio</th>
                                <th scope="col" class="text-center">Dirección</th>
                                <th scope="col" class="text-center">Registrado Por</th>
                                <th scope="col" class="text-center">Perfil</th>
                                <th scope="col" class="text-center">Estado</th>
                                <th scope="col" class="text-center">Acciones</th>
                            </tr>  
                        </thead>
                      <%
                          UsuarioVO usuVO = new UsuarioVO();
                          UsuarioDAO usuDAO = new UsuarioDAO();
                          
                          String Id = ""; 
                          
                          ArrayList<UsuarioVO> listaUsuariosE = usuDAO.listarE();
                          
                          for (int i = 0; i < listaUsuariosE.size(); i++) {
                              
                              usuVO = listaUsuariosE.get(i);
                              
                      %>
                      <tbody class="table table-striped table-hover text text-dark">
                            <tr>
                                <td scope="row" class="text-center"><%= usuVO.getId() %></td>
                                <td class="text-center"><%= usuVO.getNombres() %></td>
                                <td class="text-center"><%= usuVO.getApellidos() %></td>
                                <td class="text-center"><%= usuVO.getNumero_Documento() %></td>
                                <td class="text-center"><%= usuVO.getTipo_Documento() %></td>
                                <td class="text-center"><%= usuVO.getCorreo() %></td>
                                <td class="text-center"><%= usuVO.getTelefono() %></td>
                                <td class="text-center"><%= usuVO.getBarrio() %></td>
                                <td class="text-center"><%= usuVO.getDireccion() %></td>
                                <td class="text-center"><%= usuVO.getId_Registrado_Por() %></td>
                                <td class="text-center"><%= usuVO.getPerfil() %></td>
                                <td class="text-center" name="EId"><%= usuVO.getEstado() %></td>
                                <td class="text-center">
                                    <form method="post" action="Usuario">
                                        <input type="hidden" name="textId" value="<%= usuVO.getId() %>" />
                                    <button class="btn btn-warning">Modificar</button>
                                        <input type="hidden" name="opcion" value="3"/>
                                    </form>
                                    |
                                    <%--
                                    if(usuVO.getEstado() == "Activo") { --%>
                                        
                                    <form method="post" action="Usuario">
                                        <input type="hidden" name="textId" value="<%= usuVO.getId() %>" />
                                    <button class="btn btn-danger">Inactivar</button>
                                        <input type="hidden" name="opcion" value="6"/>
                                    </form>
                                    
                                    <br>
                                    <%--<% } else if (usuVO.getEstado() == "Inactivo") { --%>
                                    
                                    <form method="post" action="Usuario">
                                        <input type="hidden" name="textId" value="<%= usuVO.getId() %>" />
                                    <button class="btn btn-secondary">Activar</button>
                                        <input type="hidden" name="opcion" value="7"/>
                                    </form>

                                </td>
                            </tr>
                      </tbody>
                      <% } %>
                      
                  </table>
                      <center>
                   <div style="color:Red">
                        <%if (request.getAttribute("mensajeFallido") != null) {%>
                        ${mensajeFallido}
                        <% } else { %>
                        ${mensajeExitoso}
                        <% } %>
                   </div> 
                      </center>
                <br>
               </div>   

        <!-- Termina aqui -->
        
        <!-- Modales -->
        
  <!--Modal Para Registrar -->
    <div class="modal fade bd-example-modal-lg  modal-efe" tabindex="-1" role="dialog"
        aria-labelledby="myLargeModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg  modal-efe">

            <div class="modal-content modal-efe">
                <div class="modal-header">

                    
                    <img class="logona" src="assets/img/logo.png" alt="logo">
                    <button type="button"  data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true" class="equis">&times;</span>
                    </button>


                </div>
                <div class="modal-body">
                    <h4 class="modal-title">Registro de Empleados</h4>
                    
                    <form method="post" action="Usuario" class="formulario"> <!-- id="formulario" por Arreglar-->
 
                        <div class="formulario__grupo" id="grupo__nombres">
                            <span>
                                <label for="nombres" class="formulario__label">Nombres:</label>
                                <div class="formulario__grupo-input">
                                    <input type="text" class="formulario__input" name="nombres" id="nombres"
                                        placeholder="Nombre Completo">
                                    <i class="formulario__validacion-estado far fa-times-circle"></i>
                                </div>
                                <p class="formulario__input-error">Los NOMBRES debe ser de 4 a 50 digitos y solo pueden
                                    contener letras</p>
                        </div>

                        <div class="formulario__grupo" id="grupo__apellidos">
                            <label for="apellidos" class="formulario__label">Apellidos:</label>
                            <div class="formulario__grupo-input">
                                <input type="text" class="formulario__input" name="apellidos" id="apellidos"
                                    placeholder="Apellido Completo">
                                <i class="formulario__validacion-estado far fa-times-circle"></i>
                            </div>
                            <p class="formulario__input-error">Los APELLIDOS debe ser de 4 a 50 digitos y solo pueden
                                contener letras</p>
                        </div>

                        <div class="formulario__grupo" id="grupo__tipo">
                            <label for="tipo" class="formulario__label">Tipo de Documento:</label>
                            <div class="formulario__grupo-input">
                                <select name="tipo" id="tipo" class="formulario__input  selects">
                                    <option value="EFE" selected>Seleccione su tipo de
                                        Identificación</option>
                                    <option value="CC">Cédula de Ciudadanía</option>
                                    <option value="CE">Cédula de Extranjería</option>
                                    <option value="PA">Pasaporte</option>
                                    <option value="RC">Registro Civil</option>
                                </select>

                                <i class="formulario__validacion-estado far fa-times-circle"></i>
                            </div>
                            <p class="formulario__input-error">Debe seleccionar el Tipo de Documento</p>
                        </div>

                        <div class="formulario__grupo" id="grupo__documento">
                            <label for="documento" class="formulario__label">Número de Documento:</label>
                            <div class="formulario__grupo-input">
                                <input type="number" class="formulario__input" name="documento" id="documento"
                                    placeholder="Digite Correctamente">
                                <i class="formulario__validacion-estado far fa-times-circle"></i>
                            </div>
                            <p class="formulario__input-error">El Numero de Documento debe ser de 7 a 11 digitos y solo
                                pueden contener numeros</p>
                        </div>

                        <div class="formulario__grupo" id="grupo__telefono">
                            <label for="telefono" class="formulario__label">Teléfono:</label>
                            <div class="formulario__grupo-input">
                                <input type="number" class="formulario__input" name="telefono" id="telefono"
                                    placeholder="Fijo o Celular">
                                <i class="formulario__validacion-estado far fa-times-circle"></i>
                            </div>
                            <p class="formulario__input-error">El Telefono debe ser de 6 a 10 digitos y solo pueden
                                contener numeros</p>
                        </div>                     
                        
                        <div class="formulario__grupo" id="grupo__direccion">
                            <label for="direccion" class="formulario__label">Dirección:</label>
                            <div class="formulario__grupo-input">
                                <input type="text" class="formulario__input" name="direccion" id="direccion"
                                    placeholder="Dirrecion actual">
                                <i class="formulario__validacion-estado far fa-times-circle"></i>
                            </div>
                            <p class="formulario__input-error">La direccion debe ser de 15 a 100 digitos y puede
                                contener numeros, letras y simbolos</p>
                        </div>

                        <div class="formulario__grupo" id="grupo__correo">
                            <label for="email" class="formulario__label">Correo:</label>
                            <div class="formulario__grupo-input">
                                <input type="text" class="formulario__input" name="correos" id="correo"
                                    placeholder="Digite Correctamente">
                                <i class="formulario__validacion-estado far fa-times-circle"></i>
                            </div>
                            <p class="formulario__input-error">El correo debe ser de 10 a 100 digitos y puede debe
                                contener un formato de correo</p>
                        </div>
                        
                        <div class="formulario__grupo" id="grupo__direccion">
                            <label for="barrio" class="formulario__label">Barrio:</label>
                            <div class="formulario__grupo-input">
                                <input type="text" class="formulario__input" name="barrio" id="barrio"
                                    placeholder="Una localidad">
                                <i class="formulario__validacion-estado far fa-times-circle"></i>
                            </div>
                            <p class="formulario__input-error">La direccion debe ser de 15 a 100 digitos y puede
                                contener numeros, letras y simbolos</p>
                        </div>                           

                        <div class="formulario__grupo" id="grupo__contrasena">
                            <label for="contrasena" class="formulario__label">Contraseña:</label>
                            <div class="formulario__grupo-input">
                                <input type="password" class="formulario__input" name="contrasena" id="contrasena">
                                <i class="formulario__validacion-estado far fa-times-circle"></i>
                            </div>
                            <p class="formulario__input-error">La contraseña debe ser minimo de 8 a 50 digitos y debe
                                contener numeros y letras</p>
                        </div>

                        <div class="formulario__grupo" id="grupo__contrasena2">
                            <label for="contrasena2" class="formulario__label">Repetir Contraseña:</label>
                            <div class="formulario__grupo-input">
                                <input type="password" class="formulario__input" name="contrasena2" id="contrasena2">
                                <i class="formulario__validacion-estado far fa-times-circle"></i>
                            </div>
                            <p class="formulario__input-error">Ambas contraseñas deben ser iguales</p>
                        </div>
                        
                        <div class="formulario__grupo" id="grupo__contrasena2">
                                <label for="textId_R" class="formulario__label">Id de Usuario a cargo del registro:</label>
                            <div class="formulario__grupo-input">
                                <input type="number" class="formulario__input" name="textId_R" id="Id_R">
                                <i class="formulario__validacion-estado far fa-times-circle"></i>
                            </div>
                                
                        </div>      
                        
                        <div class="formulario__grupo" id="grupo__tipo">
                            <label for="textPerfil" class="formulario__label">Perfil:</label>
                            <div class="formulario__grupo-input">
                                <select name="textPerfil" id="" class="formulario__input  selects">
                                    <option selected>Seleccione el Perfil:</option>
                                    <option value="1">Administrador</option>
                                    <option value="2">Secretari@</option>
                                    <option value="3">Tecnico</option>
                                    <option value="4">Cajero</option>
                                </select>

                                <i class="formulario__validacion-estado far fa-times-circle"></i>
                            </div>
                            <p class="formulario__input-error">Debe seleccionar el Tipo de Perfil</p>
                        </div>    
                        
                        <div class="formulario__grupo" id="grupo__contrasena2">
                                <label for="textEstado" class="formulario__label">Estado:</label>
                             <div class="formulario__grupo-input">
                                <select name="textEstado" id="" class="formulario__input  selects">
                                    <option selected>Seleccione el Estado:</option>
                                    <option value="1">Activo</option>
                                </select>

                                <i class="formulario__validacion-estado far fa-times-circle"></i>
                            </div>
                                
                        </div>                         

                        <div class="formulario__grupo" id="grupo__terminos">
                            <label>
                                <input class="formulario__checkbox text-dark" type="checkbox" name="terminos" id="terminos">
                                Acepto los Terminos y Condiciones
                            </label>
                        </div>


                        <div class="formulario__mensaje" id="formulario__mensaje">
                            <p>
                                <i class="fas fa-exclamation-triangle"></i> <b>Error: </b>Porfavor Diligencie los Campos
                                del Formulario Correctamente </p>

                        </div>
                </div>
                <div class="modal-footer">
                    <!--<div class="formulario__grupo formulario__grupo-btn-enviar ">-->
                        <button type="submit" class="btn_f">Registrar</button>
                        <input type="hidden" value="2" name="opcion">
                        
                        <p class="formulario__mensaje-exito" id="formulario__mensaje-exito">Formulario Enviado
                            Correctamente</p>

                <br>
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
                    
              </form>

                        </div>
                    </div>
                </div>
    <!-- Modal para Actualizar -->
    
       </div>
    </div>
   

        <!-- End Modals -->

        <%@include file="dash2.jsp" %>

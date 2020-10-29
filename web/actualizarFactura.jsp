<%-- 
    Document   : Usuarios
    Created on : 17-ago-2020, 23:49:09
    Author     : Yeison
--%>

<%@page import="modeloDAO.FacturaDAO"%>
<%@page import="modeloVO.FacturaVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modeloDAO.UsuarioDAO"%>
<%@page import="modeloVO.UsuarioVO"%>
<%@page  import="modeloVO.ServicioVO" %>
<%@page  import="modeloDAO.ServicioDAO" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="assets/css/RegistrarFactura.css"/>
<%@include file="dash1.jsp" %>

<title> Actualizar Factura</title>
                <!-- AQUI VA EL contenido-->
               

                <div class="content-wrapper">
                    <main class="container mb-5">
                        <div class="row">
                            <h1 class="col-12 d-flex justify-content-center p-4 btn-secondary w-100">Actualizar Factura</h1>
                        </div>
                        <section class="row mt-5">
                            <div class="card w-100  m-auto">
                                <div class="card-header container ">
                                    <h2 class="m-auto"> Factura</h2>
                                </div>      
                                
         
                 
                          <%  FacturaVO faVO = (FacturaVO) request.getAttribute("Factura");
                                    if (faVO != null) {%>
                                       <div class="card-body">
                                    
                        <form class="form"  method="post" action="Factura" id="form">
                              
                                     <div class="form-row content ">
                                    <div class="form-group col-md-6 " id="grupo__factura">
                                         <label for="factura" class="formulario__label mark ">Fecha de Factura :</label>
                                         <div class="formulario__grupo-input">
                                    
                                            <input type="date" class="form-control-lg col-lg-11"  name="factura" id="factura" value="<%=faVO.getFecha()%>">
                                            <p class="formulario__input-error">Debe completar La fecha de la factura</p>
                              
                          </div>
                                        <div class="form-group col-md-13" id="grupo__servicio">
                                        <label for="servicio" class="formulario__label mark ">Descripcion Del Servicio</label>
                                        
                                                <div class="formulario__grupo-input ">
                                                     <select name="servicio"  class="form-control form-control-lg">
                                                <option value=""> Seleccione...</option>
                                                <%
                                                   ServicioDAO SerDAO = new ServicioDAO();
                                          for (ServicioVO SerVO : SerDAO.listarS()) {
                                                        String a = faVO.getServicio();
                                                        String b = SerVO.getId();
                                                        if (a.equals(b)) {

                                                %>
                                                <option value="<%= SerVO.getId()%>" selected> <%= SerVO.getDescripcion()%></option>
                                                <%
                                                    }else{
                                                %>
                                                
                                                
                                                  <option value="<%= SerVO.getId()%>" > <%= SerVO.getDescripcion()%></option>
                                                <%
                                                    }}
                                                %>
                                            </select>

                                                </div>
                                                <p class="formulario__input-error">Debe seleccionar el la descripcion del producto</p>
                                            </div>
                                    </div>
                                     
         
                    <div class="form-row content">
                                  <div class="form-group col-md-6 " id="grupo__pago">
                          <label for="pago" class="formulario__label mark">Tipo de Pago:</label>
                         
                        <div class="formulario__grupo-input">
                            <input type="text" class="form-control-lg col-lg-11"  name="pago" id="pago" value="<%=faVO.getTipo_Pago()%>">
                            
                           <i class="formulario__validacion-estado fas fa-exclamation-circle"></i>
                           
                        </div>
                          <p class="formulario__input-error ">El tipo de pago debe se deber llenar completo</p>
                      </div>
                              <div class="form-group col-md-6 " id="grupo__total">
                        <label for="total" class="formulario__label mark ">Valor Total:</label>
                        <div class="formulario__grupo-input">
                            <input class="form-control-lg col-lg-11" type="text" name="total" id="total"  value="<%=faVO.getValor_Total()%>">
                             <i class="formulario__validacion-estado fas fa-exclamation-circle"></i>
                            
                        </div>
                        
                        <p class="formulario__input-error">El valor debe ser con numeros enteros </p>
                      </div>
                    </div>
                    
                             
                    <div class="form-row content">
                        <div class="form-group col-md-6" id="grupo_garantia">
                            <label for="garantia" class="formulario__label mark ">Garantia:</label>
                            
                        <div class="formulario__grupo-input">
                            
                           <i class="formulario__validacion-estado fas fa-exclamation-circle"></i>
                            <select id="garantia" name="garantia" class="form-control-lg col-lg-11">
                             
                                       <option value="<%=faVO.getGarantia()%>">SI TIENE GARANTIA</option>
                                        <option value="<%=faVO.getGarantia()%>">NO TIENE GARANTIA</option>
                                      
                              </select>
                        </div>
                            <p class="formulario__input-error">Digite repuesta con dos digitos de coherencia</p>
                      </div>
                   
                        
                        <div class="form-group col-md-6" id="grupo_recibe">
                            <label for="recibe" class="formulario__label mark">Recibe:</label>
                            <div class="formulario__grupo-input">
                                <i class="formulario__validacion-status fas fa-exclamation-circle"></i>
                               
                                            <select name="recibe"  class="form-control form-control-lg">
                                                <option value=""> Seleccione...</option>
                                                <%
                                                    UsuarioDAO usuDAO = new UsuarioDAO();
                                                    for (UsuarioVO usuVO : usuDAO.listarE()) {
                                                        String a = faVO.getRecibe();
                                                        String b = usuVO.getId();
                                                        if (a.equals(b)) {

                                                %>
                                                <option value="<%= usuVO.getId()%>" selected> <%= usuVO.getNombres()%></option>
                                                <%
                                                    }else{
                                                %>
                                                
                                                
                                                  <option value="<%= usuVO.getId()%>" > <%= usuVO.getNombres()%></option>
                                                <%
                                                    }}
                                                %>
                                            </select>
                            </div>
                        <p class="formulario__input-error">Debe seleccionar el nombre de quien recibe el producto </p>
                       </div>
                    
                    </div>
                        
                        <div class="formulario__mensaje m-auto text-center" id="formulario__mensaje">
                            
                            <p ><i class="fas fa-exclamation-triangle"></i><b>Error:</b> Porfavor llenar los espacios que desea actualizar .</p>
                         </div>
                           <div class="formulario__btn ">
                               <button type="submit "class="formulario__btn btn btn-success border border-dark btn-lg btn-block col-lg-8 mt-5 ">Actualizar</button>     
                      <input type="hidden" value="3" name="opcion">
                       <input type="hidden" value="<%=faVO.getId()%>" name="textId">
                      <div  style="color:Red">
                  
                       <%if (request.getAttribute("mensajeFallido") != null) {%>
                       <h5 class="text-center">${mensajeFallido}</h5>
                       <% } %>
              
              </div>
                           </div>    
                       
            
        </div>
                        
                  
                  
                  </form>  
                    
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
                                <a href="consultarFactura.jsp" class="text-white btn btn-danger">Volver </a>
                                <%}%>

                         
                       
                  

                <!-- Termina aqui -->
                <%@include file="dash2.jsp" %>
                 <!-- validaciones y demas -->
       
        <script  type="" src = "https://unpkg.com/ionicons@5.2.3/dist/ionicons.js" ></script >
                <script src="https://kit.fontawesome.com/2c36e9b7b1.js" crossorigin="anonymous"></script>

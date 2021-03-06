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
<link href="https://unpkg.com/ionicons@4.5.10-0/dist/css/ionicons.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="assets/css/RegistrarFactura.css"/>
<%@include file="dash1.jsp" %>





 <title> Registrar Factura</title>
        <!-- AQUI VA EL contenido-->

        <div class="content-wrapper">
            
           <main class="container mb-5">
               <div class="row">
                            <h1 class="col-12 d-flex justify-content-center p-4 btn-primary w-100">Registrar Factura</h1>
               </div>
            <section class="row mt-5">
                <div class="card w-100  m-auto">
              <div class="card-header container bg-secondary ">
                  <h2 class="m-auto "  >Factura</h2>
              </div>
                
                    <div class="card-body">
                        
                        <form class="form"  method="post" action="Factura" id="form">

                      <div class="form-row content ">
                          <div class="form-group col-md-6 " id="grupo__factura">
                              <label for="factura" class=" formulario__label mark ">Fecha de Factura :</label>
                              <div class="formulario__grupo-input">

                                  <input type="date" class="form-control-lg col-lg-11"  name="dates" id="dates">
                                  <input type="hidden" name="factura" id="factura">

                              </div>
                              
                              <p class="formulario__input-error">Debe completar La fecha de la factura</p>
                              
                          </div>
                          <div class="form-group col-md-6" id="grupo__servicio">
                              <label for="servicio" class="formulario__label mark ">Descripcion Del Servicio</label>

                              <div class="formulario__grupo-input ">
                                  <i class="formulario__validacion-status fas fa-exclamation-circle"></i>
                                  <select id="servicio" name="servicio" class="form-control-lg col-lg-11">
                                      <option value="">Seleccione...</option>
                                      <%                                      ServicioDAO SerDAO = new ServicioDAO();
                                          for (ServicioVO SerVO : SerDAO.listarS()) {

                                      %>
                                      <option value="<%= SerVO.getId()%>"><%= SerVO.getDescripcion()%></option>
                                  <% }%>
                              </select>
                          </div>
                          <p class="formulario__input-error">Debe seleccionar el la descripcion del producto</p>
                      </div>
                      </div>
                    
                            
                     
                    <div class="form-row content">
                                  <div class="form-group col-md-6 " id="grupo__pago">
                          <label for="pago" class="formulario__label mark">Tipo de Pago:</label>
                         
                        <div class="formulario__grupo-input">
                            
                           <i class="formulario__validacion-estado fas fa-exclamation-circle"></i>
                             <select id="pago" name="pago" class="form-control-lg col-lg-11">
                                 <option value="" disabled="" selected="">Seleccione...</option>
                                       <option value="EF">EFECTIVO</option>
                                        <option value="TD">TARJETA DEBITO</option>
                                      
                              </select>
                        </div>
                          <p class="formulario__input-error ">El tipo de pago debe se deber llenar completo</p>
                      </div>
                              <div class="form-group col-md-6 " id="grupo__total">
                        <label for="total" class="formulario__label mark ">Valor Total:</label>
                        <div class="formulario__grupo-input">
                            <input class="form-control-lg col-lg-11" type="text" name="total" id="total" placeholder="ejem:50000 $">
                             <i class="formulario__validacion-estado fas fa-exclamation-circle"></i>
                            
                        </div>
                        
                        <p class="formulario__input-error">El valor debe ser con numeros enteros </p>
                      </div>
                    </div>
                    
                             
                    <div class="form-row content">
                        <div class="form-group col-md-6" id="grupo__garantia">
                            <label for="garantia" class="formulario__label mark ">Garantia:</label>
                            
                        <div class="formulario__grupo-input">
                            
                           <i class="formulario__validacion-status fas fa-exclamation-circle"></i>
                            <select id="garantia" name="garantia" class="form-control-lg col-lg-11">
                                 <option value="" disabled="" selected="">Seleccione Tipo de Garantia </option>
                                       <option value="SI">SI TIENE GARANTIA</option>
                                        <option value="NO">NO TIENE GARANTIA</option>
                                      
                              </select>
                        </div>
                            <p class="formulario__input-error">Digite repuesta con dos digitos de coherencia</p>
                      </div>
                   
                        
                        <div class="form-group col-md-6" id="grupo__recibe">
                            <label for="recibe" class="formulario__label mark">Recibe:</label>
                            <div class="formulario__grupo-input">
                                <i class="formulario__validacion-status fas fa-exclamation-circle"></i>
                                <select id="recibe" name="recibe"  class="form-control-lg col-lg-11">
                            <option value=""> Seleccione...</option>
                            <%
                                UsuarioDAO usuDAO = new UsuarioDAO();
                                for (UsuarioVO usuVO : usuDAO.listarE()) {

                            %>
                            <option value="<%= usuVO.getId()%>"><%= usuVO.getNombres()%>
                            </option>
                            <%
                                
                                }
                            %>
                        </select>
                            </div>
                        <p class="formulario__input-error">Debe seleccionar el nombre de quien recibe el producto </p>
                       </div>
                    
                    </div>
                        
                        <div class="formulario__mensaje m-auto text-center" id="formulario__mensaje">
                            
                            <p ><i class="fas fa-exclamation-triangle"></i><b>Error:</b> Porfavor llenar los espacios del formulario completamente.</p>
                         </div>
                           <div class="formulario__btn ">
                               <button type="submit "class="formulario__btn btn btn-success border border-dark btn-lg btn-block col-lg-8 mt-5 ">Registrar</button>     
                      <input type="hidden" value="1" name="opcion">
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
               
       
        
        
                
                
        
                       
        <!-- Termina aqui -->
        <%@include file="dash2.jsp" %>
        <!-- validaciones y demas -->
        <script type="text/javascript" src="assets/js/Factura.js"></script> 
        <script  type="" src = "https://unpkg.com/ionicons@5.2.3/dist/ionicons.js" ></script >
                <script src="https://kit.fontawesome.com/2c36e9b7b1.js" crossorigin="anonymous"></script>
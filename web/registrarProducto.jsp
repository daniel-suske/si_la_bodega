<%-- 
    Document   : registrarProducto
    Created on : 17/09/2020, 01:57:11 PM
    Author     : Patiño Sauarez
--%>
<%@page import="modeloDAO.ProductoDAO"%>
<%@page import="modeloVO.ProductoVO"%>
<%@page import="modeloVO.EstadoVO" %>
<%@page import="modeloDAO.EstadoDAO" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="https://unpkg.com/ionicons@4.5.10-0/dist/css/ionicons.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="assets/css/RegistrarFactura.css"/>
<%@include file="dash1.jsp" %>



   
        <title>Registrar Producto</title>
        <!--Contenido-->
        <div class="content-wrapper">
            <main class="container mb-5">
                <div class="row">
                    <h1 class="col-12 d-flex justify-content-center p-4 btn-primary w-100">Registrar Producto</h1>
                </div>
                <section class="row mt-5">
                    <div class="card w-100 m-auto">
                        <div class="card-header container bg-secondary">
                            <h2 class="m-90">Producto</h2>
                        </div>
                        
                        <div class="card-body">
                            <form class="form"  method="post" action="Producto" id="form">

                      <div class="form-row content ">
                          <div class="form-group col-md-6 " id="grupo__producto">
                              <label for="producto" class="formulario__label mark">Tipo Producto:</label>
                              <div class="formulario__grupo-input">
                                  <input class="form-control-lg col-lg-11" type="text" name="producto" id="producto" placeholder="ejem:Computador">
                             <i class="formulario__validacion-estado fas fa-exclamation-circle"></i>
                           </div>
                              
                              <p class="formulario__input-error">Debe completar el nombre del producto</p>
                              
                          </div>
                          <div class="form-group col-md-6" id="grupo__marca">
                              <label for="marca" class="formulario__label mark ">Marca</label>
                              <div class="formulario__grupo-input ">
                               <input class="form-control-lg col-lg-11" type="text" name="marca" id="marca" placeholder="ejem:LG">
                             <i class="formulario__validacion-estado fas fa-exclamation-circle"></i>
                           </div>  
                          <p class="formulario__input-error">Debe digitar una marca del producto corrrespondiente</p>
                          </div>
                      </div>
                    
              
                    <div class="form-row content">
                                  <div class="form-group col-md-12" id="grupo__modelo">
                          <label for="modelo" class="formulario__label mark">Modelo:</label>
                         
                        <div class="formulario__grupo-input">
                             <input class="form-control-lg col-lg-11" type="text" name="modelo" id="modelo" placeholder="ejem:LG Y Version">
                           <i class="formulario__validacion-estado fas fa-exclamation-circle"></i>
                            
                        </div>
                          <p class="formulario__input-error">El modelo deber ser acorde al la marca</p> 
                      </div>
                              <div class="form-group col-md-6 " id="grupo__serie">
                        <label for="serie" class="formulario__label mark ">Numero de Serie :</label>
                        <div class="formulario__grupo-input">
                            <input class="form-control-lg col-lg-11" type="text" name="serie" id="serie" placeholder="ejem:A85654B4">
                             <i class="formulario__validacion-estado fas fa-exclamation-circle"></i>
                            
                        </div>
                        
                        <p class="formulario__input-error">Digite Numeros y letras Exactas de serie</p>
                      </div>
                   
                        <div class="form-group col-md-6" id="grupo__status">
                            <label for="status" class="formulario__label mark ">Estado :</label>
                            
                        <div class="formulario__grupo-input">
                            
                           <i class="formulario__validacion-status fas fa-exclamation-circle"></i>
                           <select name="status" class="form-control-lg col-lg-11">
                            <option value=""> Estado ...</option>
                            <%
                                EstadoDAO estDAO = new EstadoDAO();
                                for (EstadoVO estVO : estDAO.listarEA()) {

                            %>
                            <option value="<%= estVO.getId()%>"> <%= estVO.getNombre()%></option>
                            <%
                                }
                            %>
                                      
                              </select>
                        </div>
                            <p class="formulario__input-error">Digite su estado activo</p>
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
        </div>
                       
                          
                   
                       
                     
                     
                               
        <!-- Termina aqui -->
       
               
        <script type="text/javascript" src="assets/js/registrarProducto.js"></script>
         <%@include file="dash2.jsp" %>
    
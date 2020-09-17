<%-- 
    Document   : ModificarDatosPE
    Created on : 16-sep-2020, 0:27:01
    Author     : Yeison
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="modeloVO.Datos_PEVO"%>
<%@page import="modeloDAO.Datos_PEDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="dash1.jsp" %>


  <title>Modificación de Datos Personales de Empleado</title>



        <!-- AQUI VA EL contenido-->

        <div class="content-wrapper">

              <div class="content">
              
                <br>

                <h1 class="text text-dark">Modificación de Datos Personales Empleado</h1>
              
                  <hr>
                  
                  <br><br><br>
                 
                    <div class="row">
                    </div>
                    <section class="row">
                            <div class="card w-100 m-auto">
                                    <div class="card-header container bg-warning">
                                            <h2>Datos e Información del Empleado</h2>
                                    </div>
                                
                                <%
                                    Datos_PEVO datVO = (Datos_PEVO)request.getAttribute("datos");
                                    
                                    if (datVO != null) {
                                                                         

                                %>

                                    <div class="card-body">
                                            <form action="Datos_PE" method="POST">
                                                <input type="hidden" name="textId" value="<%= datVO.getId()%>"/>
                                                    <div class="form-group">
                                                            <label>Empleado</label>
                                                            <input type="text" name="Id_Empleado" class="form-control" readonly="" value="<%= datVO.getId_Empleado()%>">
                                                    </div>
                                                    <div class="form-group">
                                                            <label>Fecha de Nacimiento:</label>
                                                            <input type="date" name="Fecha_N" max="2002-09-16" class="form-control" placeholder="Seleccione su Fecha de Nacimiento Correspondiente" value="<%= datVO.getFecha_Nacimiento()%>">
                                                    </div>
                                                    <div class="form-group ">
                                                            <label>Estado Civil:</label>
                                                            <select name="Estado_C" class="form-control form-control-lg">
                                                                    <option value="" selected>Seleccione su Estado Civil...</option>
                                                                    <%
                                                                        String e = "SO";
                                                                        String c = "CA";
                                                                        
                                                                        if (e.equals(datVO.getEstado_Civil())) {
                                                                    %>
                                                                    <option value="SO" selected>Solter@</option>
                                                                    <option value="CA">Casad@</option>
                                                                    <%
                                                                        } else if(c.equals(datVO.getEstado_Civil())) { 
                                                                    %>
                                                                    <option value="CA" selected>Casado</option>
                                                                    <option value="SO">Soltero</option>
                                                                    <%
                                                                        }
                                                                    %>
                                                            </select>
                                                    </div>  
                                                     <div class="form-group">
                                                            <label>EPS:</label>
                                                            <input type="text" name="Eps" class="form-control" placeholder="Ingrese Nombres Completos" value="<%= datVO.getEPS()%>">
                                                    </div>                                       
                                                    <div class="form-group">
                                                            <label>ARL:</label>
                                                            <input type="text" name="Arl" class="form-control" placeholder="Ingrese Email" value="<%= datVO.getARL()%>">
                                                    </div>	
                                                    <div class="form-group">
                                                            <label>Fondo de Pensiones:</label>
                                                            <input type="text" name="Fondo_P" class="form-control" placeholder="Ingrese Nombres Completos" value="<%= datVO.getFondo_Pensiones()%>">
                                                    </div>
                                                    <div class="form-group ">
                                                            <label>Nivel de Escolaridad:</label>
                                                            <select name="Nivel_E" class="form-control form-control-lg">
                                                                    <option value="" selected>Seleccione su Nivel de Educación</option>
                                                                    <%
                                                                        String b = "BA";
                                                                        String m = "ME";
                                                                        String s = "SU";
                                                                        
                                                                        if (b.equals(datVO.getNivel_Escolaridad())) {
                                                                    %>
                                                                    <option value="BA" selected>Basico</option>
                                                                    <option value="ME">Media</option>
                                                                    <option value="SU">Superior</option>
                                                                    <%
                                                                        } else if(m.equals(datVO.getNivel_Escolaridad())) { 
                                                                    %>
                                                                    <option value="BA">Basico</option>
                                                                    <option value="ME" selected>Media</option>
                                                                    <option value="SU">Superior</option>
                                                                    <%
                                                                        } else if(s.equals(datVO.getNivel_Escolaridad())) {
                                                                    %>
                                                                    <option value="BA">Basico</option>
                                                                    <option value="ME">Media</option>
                                                                    <option value="SU" selected>Superior</option>
                                                                    <% } %>
                                                            </select>
                                                    </div> 
                                                    <div class="form-group">
                                                            <label>Años de Experiencia:</label>
                                                            <input type="number" name="Exp" class="form-control" placeholder="Ingrese Nombres Completos" value="<%= datVO.getExperiencia() %>">
                                                    </div>
                                            
                                                    <div class="form-group">
                                                            <button class="btn btn-primary">Modificar Datos</button>
                                                            <input type="hidden" name="opcion" value="3"/>
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

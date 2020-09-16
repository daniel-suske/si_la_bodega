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

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" type="text/css" href="assets/plugins/DataTables/datatables.min.css"/> 
    

      <title>Gestion de Empleados</title>

        <!-- AQUI VA EL contenido-->

        <div class="content-wrapper">

              <div class="content">
              
                <br>
                

                <h1 class="text text-dark">Gestion de Empleados</h1>
              
                 <hr>
                 <br> 
                            <div class="navbar">
                                <a class="btn btn-success btn-lg m-3 text-light" href="RegistrarUsuarioE.jsp">+ Nuevo Registro</a><br>
                            </div>
                            <br><br>

                            <div class="card bg-white" style="width: 100%">
                            <div class="card-body ">
                            
                            <table id="datatable" class="table table-responsive table-sm table-bordered table-hover" style="width:100%">
                                <thead>
                                    <tr class="thead-dark">
                                        <th scope="col" class="text-center">#</th>
                                        <th scope="col" class="text-center">Nombres</th>
                                        <th>Apellidos</th>
                                        <th>Número de Documento</th>
                                        <th>Tipo de Documento</th>
                                        <th>Correo</th>
                                        <th>Teléfono</th>
                                        <th>Barrio</th>
                                        <th>Dirección</th>
                                        <th>Registrado Por</th>
                                        <th>Perfil</th>
                                        <th>Estado</th>
                                        <th>Modificar</th>
                                        <th>Estado </th>
                                    </tr>
                                    </tr>
                                </thead>
                                <%
                                UsuarioVO usuVO = new UsuarioVO();
                                UsuarioDAO usuDAO = new UsuarioDAO();

                                String a = ""; 

                                ArrayList<UsuarioVO> listaUsuariosE = usuDAO.listarE();

                                for (int i = 0; i < listaUsuariosE.size(); i++) {

                                    usuVO = listaUsuariosE.get(i);
                              
                                %>
                                <tbody>
                                    <tr class="text-dark justify-content-center">
                                        <td scope="col" class="text-center"><%= usuVO.getId() %></td>
                                        <td scope="col" class="text-center"><%= usuVO.getNombres() %></td>
                                        <td scope="col" class="text-center"><%= usuVO.getApellidos() %></td>
                                        <td scope="col" class="text-center"><%= usuVO.getNumero_Documento() %></td>
                                        <td scope="col" class="text-center"><%= usuVO.getTipo_Documento() %></td>
                                        <td scope="col" class="text-center"><%= usuVO.getCorreo() %></td>
                                        <td scope="col" class="text-center"><%= usuVO.getTelefono() %></td>
                                        <td scope="col" class="text-center"><%= usuVO.getBarrio() %></td>
                                        <td scope="col" class="text-center"><%= usuVO.getDireccion() %></td>
                                        <td scope="col" class="text-center"><%= usuVO.getId_Registrado_Por() %></td>
                                        <td scope="col" class="text-center"><%= usuVO.getPerfil() %></td>
                                        <td scope="col" class="text-center"><%= usuVO.getEstado() %></td>
                                        <td scope="col" class="text-center">
                                        <form method="post" action="Usuario" class="justify-content-center">
                                            <input type="hidden" name="textId" value="<%= usuVO.getId() %>" />
                                            <div class="row justify-content-center">
                                            <button class="btn-sm btn-warning mg-auto mb-1"><i><img src="assets/icons/edit.png" width="20px"></i></button>
                                            </div>
                                            <input type="hidden" name="opcion" value="3"/>
                                        </form>
                                            <div class="row justify-content-center">
                                            <button class="btn-sm btn-warning mg-auto"><i><img src="assets/icons/datosPE.png" width="20px"/></i></button>
                                            </div>
                                        </td>
                                        <td>
                                         <%
                                            a = "Activo";

                                            if (a.equals(usuVO.getEstado())) {
                                         %>
                                         <form action="Usuario"  class=""  method="POST">
                                            <input type="hidden" value="<%=usuVO.getId()%>" name="textId" id="Id">
                                            <input type="hidden" value="2" name="textEstado">
                                            <input type="hidden" value="6" name="opcion">

                                            <button >
                                                <label class="swtich-container ">
                                                <input type="checkbox" checked  id="switch">
                                                <div class="slider bg-primary">

                                                    <span class="on">Activo</span>
                                                    <span class="off">Inactivo</span>
                                                </div>
                                                </label>
                                            </button>

                                            <% } else {%>
                                            
                                            <form action="Usuario"  class=""  method="POST">
                                                <input type="hidden" value="<%=usuVO.getId()%>" name="textId" id="Id">
                                                <input type="hidden" value="1" name="textEstado">
                                                <input type="hidden" value="7" name="opcion">
                                                <button>
                                                    <label class="swtich-container">
                                                    <input type="checkbox"  id="switch">
                                                    <div class="slider bg-danger">
                                                        <span class="on">Activo</span>
                                                        <span class="off">Inactivo</span>
                                                    </div>
                                                    </label>
                                                </button>
                                            <% } %>
                                            </form>
                                        </td>
                                    </tr>
                                </tbody>
                                <% } %>
                            </table> 
                            </div>
                            </div>


       </div>
    </div>
                   
                   <%@include file="dash2.jsp"%>
  
 <!-- Optional JavaScript -->
    <!--, then Popper.js, then Bootstrap JS -->
    <script src="assets/plugins/bootstrap/js/popper.min.js"></script>
    <script src="assets/plugins/bootstrap/js/bootstrap.js"></script>
    
    <script type="text/javascript" src="assets/plugins/DataTables/datatables.min.js"></script>
      
    <script>
        $(document).ready(function(){
            $("#datatable").DataTable();
        })
    </script>
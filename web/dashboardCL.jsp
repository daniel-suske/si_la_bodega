<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="dash1.jsp" %>
        <!-- AQUI VA EL contenido-->
        <title>Menu</title>
        <div class="content-wrapper">

              <div class="content">

                <h2 class="h1 text-right text-uppercase text-primary"><%= PerfilU %></h2>
                <h1 class="text-left text-dark">Bienvenido <span class="text-primary">:</span> <br> <%= NombreU %> <%= ApellidoU %></h1> 

                <hr><h2 class="h2">MENU</h2>

                <div class="card-body">
                    <br><br>
                    <h3>Buzon</h3>
                </div>

                <br>
               </div>
        </div>     
               
                <!-- Footer !-->

 <%@include file="dash2.jsp"%>
    <script>
        document.getElementById(`dashboard_menu`).classList.add("active");
    </script>
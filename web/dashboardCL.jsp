<%-- 
    Document   : dashboardS
    Created on : 17-sep-2020, 1:34:25
    Author     : Yeison
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="dash1.jsp"%>
<title>La Bodega CL</title>
<!-- AQUI VA EL contenido-->

<div class="content-wrapper">

      <div class="content">
       
        <h2 class="h1 text-right text-uppercase text-primary"><%= PerfilU %></h2>
        <h1 class="text-left text-dark">Bienvenido <span class="text-primary">:</span> <br> <%= NombreU %> <%= ApellidoU %></h1> 
       
        <hr><h2 class="h2">CLIENTE</h2>
        
          <!-- Top Statistics -->
          <div class="row">
            <div class="col-xl-3 col-sm-6">
              <div class="card card-mini mb-4">
                <div class="card-body">
                  <h2 class="mb-1">71,503</h2>
                  <p>Inscripciones en Linea</p>
                  <div class="chartjs-wrapper">
                    <canvas id="barChart"></canvas>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-xl-3 col-sm-6">
              <div class="card card-mini  mb-4">
                <div class="card-body">
                  <h2 class="mb-1">9,503</h2>
                  <p>Nuevos Visitantes</p>
                  <div class="chartjs-wrapper">
                    <canvas id="dual-line"></canvas>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-xl-3 col-sm-6">
              <div class="card card-mini mb-4">
                <div class="card-body">
                  <h2 class="mb-1">71,503</h2>
                  <p>Pedido Total Mensual</p>
                  <div class="chartjs-wrapper">
                    <canvas id="area-chart"></canvas>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-xl-3 col-sm-6">
              <div class="card card-mini mb-4">
                <div class="card-body">
                  <h2 class="mb-1">9,503</h2>
                  <p>Total de Ingresos de este Año</p>
                  <div class="chartjs-wrapper">
                    <canvas id="line"></canvas>
                  </div>
                </div>
              </div>
            </div>
          </div>


          <div class="row">
            <div class="col-xl-8 col-md-12">
                    <!-- Sales Graph -->
                    <div class="card card-default" data-scroll-height="675">
                      <div class="card-header">
                        <h2>Ventas del Año</h2>
                      </div>
                      <div class="card-body">
                        <canvas id="linechart" class="chartjs"></canvas>
                      </div>
                      <div class="card-footer d-flex flex-wrap bg-white p-0">
                        <div class="col-6 px-0">
                          <div class="text-center p-4">
                            <h4>$6,308</h4>
                            <p class="mt-2">Total de ordenes de este año</p>
                          </div>
                        </div>
                        <div class="col-6 px-0">
                          <div class="text-center p-4 border-left">
                            <h4>$70,506</h4>
                            <p class="mt-2">Total de Ingresos de este año</p>
                          </div>
                        </div>
                      </div>
                    </div>
</div>
            <div class="col-xl-4 col-md-12">
                <!-- Doughnut Chart -->
                <div class="card card-default" data-scroll-height="675">
                  <div class="card-header justify-content-center">
                    <h2>Grafica de Estados</h2>
                  </div>
                  <div class="card-body" >
                    <canvas id="doChart" ></canvas>
                  </div>
                  <a href="#" class="pb-5 d-block text-center text-muted"><i class="mdi mdi-download mr-2"></i> Descargar Informe Genral</a>
                  <div class="card-footer d-flex flex-wrap bg-white p-0">
                    <div class="col-6">
                      <div class="py-4 px-4">
                        <ul class="d-flex flex-column justify-content-between">
                          <li class="mb-2"><i class="mdi mdi-checkbox-blank-circle-outline mr-2" style="color: #4c84ff"></i>Servicio Completo</li>
                          <li><i class="mdi mdi-checkbox-blank-circle-outline mr-2" style="color: #80e1c1 "></i>Servicio no Pagado</li>
                        </ul>
                      </div>
                    </div>
                    <div class="col-6 border-left">
                      <div class="py-4 px-4 ">
                        <ul class="d-flex flex-column justify-content-between">
                          <li class="mb-2"><i class="mdi mdi-checkbox-blank-circle-outline mr-2" style="color: #8061ef"></i>Servicio Pendiente</li>
                          <li><i class="mdi mdi-checkbox-blank-circle-outline mr-2" style="color: #ffa128"></i>Servicio Cancelado</li>
                        </ul>
                      </div>
                    </div>
                  </div>
                </div>
</div>
          </div>


        <br>
        </div>
    </div>     
        
        <!-- footer ->
        
      <%@include file="dash2.jsp"%>

<%-- 
    Document   : GenerarPDF_Repuesto_
    Created on : 15/11/2020, 12:28:08 AM
    Author     : jony
--%>

<%@page import="util.Conexion"%>
<%@page import="java.sql.Connection"%>
<%@page import="net.sf.jasperreports.engine.JasperRunManager"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reporte PDF Repuesto</title>b
    </head>
    <body>
        <%

            File reporte = new File(application.getRealPath("reportes/Repuestos/ReporteRepuesto.jasper")); // llamar el ejcutable del reporte
            Map<String, Object> parametros = new HashMap<String, Object>();  // Convertir los String a Objetos
            Connection conexion = null; // se crea parametro tipo conexion 
            Conexion conBD = new Conexion(); // se llama a las clase conexion 
            conexion = conBD.obtenerConexion(); // se obtiene la conexion 
            byte[] bytes = JasperRunManager.runReportToPdf(reporte.getPath(), parametros, conexion);

            response.setContentType("application/pdf"); //tipo pdf
            response.setContentLength(bytes.length); // definicion de tamaño de contenido

            ServletOutputStream salida = response.getOutputStream();
            salida.write(bytes, 0, bytes.length);

            salida.flush();
            salida.close();
        %>
    </body>
</html>

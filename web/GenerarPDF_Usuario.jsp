<%-- 
    Document   : GenerarPDF_Usuario
    Created on : 04-nov-2020, 18:40:49
    Author     : Yeison
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

        <!--Icono-->
        <link rel="apple-touch-icon" tallas="57x57" href="recursos/img/Iconos.ico/apple-icon-57x57.png">
        <link rel="apple-touch-icon" tallas="60x60" href="recursos/img/Iconos.ico/apple -icon-60x60.png">
        <link rel=" apple-touch-icon " tamaños=" 72x72 " href="recursos/img/Iconos.ico/apple-icon-72x72.png">
        <link rel=" apple-touch-icon " tamaños="76x76" href="recursos/img/Iconos.ico/apple-icon-76x76.png">
        <link rel="apple-touch-icon " tamaños=" 114x114 " href="recursos/img/Iconos.ico/apple-icon-114x114.png">
        <link rel="apple-touch-icon" tallas="120x120" href="recursos/img/Iconos.ico/apple-icon-120x120.png">
        <link rel="apple-touch-icon" tallas="144x144" href="recursos/img/Iconos.ico/apple-icon-144x144.png ">
        <link rel=" apple-touch-icon " tamaños=" 152x152 " href="recursos/img/Iconos.ico/apple-icon-152x152.png">
        <link rel=" apple-touch-icon " tamaños="180x180" href="recursos/img/Iconos.ico/apple-icon-180x180.png">
        <link rel="icon" type="image / png" tamaños="192x192" href="recursos/img/Iconos.ico/android-icon-192x192.png">
        <link rel="icon" type="image / png" tamaños="32x32" href="recursos/img/Iconos.ico/favicon-32x32.png">
        <link rel="icon" type="image / png" tallas="96x96" href="recursos/img/Iconos.ico/favicon-96x96.png">
        <link rel="icon" type="image / png" tallas="16x16" href="recursos/img/Iconos.ico/favicon-16x16.png">
        <link rel=" manifest " href="recursos/img/Iconos.ico/manifest.json">
        <meta name="msapplication-TileColor" content="#ffffff">
        <meta name="msapplication-TileImage" content="recursos/img/Iconos.ico/ms-icon-144x144.png">
        <meta name="theme-color" content="#ffffff">
        
        <title>Reporte de Usuarios</title>
    </head>
    <body>   
        <%
            File reporteU = new File(application.getRealPath("reportes/Usuarios/ReporteUsuarios.jasper")); //Ubica el reporte jasper

            Map<String, Object> parametros = new HashMap<String, Object>(); //Unifica todo en un Objeto
            Connection conexion = null;
            Conexion conBD = new Conexion();
            conexion = conBD.obtenerConexion();
            
            byte[] bytes = JasperRunManager.runReportToPdf(reporteU.getPath(), parametros, conexion);
            
            response.setContentType("application/pdf");
            response.setContentLength(bytes.length);
            
            ServletOutputStream salida = response.getOutputStream();
            salida.write(bytes, 0, bytes.length);
            salida.flush();
            salida.close();
        %>
    </body>
</html>

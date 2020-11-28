<%-- 
    Document   : GenerarPDF_Factura
    Created on : 20/11/2020, 11:18:09 PM
    Author     : Patiño Sauarez
--%>

<%@page import="java.sql.Connection"%>
<%@page import="util.Conexion"%>
<%@page import="net.sf.jasperreports.engine.JasperRunManager"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>GenerarPDF_Factura</title>
    </head>
    <body>
       
        <%
            File reporte = new File(application.getRealPath("ReporteFactura.jasper"));//Objeto y ruta para traer el nombre del reporte 
            Map<String, Object> parametros = new HashMap<String,Object>();//convertir elementos del documento reporte en un solo documento
            Connection conexion = null; //crear el parametro conexion en relacion con byte
            Conexion ConBD = new Conexion();//instanciar conexion 
            conexion = ConBD.obtenerConexion(); //Obtener Conexion y Retorna al parametro de byte 
            byte[] bytes = JasperRunManager.runReportToPdf(reporte.getPath(), parametros,conexion);//Conexion Antes para permiso del generador byte 
            
            response.setContentType("application/pdf");//tipo de formato
            response.setContentLength(bytes.length);//tamaño de contenido de  byte 
            ServletOutputStream salida = response.getOutputStream();// Salida del archivo pdf
            salida.write(bytes, 0,bytes.length);// 0 enciende solo cuando se necesite el reporte mas length: tamaño del archivo
            
            salida.flush();//archivos planos, genera la salida 
            salida.close();//y se cierra 
            
            %>
    </body>
</html>

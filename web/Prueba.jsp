<%-- 
    Document   : Prueba
    Created on : 17-sep-2020, 8:53:26
    Author     : Yeison
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="assets/plugins/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form method="post" id="formulario-contacto" role="form" autocomplete="off">
            <div class="form-group has-success">
            <input class="form-control hidden" type="text" name="pack" value="contacto" readonly placeholder="Nombre" />
            <input class="form-control" type="text" name="nombre" placeholder="Nombre" />
            <span id="error" class="help-block"></span></div>
            <div class="form-group has-error">
            <input class="form-control" type="email" name="email" placeholder="Correo electrónico" />
            <span id="error" class="help-block"></span></div>
            <div class="form-group">
            <textarea class="form-control" rows="14" name="mensaje" placeholder="Mensaje"></textarea>
            <span id="error" class="help-block"></span></div>
            <div class="checkbox">
            <label>
            <input type="checkbox" name="aceptolopd" value="Acepto Lopd" required />
            He leído y acepto la política de protección de datos.</label>
            </div>
            <div class="form-group">
            <button class="btn btn-primary btn-lg" type="submit">Enviar </button>
            </div>
        </form>
         <script src="assets/js/validator.js"></script>
         <script src="assets/plugins/bootstrap/js/bootstrap.js" type="text/javascript"></script>
         <script src="assets/plugins/bootstrap/js/popper.min.js" type="text/javascript"></script>
         <script src="assets/plugins/jquery/jquery.js" type="text/javascript"></script>
    </body>
</html>

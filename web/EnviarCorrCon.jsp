<%-- 
    Document   : EnviarCorrCon
    Created on : 14-oct-2020, 23:38:21
    Author     : Yeison
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link rel="stylesheet" type="text/css" href="recursos/css/enviarcorr.css"/>
        <link href="recursos/vendor/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
        <!--Icono-->
        <link rel="apple-touch-icon" tallas="57x57" href="recursos/img/Iconos.ico/apple-icon-57x57.png">
        <link rel="apple-touch-icon" tallas="60x60" href="recursos/img/Iconos.ico/apple -icon-60x60.png ">
        <link rel=" apple-touch-icon " tamaños=" 72x72 " href="recursos/img/Iconos.ico/apple-icon-72x72.png ">
        <link rel=" apple-touch-icon " tamaños="76x76" href="recursos/img/Iconos.ico/apple-icon-76x76.png">
        <link rel="apple-touch-icon " tamaños=" 114x114 " href="recursos/img/Iconos.ico/apple-icon-114x114.png ">
        <link rel="apple-touch-icon" tallas="120x120" href="recursos/img/Iconos.ico/apple-icon-120x120.png">
        <link rel="apple-touch-icon" tallas="144x144" href="recursos/img/Iconos.ico/apple-icon-144x144.png ">
        <link rel=" apple-touch-icon " tamaños=" 152x152 " href="recursos/img/Iconos.ico/apple-icon-152x152.png ">
        <link rel=" apple-touch-icon " tamaños="180x180" href="recursos/img/Iconos.ico/apple-icon-180x180.png">
        <link rel="icon" type="image / png" tamaños="192x192" href="recursos/img/Iconos.ico/android-icon-192x192.png">
        <link rel="icon" type="image / png" tamaños="32x32" href="recursos/img/Iconos.ico/favicon-32x32.png">
        <link rel="icon" type="image / png" tallas="96x96" href="recursos/img/Iconos.ico/favicon-96x96.png">
        <link rel="icon" type="image / png" tallas="16x16" href="recursos/img/Iconos.ico/favicon-16x16.png ">
        <link rel=" manifest " href="recursos/img/Iconos.ico/manifest.json">
        <meta name="msapplication-TileColor" content="#ffffff">
        <meta name="msapplication-TileImage" content="recursos/img/Iconos.ico/ms-icon-144x144.png">
        <meta name="theme-color" content="#ffffff">
        <title>La Bodega</title>
    </head>
    <body>
    <div class="container">
        <div class="row justify-content-center m-auto">
    <div class="bd-example-modal-lg  modal-efe">
        <div class="modal-dialog modal-lg  modal-efe">

            <div class="modal-content modal-efe">
                <div class="modal-header">

                    <button type="button" class="close " aria-label="Close">
                        <a class="ex" href="index.jsp"><i class="fas fa-home"></i></a>
                    </button>
                    <img class="logona" src="recursos/img/logo.png" alt="logo">

                </div>
                <div class="modal-body">
                    <h4 class="modal-title">Para Cambiar Contraseña</h4>
                    <form method="POST" action="Usuario" id="formularioEC"> <!-- id="formulario" por Arreglar-->
                        
                        <div class="formulario__grupo" id="grupo__correos">
                            <label for="correos" class="formulario__label">* Correo:</label>
                            <div class="formulario__grupo-input">
                                <input type="email" class="formulario__input" name="correos" id="correos" placeholder="Digite su Correo electronico correspondiente" autocomplete="email">
                                <span><i class="formulario__validacion-estado far fa-times-circle"></i></span>
                            </div>
                            <p class="formulario__input-error">El Correo es un campo obligatorio y debe ser digitado Correctamente</p>
                        </div>                   

                        <div class="form-group">
                        <a href="index.jsp">Ir al Inicio</a>
                        </div>
                        
                        <div class="formulario__mensaje" id="formulario__mensaje">
                            <p>
                                <i class="fas fa-exclamation-triangle"></i> <b>: </b>Porfavor Diligencie los Campos del Formulario Correctamente </p>
                        </div>
                </div>
                <div class="modal-footer">
                    <div class="formulario__grupo formulario__grupo-btn-enviar">
                        <button type="submit" class="formulario__btn">Enviar</button>
                        <input type="hidden" value="11" name="opcion">
                        
                        <p class="formulario__mensaje-exito" id="formulario__mensaje-exito">Valor Enviado Correctamente</p>
                    </div>

                <br>
                <div style="color:Red">
                    <center>
                    <%if (request.getAttribute("mensajeFallido") != null) {%>
                    ${mensajeFallido}
                    <% } else { %>
                    ${mensajeExitoso}
                    <% } %>
                    </center>
                </div>
                    
                </form>

                </div>
            </div>
        </div>
    </div>
        </div>
    </div>
        <script src="recursos/vendor/jquery.min.js" type="text/javascript"></script>
        <script src="recursos/vendor/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="https://kit.fontawesome.com/2c36e9b7b1.js" crossorigin="anonymous"></script>
        <script type="text/javascript" src="recursos/js/enviarCorr.js"></script>
    </body>
</html>
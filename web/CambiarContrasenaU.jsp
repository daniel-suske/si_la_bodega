<%-- 
    Document   : CambiarContrasenaU
    Created on : 14-oct-2020, 1:07:06
    Author     : Yeison
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link rel="stylesheet" type="text/css" href="recursos/css/cambiarpass.css"/>
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
                    <h4 class="modal-title">Cambiar Contraseña</h4>
                    <form method="POST" action="Usuario" id="formularioCP"> <!-- id="formulario" por Arreglar-->
                        
                        <div class="formulario__grupo" id="grupo__documento">
                            <label for="documento" class="formulario__label">* Número de Documento:</label>
                            <div class="formulario__grupo-input">
                                <input type="number" class="formulario__input" name="documento" id="documento" placeholder="Su correcto Número de documento registrado para confirmar">
                                <span><i class="formulario__validacion-estado far fa-times-circle"></i></span>
                            </div>
                            <p class="formulario__input-error">El Número de Documento es obligatorio y debe ser el registrado correctamente</p>
                        </div>                    

                        <div class="formulario__grupo" id="grupo__contrasena_p">
                            <label for="contrasena_p" class="formulario__label">* Codigo Parcial:</label>
                            <div class="formulario__grupo-input">
                                <input type="text" class="formulario__input" name="contrasena_p" id="contrasena_p" placeholder="Su codigo generado parcial">
                                <span><i class="formulario__validacion-estado far fa-times-circle"></i></span>
                            </div>
                            <p class="formulario__input-error">Es obligatorio su Codigo proporcionada parcialmente</p>
                        </div>   
                        
                        <div class="formulario__grupo" id="grupo__contrasenas">
                            <label for="contrasenas" class="formulario__label">* Contraseña Nueva:</label>
                            <div class="formulario__grupo-input" id="password">
                                <i class="fas fa-eye ojos1" id="hello" onclick="ver()"></i>
                                <input type="password" class="formulario__input" name="contrasenas" id="contrasenas" autocomplete="new-password">
                                <span><i class="formulario__validacion-estado far fa-times-circle"></i></span>
                            </div>
                            <p class="formulario__input-error">La contraseña debe ser minimo de 8 digitos y debe contener como minimo una letra minuscula y una mayuscula y un numero</p>
                        </div>

                        <div class="formulario__grupo" id="grupo__contrasenas2">
                            <label for="contrasenas2" class="formulario__label">* Repetir Contraseña Nueva:</label>
                            <div class="formulario__grupo-input">
                                <input type="password" class="formulario__input" name="contrasenas2" id="contrasenas2" autocomplete="new-password">
                                <span><i class="formulario__validacion-estado far fa-times-circle"></i></span>
                            </div>
                            <p class="formulario__input-error">Ambas contraseñas deben ser iguales</p>
                        </div>

                        <div class="formulario__grupo" id="grupo__terminos">
                                <input class="formulario__checkbox" type="checkbox" name="terminos" id="terminos" >
                                <label for="terminos" class="formulario__label-check">Acepto los Terminos y Condiciones</label>
                        </div>

                        <a href="index.jsp">Ir al Inicio</a>

                        <div class="formulario__mensaje" id="formulario__mensaje">
                            <p>
                                <i class="fas fa-exclamation-triangle"></i> <b>: </b>Porfavor Diligencie los Campos del Formulario Correctamente </p>
                        </div>
                </div>
                <div class="modal-footer">
                    <div class="formulario__grupo formulario__grupo-btn-enviar">
                        <button type="submit" class="formulario__btn">Confirmar</button>
                        <input type="hidden" value="10" name="opcion">
                        
                        <p class="formulario__mensaje-exito" id="formulario__mensaje-exito">Formulario Enviado Correctamente</p>
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
        <script type="text/javascript" src="recursos/js/cambiarPs.js"></script>
    </body>
</html>
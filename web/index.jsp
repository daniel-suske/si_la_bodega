<%-- 
    Document   : index
    Created on : 15-ago-2020, 0:53:01
    Author     : Yeison
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="es" class="no-js">

<head>
    <meta charset="utf-8" />
    <title>La Bodega</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1" name="viewport" />
    <meta name="description"
        content="Pagina web de Servicio Tecnico de Reparación de Electrodomesticos, Atendemos desde cualquier lugar. Ofrecemos servicio a domicilio como local tambien aplicando las mejores formas de cumplir nuestra mision.">
    <meta name="keywords"
        content="Servicio Tecnico de Reparación de Electrodomesticos, Servicio, Reparaciones de electrodomesticos, Reparaciones de electrodomesticos dañados, Servicio Tecnico de electrodomesticos, Electrodomesticos aberiados, Empresa reparadora de electrodomesticos.">
    <meta name="author" content="Grupo-6">
    <link href="http://fonts.googleapis.com/css?family=Hind:300,400,500,600,700" rel="stylesheet" type="text/css">
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
    <link href="recursos/vendor/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css" />
    <link href="recursos/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="recursos/css/animate.css" rel="stylesheet">






    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="recursos/css/formulario.css">
    <link rel="stylesheet" href="recursos/css/login.css">


    <link href="recursos/vendor/swiper/css/swiper.min.css" rel="stylesheet" type="text/css" />
    <link href="recursos/css/layout.min.css" rel="stylesheet" type="text/css" />
    <link href="recursos/css/layout.css" rel="stylesheet" type="text/css">
    <link rel="shortcut icon" href="recursos/favicon.ico" />
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
    <link rel="icon" type="image / png" tallas="16x16" href="recursos/img/Iconos.ico/favicon-16x16. png ">
    <link rel=" manifest " href="recursos/img/Iconos.ico/manifest.json">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="recursos/img/Iconos.ico/ms-icon-144x144.png">
    <meta name="theme-color" content="#ffffff">
</head>


<body id="body" data-spy="scroll" data-target=".header">

    <header class="header navbar-fixed-top">
        <nav class="navbar" role="navigation">
            <div class="container">
                <div class="menu-container js_nav-item">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".nav-collapse">
                        <span class="sr-only">Navegación</span>
                        <span class="toggle-icon"></span>
                    </button>

                    <div class="logo">
                        <a class="logo-wr" href="#body">
                            <img class="logon" src="recursos/img/logo.png" alt="FlameOnePage Logo">

                        </a>
                    </div>
                </div>

                <div class="collapse navbar-collapse nav-collapse">

                    <!--div class="language-switcher">
					  <ul class="nav-lang">
                        <li><a class="active" href="#">EN</a></li>
					    <li><a href="#">DE</a></li>
						<li><a href="#">FR</a></li>
					  </ul>
					</div--->

                    <div class="menu-container">
                        <ul class="nav navbar-nav navbar-nav-right">
                            <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover"
                                    href="#body">Inicio</a></li>
                            <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover"
                                    href="#about">Nuestro Proceso</a></li>
                            <!--<li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="#services">Services</a></li>-->
                            <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover"
                                    href="#products">Servicios</a></li>
                            <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover"
                                    href="#work">Asociados</a></li>
                            <!-- <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="#pricing">Pricing</a></li>-->
                            <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover"
                                    href="#contact">Contáctanos</a></li>

                            <button class="nav-item-child-btn nav-item-hover" data-toggle="modal"
                                data-target="#miModal">Ingresar</button>


                        </ul>
                    </div>
                </div>
            </div>
        </nav>
    </header>


    <div class="modal fade bd-example-modal-lg  modal-efe" tabindex="-1" role="dialog"
        aria-labelledby="myLargeModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg  modal-efe">

            <div class="modal-content modal-efe">
                <div class="modal-header">

                    <button type="button" class="close " data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true" class="equis">&times;</span>
                    </button>
                    <img class="logona" src="recursos/img/logo.png" alt="logo">



                </div>
                <div class="modal-body">
                    <h4 class="modal-title">Registro Clientes</h4>
                    <form method="post" action="Usuario" class="formulario"> <!-- id="formulario" por Arreglar-->
                        <div class="formulario__grupo" id="grupo__nombres">
                            <span>
                                <label for="nombres" class="formulario__label">Nombres:</label>
                                <div class="formulario__grupo-input">
                                    <input type="text" class="formulario__input" name="nombres" id="nombres"
                                        placeholder="Ejem: Juan Camilo..">
                                    <i class="formulario__validacion-estado far fa-times-circle"></i>
                                </div>
                                <p class="formulario__input-error">Los NOMBRES debe ser de 4 a 50 digitos y solo pueden
                                    contener letras</p>
                        </div>

                        <div class="formulario__grupo" id="grupo__apellidos">
                            <label for="apellidos" class="formulario__label">Apellidos:</label>
                            <div class="formulario__grupo-input">
                                <input type="text" class="formulario__input" name="apellidos" id="apellidos"
                                    placeholder="Ejem: Garcia Marquez..">
                                <i class="formulario__validacion-estado far fa-times-circle"></i>
                            </div>
                            <p class="formulario__input-error">Los APELLIDOS debe ser de 4 a 50 digitos y solo pueden
                                contener letras</p>
                        </div>

                        <div class="formulario__grupo" id="grupo__tipo">
                            <label for="tipo" class="formulario__label">Tipo de Documento:</label>
                            <div class="formulario__grupo-input">
                                <select name="tipo" id="tipo" class="formulario__input  selects">
                                    <option value="EFE" selected>Seleccione su tipo de
                                        Identificación</option>
                                    <option value="CC">Cédula de Ciudadanía</option>
                                    <option value="CE">Cédula de Extranjería</option>
                                    <option value="PA">Pasaporte</option>
                                    <option value="RC">Registro Civil</option>
                                </select>

                                <i class="formulario__validacion-estado far fa-times-circle"></i>
                            </div>
                            <p class="formulario__input-error">Debe seleccionar el Tipo de Documento</p>
                        </div>

                        <div class="formulario__grupo" id="grupo__documento">
                            <label for="documento" class="formulario__label">Numero de Documento:</label>
                            <div class="formulario__grupo-input">
                                <input type="number" class="formulario__input" name="documento" id="documento"
                                    placeholder="Ejem: 1001556252..">
                                <i class="formulario__validacion-estado far fa-times-circle"></i>
                            </div>
                            <p class="formulario__input-error">El Numero de Documento debe ser de 7 a 11 digitos y solo
                                pueden contener numeros</p>
                        </div>

                        <div class="formulario__grupo" id="grupo__telefono">
                            <label for="telefono" class="formulario__label">Telefono:</label>
                            <div class="formulario__grupo-input">
                                <input type="number" class="formulario__input" name="telefono" id="telefono"
                                    placeholder="Ejem: 3152648487..">
                                <i class="formulario__validacion-estado far fa-times-circle"></i>
                            </div>
                            <p class="formulario__input-error">El Telefono debe ser de 6 a 10 digitos y solo pueden
                                contener numeros</p>
                        </div>                     
                        
                        <div class="formulario__grupo" id="grupo__direccion">
                            <label for="direccion" class="formulario__label">Direccion:</label>
                            <div class="formulario__grupo-input">
                                <input type="text" class="formulario__input" name="direccion" id="direccion"
                                    placeholder="Ejem: CALLE 200 #145-12..">
                                <i class="formulario__validacion-estado far fa-times-circle"></i>
                            </div>
                            <p class="formulario__input-error">La direccion debe ser de 15 a 100 digitos y puede
                                contener numeros, letras y simbolos</p>
                        </div>

                        <div class="formulario__grupo" id="grupo__correo">
                            <label for="email" class="formulario__label">Correo:</label>
                            <div class="formulario__grupo-input">
                                <input type="email" class="formulario__input" name="correos" id="correo"
                                    placeholder="Ejem:zuckerberg@gmail.com">
                                <i class="formulario__validacion-estado far fa-times-circle"></i>
                            </div>
                            <p class="formulario__input-error">El correo debe ser de 10 a 100 digitos y puede debe
                                contener un formato de correo</p>
                        </div>
                        
                        <div class="formulario__grupo" id="grupo__direccion">
                            <label for="direccion" class="formulario__label">Barrio:</label>
                            <div class="formulario__grupo-input">
                                <input type="text" class="formulario__input" name="barrio" id="barrio"
                                    placeholder="Una localidad">
                                <i class="formulario__validacion-estado far fa-times-circle"></i>
                            </div>
                            <p class="formulario__input-error">La direccion debe ser de 15 a 100 digitos y puede
                                contener numeros, letras y simbolos</p>
                        </div>                           

                        <div class="formulario__grupo" id="grupo__contrasena">
                            <label for="contrasena" class="formulario__label">Contraseña:</label>
                            <div class="formulario__grupo-input">
                                <input type="password" class="formulario__input" name="contrasena" id="contrasena">
                                <i class="formulario__validacion-estado far fa-times-circle"></i>
                            </div>
                            <p class="formulario__input-error">La contraseña debe ser minimo de 8 a 50 digitos y debe
                                contener numeros y letras</p>
                        </div>

                        <div class="formulario__grupo" id="grupo__contrasena2">
                            <label for="contrasena2" class="formulario__label">Repetir Contraseña:</label>
                            <div class="formulario__grupo-input">
                                <input type="password" class="formulario__input" name="contrasena2" id="contrasena2">
                                <i class="formulario__validacion-estado far fa-times-circle"></i>
                            </div>
                            <p class="formulario__input-error">Ambas contraseñas deben ser iguales</p>
                        </div>

                        <div class="formulario__grupo" id="grupo__terminos">
                            <label>
                                <input class="formulario__checkbox" type="checkbox" name="terminos" id="terminos">
                                Acepto los Terminos y Condiciones
                            </label>
                        </div>


                        <div class="formulario__mensaje" id="formulario__mensaje">
                            <p>
                                <i class="fas fa-exclamation-triangle"></i> <b>Error: </b>Porfavor Diligencie los Campos
                                del Formulario Correctamente </p>

                        </div>
                </div>
                <div class="modal-footer">
                    <div class="formulario__grupo formulario__grupo-btn-enviar">
                        <button type="submit" class="formulario__btn">Registrarme</button>
                        <input type="hidden" value="1" name="opcion">
                        
                        <p class="formulario__mensaje-exito" id="formulario__mensaje-exito">Formulario Enviado
                            Correctamente</p>
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






    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
        <div class="container">
            <ol class="carousel-indicators">
                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                <li data-target="#carousel-example-generic" data-slide-to="3"></li>
                <li data-target="#carousel-example-generic" data-slide-to="4"></li>
            </ol>
        </div>

        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img class="img-responsive" src="recursos/img/1920x1080/carro2.png" alt="Slider Image">
                <div class="container">
                    <div class="carousel-centered">
                        <div class="margin-b-40">
                            <h1 class="carousel-title">Reparación de Electrodomésticos</h1>
                            <p class="color-white">Electrodomésticos, dispositivos hasta Electromecanismos que no operan
                                o estan obsoletos a su función.</p>
                        </div>
                        <button class="btn-theme btn-theme-sm btn-white-brd text-uppercase" data-toggle="modal"
                            data-target=".bd-example-modal-lg">¡Registrate!</button>
                    </div>
                </div>
            </div>
            <div class="item">
                <img class="img-responsive" src="recursos/img/1920x1080/carro1.png" alt="Slider Image">
                <div class="container">
                    <div class="carousel-centered">
                        <div class="margin-b-40">
                            <h2 class="carousel-title">Reparación de Electrodomésticos</h2>
                            <p class="color-white">La asistencia técnica o soporte técnico es brindada por las empresas
                                para que sus
                                clientes con la finalidad de la asistencia técnica es ayudar a los usuarios para que
                                puedan resolver ciertos problemas con el funcionamiento de sus electrodomésticos con la
                                mejor y unica forma de servicio personal para cada cliente.</p>
                        </div>
                        <button class="btn-theme btn-theme-sm btn-white-brd text-uppercase" data-toggle="modal"
                            data-target=".bd-example-modal-lg">¡Registrate!</button>
                    </div>
                </div>
            </div>
            <div class="item">
                <img class="img-responsive" src="recursos/img/1920x1080/2.jpg" alt="Slider Image">
                <div class="container">
                    <div class="carousel-centered">
                        <div class="margin-b-40">
                            <h2 class="carousel-title">Reparación de Electrodomésticos</h2>
                            <p class="color-white">Realizamos reparaciones de Electrodomésticos de la mejor Calidad y al
                                mejor precio</p>
                        </div>
                        <button class="btn-theme btn-theme-sm btn-white-brd text-uppercase" data-toggle="modal"
                            data-target=".bd-example-modal-lg">¡Registrate!</button>
                    </div>
                </div>
            </div>
            <div class="item">
                <img class="img-responsive" src="recursos/img/1920x1080/02.jpg" alt="Slider Image">
                <div class="container">
                    <div class="carousel-centered">
                        <div class="margin-b-40">
                            <h2 class="carousel-title">Reparación de Electrodomésticos</h2>
                            <p class="color-white">Realizamos reparaciones de Electrodomésticos de la mejor Calidad y al
                                mejor precio</p>
                        </div>
                        <button class="btn-theme btn-theme-sm btn-white-brd text-uppercase" data-toggle="modal"
                            data-target=".bd-example-modal-lg">¡Registrate!</button>
                    </div>
                </div>
            </div>
            <div class="item">
                <img class="img-responsive" src="recursos/img/1920x1080/3.jpg" alt="Slider Image">
                <div class="container">
                    <div class="carousel-centered">
                        <div class="margin-b-40">
                            <h2 class="carousel-title">Reparación de Electrodomésticos</h2>
                            <p class="color-white">Realizamos reparaciones de Electrodomésticos de la mejor Calidad y al
                                mejor precio</p>
                        </div>
                        <button class="btn-theme btn-theme-sm btn-white-brd text-uppercase" data-toggle="modal"
                            data-target=".bd-example-modal-lg">¡Registrate!</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--========== SLIDER ==========-->

    <!--========== PAGE LAYOUT ==========-->
    <!-- About -->
    <div id="about">
        <div class="content-lg container">
            <!-- Masonry Grid -->
            <div class="masonry-grid row">
                <div class="masonry-grid-sizer col-xs-6 col-sm-6 col-md-1"></div>
                <div class="masonry-grid-item col-xs-12 col-sm-6 col-md-4 sm-margin-b-30">
                    <div class="margin-b-60">
                        <h2>Solicitar un Servicio</h2>
                        <p>Puedes realizar la solicitud den el servicio de reparación del electrodoméstico</p>
                    </div>
                    <img class="full-width img-responsive wow fadeInUp" src="recursos/img/500x500/01.jpg" alt="Portfolio Image"
                        data-wow-duration=".3" data-wow-delay=".2s">
                </div>
                <div class="masonry-grid-item col-xs-12 col-sm-6 col-md-4">
                    <div class="margin-b-60">
                        <h2>Agendar el  Servicio </h2>
                        <p>Nuestro Tecnico se acerca se una forma rapida y valida el daño y el costo</p>
                    </div>
                    <img class="full-width img-responsive wow fadeInUp" src="recursos/img/500x500/02.jpg" alt="Portfolio Image"
                        data-wow-duration=".3" data-wow-delay=".3s">
                </div>
                <div class="masonry-grid-item col-xs-12 col-sm-6 col-md-4">
                    <div class="margin-t-60 margin-b-60">
                        <h2>Verificación de datos</h2>
                        <p>Nuestra secretaria se asegura de tener tus datos en orden </p>
                    </div>
                    <img class="full-width img-responsive wow fadeInUp" src="recursos/img/500x500/03.jpg" alt="Portfolio Image"
                        data-wow-duration=".3" data-wow-delay=".4s">
                </div>
                <div class="masonry-grid-item col-xs-12 col-sm-6 col-md-4">
                    <div class="margin-t-60 margin-b-60">
                        <h2>Validación Confirmada</h2>
                        <p>Nustros servidores Validan tu pago de la reparacion o el electrodoméstico pagado</p>
                    </div>
                    <img class="full-width img-responsive wow fadeInUp" src="recursos/img/500x500/06.jpg" alt="Portfolio Image"
                        data-wow-duration=".3" data-wow-delay=".4s">
                </div>
                <div class="masonry-grid-item col-xs-12 col-sm-6 col-md-4">
                    <div class="margin-t-60 margin-b-60">
                        <h2>Diagnóstico del técnico</h2>
                        <p>El diagnóstico lo documenta el técnico en su libreta, costo y el precio del electrodoméstico </p>

                    </div>
                    <img class="full-width img-responsive wow fadeInUp" src="recursos/img/500x500/07.jpg" alt="Portfolio Image"
                        data-wow-duration=".3" data-wow-delay=".4s">
                </div>
                <div class="masonry-grid-item col-xs-12 col-sm-6 col-md-4">
                    <div class="margin-t-60 margin-b-60">
                        <h2>Se realiza la reparación</h2>
                        <p>Se elabora la factura con los datos respectivos del cliente en acción de rapidez</p>

                    </div>
                    <img class="full-width img-responsive wow fadeInUp" src="recursos/img/500x500/05.jpg" alt="Portfolio Image"
                        data-wow-duration=".3" data-wow-delay=".4s">
                </div>
            </div>
            <!-- End Masonry Grid -->
        </div>

        <!---- <div class="bg-color-sky-light">
                <div class="content-lg container">
                    <div class="row">
                        <div class="col-md-5 col-sm-5 md-margin-b-60">
                            <div class="margin-t-50 margin-b-30">
                                <h2>Why Us?</h2>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                            </div>
                            <a href="#" class="btn-theme btn-theme-sm btn-white-bg text-uppercase">More...</a>
                        </div>
                        <div class="col-md-5 col-sm-7 col-md-offset-2">
                            <!-- Accordion -->
        <!---- 
                            <div class="accordion">
                                <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                                    <div class="panel panel-default">
                                        <div class="panel-heading" role="tab" id="headingOne">
                                            <h4 class="panel-title">
                                                <a class="panel-title-child" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                                    Expert Research
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                                            <div class="panel-body">
                                                Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch.
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel panel-default">
                                        <div class="panel-heading" role="tab" id="headingTwo">
                                            <h4 class="panel-title">
                                                <a class="collapsed panel-title-child" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                                    Hi-Tech Engineering
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                            <div class="panel-body">
                                                Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch.
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel panel-default">
                                        <div class="panel-heading" role="tab" id="headingThree">
                                            <h4 class="panel-title">
                                                <a class="collapsed panel-title-child" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                                    Outstanding Results
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                                            <div class="panel-body">
                                                Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch.
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            --->

        <!-- End Accodrion -->
    </div>
    </div>
    <!--// end row -->
    </div>
    </div>
    </div>
    <!-- End About -->

    <!-- Latest Products -->
    <div class="bg-color-sky-light">
        <div id="products">
            <div class="content-lg container">
                <div class="row margin-b-40">
                    <div class="col-sm-6">
                        <h2>Electrodomesticos</h2>
                        <p>Ofrecemos servicios de reparación a una amplia cantidad de productos del mercado ¡Conocelos!
                        </p>
                    </div>
                </div>
                <!--// end row -->

                <div class="row margin-b-40">
                    <!-- Latest Products -->
                    <div class="col-sm-4 sm-margin-b-50">
                        <div class="margin-b-20">
                            <img class="img-responsive" src="recursos/img/MY/lavadora.jpg" alt="Latest Products Image">
                        </div>
                        <h4><a href="#">Lavadoras</a> <span class="text-uppercase margin-l-20">Registrate</span></h4>
                        <p>Reparamos lavadoras de todas las marcas a un precio muy economico</p>
                        <a class="link" href="#">Detalles</a>
                    </div>
                    <!-- End Latest Products -->

                    <!-- Latest Products -->
                    <div class="col-sm-4 sm-margin-b-50">
                        <div class="margin-b-20">
                            <img class="img-responsive" src="recursos/img/MY/estufa.jpg" alt="Latest Products Image">
                        </div>
                        <h4><a href="#">Estufas</a> <span class="text-uppercase margin-l-20">Registrate</span></h4>
                        <p>Reparamos estufas de todas las marcas a un precio muy economico</p>
                        <a class="link" href="#">Detalles</a>
                    </div>
                    <!-- End Latest Products -->

                    <!-- Latest Products -->
                    <div class="col-sm-4 sm-margin-b-50">
                        <div class="margin-b-20">
                            <img class="img-responsive" src="recursos/img/MY/microondas.jpg">
                            <h4><a href="#">Microondas</a> <span class="text-uppercase margin-l-20">Registrate</span>
                            </h4>
                            <p>Reparamos microondas de la mayoria de marcas a un precio muy economico</p>
                            <a class="link" href="#">Detalles</a>
                        </div>
                        <!-- End Latest Products -->
                    </div>
                    <!--// end row -->
                </div>
                <div class="row ">
                    <!-- Latest Products -->
                    <div class="col-sm-4 sm-margin-b-50">
                        <div class="margin-b-20">
                            <img class="img-responsive" src="recursos/img/MY/nevera.jpg" alt="Latest Products Image">
                        </div>
                        <h4><a href="#">Neveras</a> <span class="text-uppercase margin-l-20">Registrate</span></h4>
                        <p>Reparamos neveras de todas las marcas a un precio muy economico</p>
                        <a class="link" href="#">Detalles</a>
                    </div>
                    <!-- End Latest Products -->

                    <!-- Latest Products -->
                    <div class="col-sm-4 sm-margin-b-50">
                        <div class="margin-b-20">
                            <img class="img-responsive" src="recursos/img/MY/plancha.jpg" alt="Latest Products Image">
                        </div>
                        <h4><a href="#">Planchas</a> <span class="text-uppercase margin-l-20">Registrate</span></h4>
                        <p>Reparamos planchas de todas las marcas a un precio muy economico</p>
                        <a class="link" href="#">Detalles</a>
                    </div>
                    <!-- End Latest Products -->

                    <!-- Latest Products -->
                    <div class="col-sm-4 sm-margin-b-50">
                        <div class="margin-b-20">
                            <img class="img-responsive" src="recursos/img/MY/lavavajilla.jpg">
                            <h4><a href="#">LavaVajillas</a> <span class="text-uppercase margin-l-20">Registrate</span>
                            </h4>
                            <p>Reparamos lavaVajillas de la mayoria de marcas a un precio muy economico</p>
                            <a class="link" href="#">Detalles</a>
                        </div>
                        <!-- End Latest Products -->
                    </div>
                    <!--// end row -->
                </div>
            </div>
        </div>
    </div>
    <!-- End Latest Products -->



    <!-- Work -->
    <div id="work">
        <div class="section-seperator">
            <div class="content-md container">
                <div class="row margin-b-40">
                    <div class="col-sm-6">
                        <h2>Portafolio</h2>
                        <p>Ejemplificaciones de nuestros Servicios</p>
                    </div>
                </div>
                <!--// end row -->

                <!-- Masonry Grid -->
                <div class="masonry-grid row">


                    <!----
                        <div class="masonry-grid-item col-xs-12 col-sm-6 col-md-4 md-margin-b-30">
                            <!-- Work -->
                    <!----
                            <div class="work work-popup-trigger">
                                <div class="work-overlay">
                                    <img class="full-width img-responsive" src="img/397x300/01.jpg" alt="Portfolio Image">
                                </div>
                                <div class="work-popup-overlay">
                                    <div class="work-popup-content">
                                        <a href="javascript:void(0);" class="work-popup-close">Hide</a>
                                        <div class="margin-b-30">
                                            <h3 class="margin-b-5">Art Of Coding</h3>
                                            <span>Clean &amp; Minimalistic Design</span>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-8 work-popup-content-divider sm-margin-b-20">
                                                <div class="margin-t-10 sm-margin-t-0">
                                                    <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.</p>
                                                    <ul class="list-inline work-popup-tag">
                                                        <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">Strategy,</a></li>
                                                        <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">Implementation,</a></li>
                                                        <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">Credentials</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="margin-t-10 sm-margin-t-0">
                                                    <p class="margin-b-5"><strong>Project Manager:</strong> Boris Becker</p>
                                                    <p class="margin-b-5"><strong>Executive:</strong> Heike Macatsch</p>
                                                    <p class="margin-b-5"><strong>Architect:</strong> Oliver Pocher</p>
                                                    <p class="margin-b-5"><strong>Client:</strong> FairTech</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- End Work -->
                    <!----
                        </div>
                        <div class="masonry-grid-item col-xs-12 col-sm-6 col-md-4 md-margin-b-30">
                            <!-- Work -->
                    <!----
                            <div class="work work-popup-trigger">
                                <div class="work-overlay">
                                    <img class="full-width img-responsive" src="img/397x300/02.jpg" alt="Portfolio Image">
                                </div>
                                <div class="work-popup-overlay">
                                    <div class="work-popup-content">
                                        <a href="javascript:void(0);" class="work-popup-close">Hide</a>
                                        <div class="margin-b-30">
                                            <h3 class="margin-b-5">Art Of Coding</h3>
                                            <span>Clean &amp; Minimalistic Design</span>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-8 work-popup-content-divider sm-margin-b-20">
                                                <div class="margin-t-10 sm-margin-t-0">
                                                    <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.</p>
                                                    <ul class="list-inline work-popup-tag">
                                                        <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">Strategy,</a></li>
                                                        <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">Implementation,</a></li>
                                                        <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">Credentials</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="margin-t-10 sm-margin-t-0">
                                                    <p class="margin-b-5"><strong>Project Manager:</strong> Boris Becker</p>
                                                    <p class="margin-b-5"><strong>Executive:</strong> Heike Macatsch</p>
                                                    <p class="margin-b-5"><strong>Architect:</strong> Oliver Pocher</p>
                                                    <p class="margin-b-5"><strong>Client:</strong> Keenthemes</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- End Work -->
                    <!----
                        </div>
                        <div class="masonry-grid-item col-xs-12 col-sm-6 col-md-4">
                            <!-- Work -->
                    <!----
                            <div class="work work-popup-trigger">
                                <div class="work-overlay">
                                    <img class="full-width img-responsive" src="img/397x300/03.jpg" alt="Portfolio Image">
                                </div>
                                <div class="work-popup-overlay">
                                    <div class="work-popup-content">
                                        <a href="javascript:void(0);" class="work-popup-close">Hide</a>
                                        <div class="margin-b-30">
                                            <h3 class="margin-b-5">Art Of Coding</h3>
                                            <span>Clean &amp; Minimalistic Design</span>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-8 work-popup-content-divider sm-margin-b-20">
                                                <div class="margin-t-10 sm-margin-t-0">
                                                    <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.</p>
                                                    <ul class="list-inline work-popup-tag">
                                                        <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">Strategy,</a></li>
                                                        <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">Implementation,</a></li>
                                                        <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">Credentials</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="margin-t-10 sm-margin-t-0">
                                                    <p class="margin-b-5"><strong>Project Manager:</strong> Boris Becker</p>
                                                    <p class="margin-b-5"><strong>Executive:</strong> Heike Macatsch</p>
                                                    <p class="margin-b-5"><strong>Architect:</strong> Oliver Pocher</p>
                                                    <p class="margin-b-5"><strong>Client:</strong> Keenthemes</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- End Work -->
                    <!----
                        </div>
						<div class="masonry-grid-sizer col-xs-6 col-sm-6 col-md-1"></div>
						<div class="masonry-grid-item col-xs-12 col-sm-6 col-md-4 margin-b-30">
                            <!-- Work -->
                    <!----
                            <div class="work work-popup-trigger">
                                <div class="work-overlay">
                                    <img class="full-width img-responsive" src="img/397x415/01.jpg" alt="Portfolio Image">
                                </div>
                                <div class="work-popup-overlay">
                                    <div class="work-popup-content">
                                        <a href="javascript:void(0);" class="work-popup-close">Hide</a>
                                        <div class="margin-b-30">
                                            <h3 class="margin-b-5">Art Of Coding</h3>
                                            <span>Clean &amp; Minimalistic Design</span>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-8 work-popup-content-divider sm-margin-b-20">
                                                <div class="margin-t-10 sm-margin-t-0">
                                                    <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.</p>
                                                    <ul class="list-inline work-popup-tag">
                                                        <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">Strategy,</a></li>
                                                        <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">Implementation,</a></li>
                                                        <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">Credentials</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="margin-t-10 sm-margin-t-0">
                                                    <p class="margin-b-5"><strong>Project Manager:</strong> Boris Becker</p>
                                                    <p class="margin-b-5"><strong>Executive:</strong> Heike Macatsch</p>
                                                    <p class="margin-b-5"><strong>Architect:</strong> Oliver Pocher</p>
                                                    <p class="margin-b-5"><strong>Client:</strong> FairTech</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- End Work -->
                    <!----
                        </div>
                        <div class="masonry-grid-item col-xs-12 col-sm-6 col-md-8 margin-b-30">
                            <!-- Work -->
                    <!----
                            <div class="work work-popup-trigger">
                                <div class="work-overlay">
                                    <img class="full-width img-responsive" src="img/800x400/01.jpg" alt="Portfolio Image">
                                </div>
                                <div class="work-popup-overlay">
                                    <div class="work-popup-content">
                                        <a href="javascript:void(0);" class="work-popup-close">Hide</a>
                                        <div class="margin-b-30">
                                            <h3 class="margin-b-5">Art Of Coding</h3>
                                            <span>Clean &amp; Minimalistic Design</span>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-8 work-popup-content-divider sm-margin-b-20">
                                                <div class="margin-t-10 sm-margin-t-0">
                                                    <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.</p>
                                                    <ul class="list-inline work-popup-tag">
                                                        <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">Strategy,</a></li>
                                                        <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">Implementation,</a></li>
                                                        <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">Credentials</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="margin-t-10 sm-margin-t-0">
                                                    <p class="margin-b-5"><strong>Project Manager:</strong> Boris Becker</p>
                                                    <p class="margin-b-5"><strong>Executive:</strong> Heike Macatsch</p>
                                                    <p class="margin-b-5"><strong>Architect:</strong> Oliver Pocher</p>
                                                    <p class="margin-b-5"><strong>Client:</strong> FairTech</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        -->
                    <!-- End Work -->
                </div>
            </div>
            <!-- End Masonry Grid -->
        </div>
    </div>

    <!-- Clients -->
    <div class="content-lg container">
        <!-- Swiper Clients -->
        <div class="swiper-slider swiper-clients">
            <!-- Swiper Wrapper -->
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <img class="swiper-clients-img" src="recursos/img/LOGO_MARCAS/haceb.png" alt="Clients Logo">
                </div>
                <div class="swiper-slide">
                    <img class="swiper-clients-img" src="recursos/img/LOGO_MARCAS/LG.jpg" alt="Clients Logo">
                </div>
                <div class="swiper-slide">
                    <img class="swiper-clients-img" src="recursos/img/LOGO_MARCAS/whipol.png" alt="Clients Logo">
                </div>
                <div class="swiper-slide">
                    <img class="swiper-clients-img" src="recursos/img/LOGO_MARCAS/samsung.png" alt="Clients Logo">
                </div>
                <div class="swiper-slide">
                    <img class="swiper-clients-img" src="recursos/img/LOGO_MARCAS/kalley.png" alt="Clients Logo">
                </div>

            </div>
            <!-- End Swiper Wrapper -->
        </div>
        <!-- End Swiper Clients -->
    </div>
    <!-- End Clients -->
    </div>
    <!-- End Work -->

    <!-- Services -->
    <div id="services">
        <div class="bg-color-sky-light" data-auto-height="true">
            <div class="content-lg container">
                <div class="row margin-b-40">
                    <div class="col-sm-6">
                        <h2>Servicios </h2>
                        <p>Aqui encontraras Toda la informacion que necesitas </p>
                    </div>
                </div>
                <!--// end row -->

                <div class="row row-space-1 margin-b-2">
                    <div class="col-sm-4 sm-margin-b-2">
                        <div class="service" data-height="height">
                            <div class="service-element">
                                <i class="service-icon ion-md-appstore"></i> </div>
                            <div class="service-info">
                                <h3>Informacion de la compañia </h3>
                                <p class="margin-b-5">Cambio de repuestos </p>
                            </div>
                            <a href="#" class="content-wrapper-link"></a>
                        </div>
                    </div>
                    <div class="col-sm-4 sm-margin-b-2">
                        <div class="service bg-color-base" data-height="height">
                            <div class="service-element">
                                <i class="service-icon ion-md-alarm"></i>
                            </div>
                            <div class="service-info">
                                <h3 class="color-white">Manejo de tiempo de nuestros servicios </h3>
                                <p class="color-white margin-b-5">Rapidez de nuestros servicios </p>
                            </div>
                            <a href="#" class="content-wrapper-link"></a>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="service" data-height="height">
                            <div class="service-element">
                                <i class="service-icon ion-md-people"></i>
                            </div>
                            <div class="service-info">
                                <h3>Clientes</h3>
                                <p class="margin-b-5">Clientes Satisfactorios </p>
                            </div>
                            <a href="#" class="content-wrapper-link"></a>
                        </div>
                    </div>
                </div>
                <!--// end row -->

                <div class="row row-space-1">
                    <div class="col-sm-4 sm-margin-b-2">
                        <div class="service" data-height="height">
                            <div class="service-element">
                                <i class="service-icon icon-notebook"></i>
                            </div>
                            <div class="service-info">
                                <h3>Tecnicos </h3>
                                <p class="margin-b-5">Servicios tecnicos</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4 sm-margin-b-2">
                        <div class="service" data-height="height">
                            <div class="service-element">
                                <i class="service-icon ion-md-cart"></i>
                            </div>
                            <div class="service-info">
                                <h3>Tarjetas Creditos</h3>
                                <p class="margin-b-5">Puedes utilizar cualquier medio de pago </p>
                            </div>
                            <a href="#" class="content-wrapper-link"></a>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="service" data-height="height">
                            <div class="service-element">
                                <i class="service-icon ion-md-contacts"></i> </div>
                            <div class="service-info">
                                <h3>Secretaria</h3>
                                <p class="margin-b-5">Comunicate con la secretaria para agendar su citar</p>
                            </div>
                            <a href="#" class="content-wrapper-link"></a>
                        </div>
                    </div>
                </div>
                <!--// end row -->
            </div>
        </div>
    </div>
    <!-- End Service -->

    <!-- Contact -->
    <div id="contact">
        <!-- Contact List -->
        <div class="section-seperator">
            <div class="content-lg container">
                <div class="row">
                    <!-- Contact List -->
                    <div class="col-sm-4 sm-margin-b-50">
                        <h3><a href="http://ft-seo.ch/">Laura Paez</a> <span
                                class="text-uppercase margin-l-20">Secretaria</span></h3>
                        <p>Hola, Soy la secretaria de esta empresa con mas de 5 años de experiencia para cualquier duda
                            comunicate a mi telefono </p>
                        <ul class="list-unstyled contact-list">
                            <li><i class="margin-r-10 color-base icon-call-out"></i> +57 312 478 963</li>
                            <li><i class="margin-r-10 color-base icon-envelope"></i> laurap@gmail.com</li>
                        </ul>
                    </div>
                    <!-- End Contact List -->

                    <!-- Contact List -->
                    <div class="col-sm-4 sm-margin-b-50">
                        <h3><a href="http://ft-seo.ch/">Oscar Rodriguez</a> <span
                                class="text-uppercase margin-l-20">Tecnico reparador</span></h3>
                        <p>Hola, Soy un tecnico de electrodomesticos de la empresa si tienes alguna duda sobre los
                            repuestos en una reparacion contactame!</p>
                        <ul class="list-unstyled contact-list">
                            <li><i class="margin-r-10 color-base icon-call-out"></i> +57 301 703 658</li>
                            <li><i class="margin-r-10 color-base icon-envelope"></i> oscar123@yahoo.com</li>
                        </ul>
                    </div>
                    <!-- End Contact List -->

                    <!-- Contact List -->
                    <div class="col-sm-4 sm-margin-b-50">
                        <h3><a href="http://ft-seo.ch/">Luis Bustamante</a> <span
                                class="text-uppercase margin-l-20">GERENTE</span></h3>
                        <p>Hola, Soy el gerente y dueño de esta empresa con mas de 20 años de experiencia, si tienes
                            dudas contactanos!</p>
                        <ul class="list-unstyled contact-list">
                            <li><i class="margin-r-10 color-base icon-call-out"></i> +57 321 859 254</li>
                            <li><i class="margin-r-10 color-base icon-envelope"></i> lusibus@gmail.com</li>
                        </ul>
                    </div>
                    <!-- End Contact List -->
                </div>
                <!--// end row -->
            </div>
        </div>
        <!-- End Contact List -->

        <!-- Google Map -->
        <div class="map height-300">
            <iframe
                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3976.1322734977653!2d-74.09930593517933!3d4.747055442575526!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8e3f859b839aceaf%3A0x8fdc42f38d89a1c1!2sLa%20Bodega%20de%20los%20repuestos!5e0!3m2!1ses-419!2sco!4v1596080929464!5m2!1ses-419!2sco"
                width="100%" height="100%" frameborder="0" style="border:0;" allowfullscreen></iframe>

        </div>
    </div>
    <!-- End Contact -->
    <!--========== END PAGE LAYOUT ==========-->

    <!--========== FOOTER ==========-->
    <footer class="footer">

        <!-- Copyright -->
        <div class="content container">
            <div class="row">
                <div class="col-xs-6">
                    <img class="footer-logo" src="recursos/img/logo.png" alt="flameonepage Logo">
                </div>

                <div class="col-xs-6 text-right">
                    <p class="margin-b-0"><a class="fweight-700" href="#">LA BODEGA</a> Desarrolado por: <a
                            class="fweight-700" href="http://ft-seo.ch/">ADSI</a></p>
                </div>
            </div>
            <!--// end row -->
        </div>
        <!-- End Copyright -->

        <div class="modal fade" id="miModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
            aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered ancho">
                <div class="modal-content moda-efe">
                    <div class="modal-header">

                        <button type="button" class="close " data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true" class="equis">&times;</span>
                        </button>
                        <img class="logona" src="recursos/img/logo.png" alt="logo">



                    </div>
                    <div class="modal-body">
                        <h4 class="modal-title">Inicio Sesión</h4>
                        <form method="post" action="Usuario" class="login">

                            <div class="login__grupo" id="grupoLogin__correos">
                                <label for="correos" class="login__label">Correo:</label>
                                <div class="login__grupo-input" id="email">
                                    <i class="login__validacion-estado fas fa-user pass"></i>
                                    <input type="text" class="login__input" name="correos" id="correos"
                                        placeholder="Ejem:zuckerberg@gmail.com ">

                                </div>
                                <p class="login__input-error">Debe
                                    ser de formato de correo</p>
                            </div>

                            <div class="login__grupo" id="grupoLogin__contrasenas">
                                <label for="contrasenas" class="login__label">Contraseña:</label>

                                <div class="login__grupo-input" id="password">
                                    <i class="login__validacion-estado fas fa-lock pass"></i>
                                    <i class="fas fa-eye eyes1" id="hi" onclick="hola()"></i>

                                    <input type="password" class="login__input" name="contrasena" id="contrasenas">

                                </div>
                                <p class="login__input-error">La contraseña debe ser minimo de 8 a 30 digitos y debe
                                    contener numeros y letras</p>
                            </div>
                            
                            <br> 
                            
                            <center>
                                <div style="color:Red">
                                    <%if (request.getAttribute("mensajeFallido") != null) {%>
                                    ${mensajeFallido}
                                    <% } %>
                                </div>
                            </center>    

                            <div class="login__mensaje" id="login__mensaje">
                                <p>
                                    <i class="fas fa-exclamation-triangle"></i> <b>Error: </b>Porfavor Diligencie los
                                    Campos
                                    del Formulario Correctamente </p>

                            </div>
                            <div class="links">
                                <a href="#"  class="linka">Olvide
                                    mi
                                    Contraseña</a>
                                <a data-toggle="modal" data-target=".bd-example-modal-lg" class="linka"
                                    data-dismiss="modal" aria-label="Close">Aun no
                                    tienes cuenta?</a>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <div class="login__grupo login__grupo-btn-enviar">
                                <button type="submit" class="login__btn">Ingresar</button>
                                <input type="hidden" value="8" name="opcion">
                            </div>



                   </form>



                    </div>
                </div>
            </div>
        </div>

    </footer>
    <!--========== END FOOTER ==========-->

    <!-- Back To Top -->
    <a href="javascript:void(0);" class="js-back-to-top back-to-top">Top</a>

    <!-- JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
    <!-- CORE PLUGINS -->
    <script src="recursos/vendor/jquery.min.js" type="text/javascript"></script>
    <script src="recursos/vendor/jquery-migrate.min.js" type="text/javascript"></script>
    <script src="recursos/vendor/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

    <!-- PAGE LEVEL PLUGINS -->
    <script src="recursos/vendor/jquery.easing.js" type="text/javascript"></script>
    <script src="recursos/vendor/jquery.back-to-top.js" type="text/javascript"></script>
    <script src="recursos/vendor/jquery.smooth-scroll.js" type="text/javascript"></script>
    <script src="recursos/vendor/jquery.wow.min.js" type="text/javascript"></script>
    <script src="recursos/vendor/swiper/js/swiper.jquery.min.js" type="text/javascript"></script>
    <script src="recursos/vendor/masonry/jquery.masonry.pkgd.min.js" type="text/javascript"></script>
    <script src="recursos/vendor/masonry/imagesloaded.pkgd.min.js" type="text/javascript"></script>

    <!-- PAGE LEVEL SCRIPTS -->
    <script src="recursos/js/layout.min.js" type="text/javascript"></script>
    <script src="recursos/js/components/wow.min.js" type="text/javascript"></script>
    <script src="recursos/js/components/swiper.min.js" type="text/javascript"></script>
    <script src="recursos/js/components/masonry.min.js" type="text/javascript"></script>

    <script src="recursos/js/formulario.js" language="javascript" type="text/javascript"></script>
    <script src="recursos/js/login.js" language="javascript" type="text/javascript"></script>
    <script src="https://kit.fontawesome.com/2c36e9b7b1.js" crossorigin="anonymous"></script>

</body>
<!-- END BODY -->

</html>
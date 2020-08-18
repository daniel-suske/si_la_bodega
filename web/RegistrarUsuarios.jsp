<%-- 
    Document   : RegistrarUsuarios
    Created on : 17-ago-2020, 19:36:08
    Author     : Yeison
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar Usuario</title>
    </head>
    <body>
    <center>
        <h1>Registrar Usuario</h1>
        
        <form method="post" action="Usuario">
            
            <table>
                <tr>
                    <th>
                        <label>Nombres:</label><br>
                        <input type="text" name="textName"><br><br>
                        <label>Apellidos:</label><br>
                        <input type="text" name="textApell"><br><br>
                        <label>Numero_Documento:</label><br>
                        <input type="text" name="textNumD"><br><br>
                        <label>Tipo_Documento:</label><br>
                        <input type="text" name="textTipD"><br><br>
                        <label>Correo:</label><br>
                        <input type="text" name="textCorr"><br><br>
                        <label>Contrasena:</label><br>
                        <input type="text" name="textCont"><br><br>
                        <label>Telefono:</label><br>
                        <input type="text" name="textTele"><br><br>
                        <label>Barrio:</label><br>
                        <input type="text" name="textBarr"><br><br>
                        <label>Direccion:</label><br>
                        <input type="text" name="textDire"><br><br>
                        <label>Id_Registrado_Por:</label><br>
                        <input type="text" name="textId_R"><br><br>
                        <label>Pefil:</label><br>
                        <input type="text" name="textPerfil"><br><br>
                        <label>Estado:</label><br>
                        <input type="text" name="textEstado"><br><br>
                    </th>
                </tr>
            </table>
            <button>Registrar</button>
            <input type="hidden" value="1" name="opcion">
        </form>
        <br>
        <div style="color:Red">
            <%if (request.getAttribute("mensajeFallido") != null) {%>
            ${mensajeFallido}
            <% } else { %>
            ${mensajeExitoso}
            <% } %>
        </div>
    </center>

    </body>
</html>


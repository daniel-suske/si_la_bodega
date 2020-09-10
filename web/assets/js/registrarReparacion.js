const formularios = document.getElementById('formulario');
const inputs = document.querySelectorAll('#formulario input');

const expresiones = {
    usuario: /^[a-zA-Z0-9\_\-]{4,16}$/, // Letras, numeros, guion y guion_bajo
    nombre: /^[a-zA-Z0-9\s\_\-]{7,50}$/, // Letras, numeros, espacios, guiones.
    no_serie: /^[a-zA-Z0-9\_\-]{10,50}$/, // Letras, numeros, guion y guion_bajo
    marca: /^[a-zA-Z\s\_\-]{2,30}$/, //letras 
    modelo: /^[a-zA-Z0-9\_\-]{3,50}$/, // Letras, numeros, guion y guion_bajo

    lugar_compra: /^[\s\S]{10,100}$/, // Letras, numeros, guion y guion_bajo
    valor_compra: /^\d{2,18}$/, // 2 a 18 numeros.
    valor_venta: /^\d{2,18}$/, // 2 a 18 numeros.
    cantidad: /^\d{1,8}$/ // 1 a 8 numero.
    


};
const campos = {

    nombre: true,
    no_serie: true,
    marca: true,
    modelo: true,
    fecha_compra: true,
    lugar_compra: true,
    valor_compra: true,
    valor_venta: true,
    cantidad: true
};

const validarFormulario = (e) => {
    switch (e.target.name) {
        case "nombre":
            validarCampo(expresiones.nombre, e.target, 'nombre');
            break;
        case "no_serie":
            validarCampo(expresiones.no_serie, e.target, 'no_serie');
            break;
        case "marca":
            validarCampo(expresiones.marca, e.target, 'marca');
            break;
        case "modelo":
            validarCampo(expresiones.modelo, e.target, 'modelo');
            break;
        case "fecha_compra":
            validarCampo(expresiones.fecha_compra, e.target, 'fecha_compra');
            break;
        case "lugar_compra":
            validarCampo(expresiones.lugar_compra, e.target, 'lugar_compra');
            break;
        case "valor_compra":
            validarCampo(expresiones.valor_compra, e.target, 'valor_compra');

            break;
        case "valor_venta":
            validarCampo(expresiones.valor_venta, e.target, 'valor_venta');
            break;
        case "cantidad":
            validarCampo(expresiones.cantidad, e.target, 'cantidad');
            break;
    }




   

    dates = document.getElementById('dates').value;
    if (dates == "") {


        document.querySelector("#grupo__fecha_compra i").classList.add('fa-times-circle');
        document.querySelector("#grupo__fecha_compra i").classList.remove('fa-check-circle');
        document.getElementById("grupo__fecha_compra").classList.remove("formulario__grupo-correcto");
        document.getElementById("grupo__fecha_compra").classList.add("formulario__grupo-incorrecto");
        document.querySelector("#grupo__fecha_compra .formulario__input-error").classList.add("formulario__input-error-activo");
        campos['fecha_compra'] = false;


    } else {
        document.getElementById("grupo__fecha_compra").classList.remove("formulario__grupo-incorrecto");
        document.getElementById("grupo__fecha_compra").classList.add("formulario__grupo-correcto");
        document.querySelector("#grupo__fecha_compra i").classList.remove('fa-times-circle');
        document.querySelector("#grupo__fecha_compra i").classList.add('fa-check-circle');
        document.querySelector("#grupo__fecha_compra .formulario__input-error").classList.remove("formulario__input-error-activo");
        document.getElementById("fecha").value=dates;
        campos['fecha_compra'] = true;
    }

};



const validarCampo = (expresion, input, campo) => {

    if (expresion.test(input.value)) {

        document.getElementById(`grupo__${campo}`).classList.remove("formulario__grupo-incorrecto");
        document.getElementById(`grupo__${campo}`).classList.add("formulario__grupo-correcto");
        document.querySelector(`#grupo__${campo} i`).classList.remove('fa-times-circle');
        document.querySelector(`#grupo__${campo} i`).classList.add('fa-check-circle');
        document.querySelector(`#grupo__${campo} .formulario__input-error`).classList.remove("formulario__input-error-activo");
        campos[campo] = true;
    } else {
        document.querySelector(`#grupo__${campo} i`).classList.add('fa-times-circle');
        document.querySelector(`#grupo__${campo} i`).classList.remove('fa-check-circle');
        document.getElementById(`grupo__${campo}`).classList.remove("formulario__grupo-correcto");
        document.getElementById(`grupo__${campo}`).classList.add("formulario__grupo-incorrecto");
        document.querySelector(`#grupo__${campo} .formulario__input-error`).classList.add("formulario__input-error-activo");
        campos[campo] = false;

    }

}



inputs.forEach((input, selectElement) => {
    input.addEventListener("keyup", validarFormulario);
    input.addEventListener("blur", validarFormulario);

});

formulario.addEventListener("submit", (e) => {
    e.preventDefault();
   
    if (campos.nombre && campos.no_serie && campos.marca && campos.modelo && campos.fecha_compra && campos.lugar_compra && campos.valor_compra && campos.valor_venta && campos.cantidad) {


        /* formulario.reset(); */

        var formularion = document.getElementById("formulario");
       formularion.submit();
        var opcion = document.getElementById("opcion").value;
        var id_servicio = document.getElementById("id_servicio").value;
        var id_producto = document.getElementById("id_producto").value;
         var fecha = document.getElementById("fecha").value;
          var descripcion = document.getElementById("descripcion").value;
           var costos = document.getElementById("costos").value;
            var tecnico = document.getElementById("tecnico").value;
            
          /*  var ruta= "id_servicio=" + id_servicio + "id_producto=" + id_producto + "fecha=" + fecha + "descripcion=" + descripcion + "costos" + costos + + "opcion=" + opcion + "tecnico=" + tecnico + "array=" + arrCategories;
            $.post('Reparacion',{ ruta });*/

        document.getElementById('formulario__mensaje-exito').classList.add('formulario__mensaje-exito-activo');
        setTimeout(() => {
            document.getElementById('formulario__mensaje-exito').classList.remove('formulario__mensaje-exito-activo');

        }, 7000);



        document.querySelectorAll('.formulario__grupo-correcto').forEach((icono) => {
            icono.classList.remove('formulario__grupo-correcto');

            document.getElementById('formulario__mensaje').classList.remove('formulario__mensaje-activo');
        });
    } else {
        document.getElementById('formulario__mensaje').classList.add('formulario__mensaje-activo');
        setTimeout(() => {
            document.getElementById('formulario__mensaje').classList.remove('formulario__mensaje-activo');
        }, 20000);
    }
});

var arrCategories = []

$("#addElement").click(function (e) {
    //deshabilitar submit del form
    e.preventDefault()

    let idCategory = $("#repuesto").val()
    let nameCategory = $("#repuesto option:selected").text()

    if (idCategory != '') {
        if (typeof existCategory(idCategory) === 'undefined') {
            //Llenar el array
            arrCategories.push({
                'id': idCategory,
                'name': nameCategory
            })
        } else {
            alert("La Categoria ya se ha Seleccionado")
        }
        //mostrar información en el html
        showCategories()
    } else {
        alert("Debe Seleccionar una Categoria")
    }

});

function existCategory(idCategory) {
    let existCategory = arrCategories.find(function (category) {
        return category.id == idCategory
    })
    return existCategory
}

function showCategories() {
    $("#list-categories").empty()

    arrCategories.forEach(function (category) {
        $("#list-categories").append('<div class="form-group"><button onclick="removeElement(' + category.id + ')" class="btn btn-danger">X</button> <span>' + category.name + '</span> <input type="hidden" name=" id_repuesto" value=' + arrCategories + '></div>')
    })
}

function removeElement(idCategory) {
    let index = arrCategories.indexOf(existCategory(idCategory))
    arrCategories.splice(index, 1)
    showCategories()
}




const form = document.getElementById('form');
const inputs = document.querySelectorAll('#form input');
const selects = document.querySelectorAll('#form select');
const expresiones = {

    pago: /[EF]|[ef]|[td]|[TD]/,
    total: /\d/,
    garantia: /([No]|[Si]|[NO]|[SI])/

};

const campos = {
    factura: false,
    servicio: false,
    pago: false,
    total: false,
    garantia: false,
    recibe: false

};
const validarform = (e) => {
    switch (e.target.name) {

        case "factura":
            validarCampo(expresiones.factura, e.target, 'factura');
            break;
        case "servicio":
            validarSelect(e.target, 'servicio');
            break;
        case "pago":
            validarSelect(e.target, 'pago');
            break;
        case "total":
            validarCampo(expresiones.total, e.target, 'total');
            break;
        case "garantia":
            validarSelect(e.target, 'garantia');
            break;
        case "recibe":
            validarSelect(e.target, 'recibe');
            break;
    }

    dates = document.getElementById('dates').value;
    if (dates == "") {



        document.getElementById("grupo__factura").classList.remove("form-group-correcto");
        document.getElementById("grupo__factura").classList.add("form-group-incorrecto");
        document.querySelector("#grupo__factura .formulario__input-error").classList.add("formulario__input-error-activo");
        campos['factura'] = false;


    } else {
        document.getElementById("grupo__factura").classList.remove("form-group-incorrecto");
        document.getElementById("grupo__factura").classList.add("form-group-correcto");
        document.querySelector("#grupo__factura .formulario__input-error").classList.remove("formulario__input-error-activo");
        document.getElementById("factura").value = dates;
        campos['factura'] = true;

    }

};
const validarSelect = (select, campo) => {


    if (select.value === "") {

        document.getElementById(`grupo__${campo}`).classList.add('form-group-incorrecto');
        document.getElementById(`grupo__${campo}`).classList.remove('form-group-correcto');
        document.querySelector(`#grupo__${campo} i`).classList.add('fa-exclamation-circle');
        document.querySelector(`#grupo__${campo} i`).classList.remove('fa-clipboard-check');
        document.querySelector(`#grupo__${campo} .formulario__input-error`).classList.add('formulario__input-error-activo');
        campos[campo] = false;


    } else {
        document.getElementById(`grupo__${campo}`).classList.remove('form-group-incorrecto');
        document.getElementById(`grupo__${campo}`).classList.add('form-group-correcto');
        document.querySelector(`#grupo__${campo} i`).classList.remove('fa-exclamation-circle');
        document.querySelector(`#grupo__${campo} i`).classList.add('fa-clipboard-check');
        document.querySelector(`#grupo__${campo} .formulario__input-error`).classList.remove('formulario__input-error-activo');
        campos[campo] = true;
    }

};


const validarCampo = (expresion, input, campo) => {
    if (expresion.test(input.value)) {
        document.getElementById(`grupo__${campo}`).classList.remove('form-group-incorrecto');
        document.getElementById(`grupo__${campo}`).classList.add('form-group-correcto');
        document.querySelector(`#grupo__${campo} i`).classList.remove('fa-exclamation-circle');
        document.querySelector(`#grupo__${campo} i`).classList.add('fa-clipboard-check');
        document.querySelector(`#grupo__${campo} .formulario__input-error`).classList.remove('formulario__input-error-activo');
        campos[campo] = true;
    } else {

        document.getElementById(`grupo__${campo}`).classList.add('form-group-incorrecto');
        document.getElementById(`grupo__${campo}`).classList.remove('form-group-correcto');
        document.querySelector(`#grupo__${campo} i`).classList.add('fa-exclamation-circle');
        document.querySelector(`#grupo__${campo} i`).classList.remove('fa-clipboard-check');
        document.querySelector(`#grupo__${campo} .formulario__input-error`).classList.add('formulario__input-error-activo');
        campos[campo] = false;
    }
};

inputs.forEach((input) => {
    input.addEventListener('keyup', validarform);
    input.addEventListener('blur', validarform);

});
selects.forEach((select) => {

    select.addEventListener("change", validarform);
    select.addEventListener("click", validarform);

});



form.addEventListener('submit', (e) => {
    e.preventDefault();


    if (campos.factura && campos.servicio && campos.pago && campos.total && campos.garantia && campos.recibe) {
        /* form.reset();*/
        var form = document.getElementById("form");
        form.submit();



        document.querySelectorAll('.form-group-correcto').forEach((icono) => {
            icono.classList.remove('form-group-correcto');
            document.getElementById('formulario__mensaje').classList.remove('formulario__mensaje-activo');

        });

    } else {
        document.getElementById('formulario__mensaje').classList.add('formulario__mensaje-activo');
        setTimeout(() => {
            document.getElementById('formulario__mensaje').classList.remove('formulario__mensaje-activo');
        }, 20000);
    }



});


const form = document.getElementById('form');
const inputs = document.querySelectorAll('#form input');
const selects = document.querySelectorAll('#form select');
const expresiones ={
    producto: /[A-Z]|[a-z]/,
    marca: /[A-Z]|[a-z]/,
    modelo: /[A-Z]|[a-z]/,
    serie: /\w+/
    
};

const campos ={
    producto: false,
    marca: false,
    modelo: false,
    serie: false,
    status: false
    
};
const validarform = (e) => {
    switch (e.target.name){
        case "producto":
            validarCampo(expresiones.producto, e.target,'producto');
            break;
        case "marca":
            validarCampo(expresiones.marca, e.target,'marca');
            break;
        case "modelo":
            validarCampo(expresiones.modelo, e.target,'modelo');
            break;
        case "serie":
            validarCampo(expresiones.serie, e.target,'serie');
        case "status":
            validarSelect(e.target,'status');
            break;
                    
    }
    
};
const validarCampo = (expresion, input, campo) =>{
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
const validarSelect =(select, campo) =>{
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
inputs.forEach((input) =>{
    input.addEventListener('keyup',validarform);
    input.addEventListener('blur',validarform);
});

selects.forEach((select) =>{
    
    select.addEventListener("change",validarform);
    select.addEventListener("click", validarform);
    
});

form.addEventListener('submit', (e)=>{
    e.preventDefault();
    
    if (campos.producto && campos.marca && campos.modelo && campos.serie && campos.status){
         var form = document.getElementById("form");
        form.submit();



        document.querySelectorAll('.form-group-correcto').forEach((icono) => {
            icono.classList.remove('form-group-correcto');
            document.getElementById('formulario__mensaje').classList.remove('formulario__mensaje-activo');
});

 }else{
        document.getElementById('formulario__mensaje').classList.add('formulario__mensaje-activo');
        setTimeout(() => {
            document.getElementById('formulario__mensaje').classList.remove('formulario__mensaje-activo');
        }, 20000);
    }



});

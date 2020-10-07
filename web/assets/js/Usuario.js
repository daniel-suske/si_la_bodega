
const formularioUE = document.getElementById('formularioUE');
const inputs = document.querySelectorAll('#formularioUE input');
const selects = document.querySelectorAll('#formularioUE select');

const expresiones = {
    
  nombres: /^[a-zA-ZÀ-ÿ\s]{3,50}$/, // Letras y espacios, pueden llevar acentos.
  apellidos: /^[a-zA-ZÀ-ÿ\s]{4,50}$/, // Letras y espacios, pueden llevar acentos.
  documento: /^\d{7,14}$/, // 7 a 14 numeros.
  telefono: /^\d{6,12}$/, // 6 a 14 numeros.
  direccion: /^.{10,100}$/,
  correos: /[\w.+-]+@\w+\.+([a-z]{2,3})$/,
  barrio: /^.{7,75}$/

};

const campos = {
    
  nombres: false,
  apellidos: false,
  documento: false,
  tipo: false,
  correos: false,
  telefono: false,
  barrio: false,
  direccion: false,
  textId_R: true,
  textPerfil: false,
  textEstado: false
    
};

const validarFormularioUE = (e) => {
    
    switch (e.target.name) {
     
        case "nombres" :
            validarCampo(expresiones.nombres, e.target, 'nombres');
        break;
        case "apellidos" :
            validarCampo(expresiones.apellidos, e.target, 'apellidos');
        break;
        case "documento" :
            validarCampo(expresiones.documento, e.target, 'documento');
        break;
        case "tipo" :
            validarSelect(e.target, 'tipo');
        break;
        case "correos" :
            validarCampo(expresiones.correos, e.target, 'correos');
        break;
        case "telefono" :
            validarCampo(expresiones.telefono, e.target, 'telefono');
        break;
        case "barrio" :
            validarCampo(expresiones.barrio, e.target, 'barrio');
        break;
        case "direccion" :
            validarCampo(expresiones.direccion, e.target, 'direccion');
        break;
        case "textPerfil" :
            validarSelect(e.target, 'textPerfil');
        break;
        case "textEstado" :
            validarSelect(e.target, 'textEstado');
        break;
        
    }
};

const validarCampo = (expresion, input, campo) => {
    
    if (expresion.test(input.value)) {

    document.getElementById(`grupo__${campo}`).classList.remove("formulario__grupo-incorrecto");
    document.getElementById(`grupo__${campo}`).classList.add("formulario__grupo-correcto");
    document.querySelector(`#grupo__${campo} i`).classList.remove('fa-exclamation-triangle');
    document.querySelector(`#grupo__${campo} i`).classList.add('fa-clipboard-check');
    document.querySelector(`#grupo__${campo} .formulario__input-error`).classList.remove("formulario__input-error-activo");
    campos[campo] = true;
    
  } else {
      
    document.querySelector(`#grupo__${campo} i`).classList.add('fa-exclamation-triangle');
    document.querySelector(`#grupo__${campo} i`).classList.remove('fa-clipboard-check');
    document.getElementById(`grupo__${campo}`).classList.remove("formulario__grupo-correcto");
    document.getElementById(`grupo__${campo}`).classList.add("formulario__grupo-incorrecto");
    document.querySelector(`#grupo__${campo} .formulario__input-error`).classList.add("formulario__input-error-activo");
    campos[campo] = false;
    
    } 
};

const validarSelect = (select, campo) => {
  
    if (select.value === "") {
     
    document.querySelector(`#grupo__${campo} i`).classList.add('fa-exclamation-triangle');
    document.querySelector(`#grupo__${campo} i`).classList.remove('fa-clipboard-check');
    document.getElementById(`grupo__${campo}`).classList.remove("formulario__grupo-correcto");
    document.getElementById(`grupo__${campo}`).classList.add("formulario__grupo-incorrecto");
    document.querySelector(`#grupo__${campo} .formulario__input-error`).classList.add("formulario__input-error-activo");
    campos[campo] = false;
        
    } else {
        
    document.getElementById(`grupo__${campo}`).classList.remove("formulario__grupo-incorrecto");
    document.getElementById(`grupo__${campo}`).classList.add("formulario__grupo-correcto");
    document.querySelector(`#grupo__${campo} i`).classList.remove('fa-exclamation-triangle');
    document.querySelector(`#grupo__${campo} i`).classList.add('fa-clipboard-check');
    document.querySelector(`#grupo__${campo} .formulario__input-error`).classList.remove("formulario__input-error-activo");
    campos[campo] = true;
        
    }
};

/* Toma los inputs y selects y el enviar :)*/

inputs.forEach((input) => {
        
     input.addEventListener("keyup", validarFormularioUE);
     input.addEventListener("blur", validarFormularioUE);
      
});

selects.forEach((select) => {
   
   select.addEventListener("change", validarFormularioUE);
    
});

formularioUE.addEventListener('submit', (e) => {
   
    e.preventDefault();
    
    if (campos.nombres && campos.apellidos && campos.documento && campos.tipo && campos.correos && campos.telefono && campos.barrio && campos.direccion && campos.textId_R && campos.textPerfil && campos.textEstado) {
        
        formularioUE.submit();
        
    } else {
        
        document.getElementById('formulario__mensaje').classList.add('formulario__mensaje-activo');
        
        setTimeout(() => {
            
          document.getElementById('formulario__mensaje').classList.remove('formulario__mensaje-activo');
          
        }, 20000);
    }
});

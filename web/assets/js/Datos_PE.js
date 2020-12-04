$(document).ready(function (){

const formularioDUE = document.getElementById('formularioDUE');
const inputs = document.querySelectorAll('#formularioDUE input');
const selects = document.querySelectorAll('#formularioDUE select');

const expresiones = {
    
    Eps: /^.{3,100}$/,
    Arl: /^.{3,100}$/,
    Fondo_P: /^.{3,100}$/,
    Exp: /^\d{1,100}$/
    
};
const campos = {
    
    Id_Empleado:true,
    Fecha_N:false,
    Estado_C:false,
    Eps:false,
    Arl:false,
    Fondo_P:false,
    Nivel_E:false,
    Exp:false
    
};
const validarFormularioDUE = (e) => {
  
  switch (e.target.name) {
   
        case "Fecha_N":
            validarCampoF(e.target, 'Fecha_N');
        break;
        case "Estado_C" :
            validarSelect(e.target, 'Estado_C');
        break;
        case "Eps":
            validarCampo(expresiones.Eps, e.target, 'Eps');
        break;
        case "Arl":
            validarCampo(expresiones.Arl, e.target, 'Arl');
        break;
        case "Fondo_P":
            validarCampo(expresiones.Fondo_P, e.target, 'Fondo_P');
        break;
        case "Nivel_E" :
            validarSelect(e.target, 'Nivel_E');
        break;
        case "Exp":
            validarCampo(expresiones.Exp, e.target, 'Exp');
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
const validarCampoF = (input, campo) => {
    
    if (input.value === "") {

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
        
    input.addEventListener("keyup", validarFormularioDUE);
    input.addEventListener("blur", validarFormularioDUE);
     
});

selects.forEach((select) => {
   
   select.addEventListener("change", validarFormularioDUE);
    
});
//Cuando se envia todo
formularioDUE.addEventListener('submit', (e) => {
    
    e.preventDefault();
    
    if(campos.Id_Empleado && campos.Fecha_N && campos.Estado_C && campos.Eps && campos.Arl && campos.Fondo_P && campos.Nivel_E && campos.Exp) {
        
       formularioDUE.submit();
        
    } else {
        
        document.getElementById('formulario__mensaje').classList.add('formulario__mensaje-activo');
        
        setTimeout(() => {
            
          document.getElementById('formulario__mensaje').classList.remove('formulario__mensaje-activo');
          
        }, 20000);
        
    }
});
});
const formularioSE = document.getElementById('formularioSE');
const inputs = document.querySelectorAll('#formularioSE input');
const selects = document.querySelectorAll('#formularioSE select');
const textareas = document.querySelectorAll('#formularioSE textarea');

const expresiones = {
  
  Fecha_P: /^\d/,
  Descript: /^.{25,1000}$/
    
};
const campos = {
  
    Fecha_P:false,
    Descript:false,
    Cliente:false,
    R_Por:true,
    Est:false
    
};
const validarFormularioSE = (e) => {
  
    switch (e.target.name) {
    
        case "Fecha_P":
            validarCampo(expresiones.Fecha_P, e.target, 'Fecha_P');
        break;    
        case "Descript":
            validarTextArea(expresiones.Descript, e.target, 'Descript');
        break; 
        case "Cliente":
            validarSelect(e.target, 'Cliente');
        break;
        case "Est":
            validarSelect(e.target, 'Est');
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
const validarTextArea = (expresion,textarea, campo) => {
  
    if (expresion.test(textarea.value)) {

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

/* Toma los inputs y selects y texttareas y el enviar :)*/
inputs.forEach((input) => {
        
     input.addEventListener("keyup", validarFormularioSE);
      
});

selects.forEach((select) => {
   
   select.addEventListener("change", validarFormularioSE);
    
});

textareas.forEach((textarea) => {
    
    textarea.addEventListener("keyup", validarFormularioSE);

});

//Aqui se envia :V
formularioSE.addEventListener('submit', (e) => {
   
    e.preventDefault();
    
    if(campos.Fecha_P && campos.Descript && campos.Cliente && campos.R_Por && campos.Est) {
        
       formularioSE.submit();
        
    } else {
        
        document.getElementById('formulario__mensaje').classList.add('formulario__mensaje-activo');
        
        setTimeout(() => {
            
          document.getElementById('formulario__mensaje').classList.remove('formulario__mensaje-activo');
          
        }, 20000);
        
    }
    
});
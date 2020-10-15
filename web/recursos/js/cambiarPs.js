const formularioCP = document.getElementById('formularioCP');
const inputs = document.querySelectorAll('#formularioCP input');

const expresionesp = {

    documento: /^\d{7,11}$/,
    contrasena_p: /^.{8}/,
    contrasenas: /^(?=\w*\d)(?=\w*[A-Z])(?=\w*[a-z])\S{8,35}$/ // 8 a 35 digitos.

};
const campos = {
  
  documento: false,
  contrasena_p: false,
  contrasenas: false
    
};

const validarFormularioCP = (e) => {
  
  switch (e.target.name) {
    case "documento":
        validarCampo(expresionesp.documento, e.target, 'documento');
    break;    
    case "contrasena_p":
        validarCampo(expresionesp.contrasena_p, e.target, 'contrasena_p');
    break;
    case "contrasenas":
        validarCampo(expresionesp.contrasenas, e.target, 'contrasenas');
        validarPassword2();
    break;
    case "contrasenas2":
        validarPassword2();
    break;
  }
};

const validarCampo = (expresion, input, campo) => {

  if (expresion.test(input.value)) {

    document.getElementById(`grupo__${campo}`).classList.remove("formulario__grupo-incorrecto");
    document.getElementById(`grupo__${campo}`).classList.add("formulario__grupo-correcto");
    document.querySelector(`#grupo__${campo} span i`).classList.remove('fa-times-circle');
    document.querySelector(`#grupo__${campo} span i`).classList.add('fa-check-circle');
    document.querySelector(`#grupo__${campo} .formulario__input-error`).classList.remove("formulario__input-error-activo");
    campos[campo] = true;
    
  } else {
      
    document.querySelector(`#grupo__${campo} span i`).classList.add('fa-times-circle');
    document.querySelector(`#grupo__${campo} span i`).classList.remove('fa-check-circle');
    document.getElementById(`grupo__${campo}`).classList.remove("formulario__grupo-correcto");
    document.getElementById(`grupo__${campo}`).classList.add("formulario__grupo-incorrecto");
    document.querySelector(`#grupo__${campo} .formulario__input-error`).classList.add("formulario__input-error-activo");
    campos[campo] = false;

    }
 };
 
 const validarPassword2 = () => {

  const pass1 = document.getElementById('contrasenas');
  const pass2 = document.getElementById('contrasenas2');

  if (pass1.value !== pass2.value) {
    document.querySelector(`#grupo__contrasenas2 i`).classList.add('fa-times-circle');
    document.querySelector(`#grupo__contrasenas2 i`).classList.remove('fa-check-circle');
    document.getElementById(`grupo__contrasenas2`).classList.remove("formulario__grupo-correcto");
    document.getElementById(`grupo__contrasenas2`).classList.add("formulario__grupo-incorrecto");
    document.querySelector(`#grupo__contrasenas2 .formulario__input-error`).classList.add("formulario__input-error-activo");
    campos['contrasenas'] = false;

  } else {
      
    document.getElementById(`grupo__contrasenas2`).classList.remove("formulario__grupo-incorrecto");
    document.getElementById(`grupo__contrasenas2`).classList.add("formulario__grupo-correcto");
    document.querySelector(`#grupo__contrasenas2 i`).classList.remove('fa-times-circle');
    document.querySelector(`#grupo__contrasenas2 i`).classList.add('fa-check-circle');
    document.querySelector(`#grupo__contrasenas2 .formulario__input-error`).classList.remove("formulario__input-error-activo");
    campos['contrasenas'] = true;

  }
};

function ver() {
    
    var tipo = document.getElementById("contrasenas");
    var tipo2 = document.getElementById("contrasenas2");
    if (tipo.type === "password" && tipo2.type === "password") {
        tipo.type = "text";
        tipo2.type = "text";
        document.getElementById('hello').classList.remove("fa-eye");
        document.getElementById('hello').classList.add("fa-eye-slash");
        document.getElementById('hello').setAttribute('onclick', 'nover()');
        document.getElementById('contrasena').focus();
    }
}

function nover() {
    
    var tipo = document.getElementById("contrasenas");
    var tipo2 = document.getElementById("contrasenas2");
    if (tipo.type === "text" && tipo2.type === "text") {
        tipo.type = "password";
        tipo2.type = "password";
        document.getElementById('hello').classList.add("fa-eye");
        document.getElementById('hello').classList.remove("fa-eye-slash");
        document.getElementById('hello').setAttribute('onclick', 'ver()');
        document.getElementById('contrasena').focus();
    }
}

//Captura el Input
   inputs.forEach((input) => {
        
      input.addEventListener("keyup", validarFormularioCP);
      
   });
   
formularioCP.addEventListener("submit", (e) => {
  
      e.preventDefault();
      
      const terminos = document.getElementById('terminos');
      
      if (campos.documento && campos.contrasena_p && campos.contrasenas && terminos.checked) {

      /* Despues de que todo esta correcto */
        document.getElementById('formulario__mensaje-exito').classList.add('formulario__mensaje-exito-activo');
        
        setTimeout(() => {
            
          document.getElementById('formulario__mensaje-exito').classList.remove('formulario__mensaje-exito-activo');

        }, 7000);

        document.querySelectorAll('.formulario__grupo-correcto').forEach((icono) => {
            
          icono.classList.remove('formulario__grupo-correcto');
          document.getElementById('formulario__mensaje').classList.remove('formulario__mensaje-activo');
          
        });
        
       formularioCP.submit();
       formularioCP.reset(); 
        
      } else {

        document.getElementById('formulario__mensaje').classList.add('formulario__mensaje-activo');
        
        setTimeout(() => {
            
          document.getElementById('formulario__mensaje').classList.remove('formulario__mensaje-activo');
          
        }, 20000);
      }
});
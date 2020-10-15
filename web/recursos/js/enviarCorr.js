const formularioEC = document.getElementById('formularioEC');
const inputs = document.querySelectorAll('#formularioEC input');

const expresionesp = {

  correos: /[\w.+-]+@\w+\.+([a-z]{2,3})$/

};
const campos = {
  
  correos: false
    
};

const validarFormularioEC = (e) => {
  
  switch (e.target.name) {
    case "correos":
        validarCampo(expresionesp.correos, e.target, 'correos');
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

//Captura el Input
   inputs.forEach((input) => {
        
      input.addEventListener("keyup", validarFormularioEC);
      
   });
   
formularioEC.addEventListener("submit", (e) => {
  
      e.preventDefault();
      
      if (campos.correos) {

      /* Despues de que todo esta correcto */
        document.getElementById('formulario__mensaje-exito').classList.add('formulario__mensaje-exito-activo');
        
        setTimeout(() => {
            
          document.getElementById('formulario__mensaje-exito').classList.remove('formulario__mensaje-exito-activo');

        }, 7000);

        document.querySelectorAll('.formulario__grupo-correcto').forEach((icono) => {
            
          icono.classList.remove('formulario__grupo-correcto');
          document.getElementById('formulario__mensaje').classList.remove('formulario__mensaje-activo');
          
        });
        
       formularioEC.submit();
       formularioEC.reset(); 
        
      } else {

        document.getElementById('formulario__mensaje').classList.add('formulario__mensaje-activo');
        
        setTimeout(() => {
            
          document.getElementById('formulario__mensaje').classList.remove('formulario__mensaje-activo');
          
        }, 20000);
      }
});

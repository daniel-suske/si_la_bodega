/* global formulario */
const formulario = document.getElementById('formulario');
const inputs = document.querySelectorAll('#formulario input');
const selects = document.querySelectorAll('#formulario select');

const expresiones = {
    
  nombres: /^[a-zA-ZÀ-ÿ\s]{3,50}$/, // Letras y espacios, pueden llevar acentos.
  apellidos: /^[a-zA-ZÀ-ÿ\s]{4,50}$/, // Letras y espacios, pueden llevar acentos.
  documento: /^\d{7,11}$/, // 7 a 14 numeros.
  telefono: /^\d{6,12}$/, // 7 a 14 numeros.
  direccion: /^.{10,100}/,
  correo: /[\w.+-]+@\w+\.+([a-z]{2,3})$/,
  barrio: /^.{4,75}/, 
  contrasena: /^(?=\w*\d)(?=\w*[A-Z])(?=\w*[a-z])\S{8,35}$/ // 8 a 35 digitos.

};
const campos = {

  nombres: false,
  apellidos: false,
  tipo: false,
  documento: false,
  telefono: false,
  direccion: false,
  correo: false,
  barrio: false,
  contrasena: false
  
};

const validarFormulario = (e) => {
    
  switch (e.target.name) {
    case "nombres":
      validarCampo(expresiones.nombres, e.target, 'nombres');
      break;
    case "apellidos":
      validarCampo(expresiones.apellidos, e.target, 'apellidos');
      break;
    case "tipo" :
      validarSelect(e.target, 'tipo');
      break;
    case "documento":
      validarUnicidad(e.target, 'documento');
      validarCampo(expresiones.documento, e.target, 'documento');
      break;
    case "telefono":
      validarCampo(expresiones.telefono, e.target, 'telefono');
      break;
    case "direccion":
      validarCampo(expresiones.direccion, e.target, 'direccion');
      break;
    case "correo":
      validarUnicidad(e.target, 'correo');  
      validarCampo(expresiones.correo, e.target, 'correo');
      break;  
    case "barrio":
      validarCampo(expresiones.barrio, e.target, 'barrio');
      break;
    case "contrasena":
      validarCampo(expresiones.contrasena, e.target, 'contrasena');
      validarPassword2();
      break;
    case "contrasena2":
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
    
const validarSelect = (select, campo) => {
  
    if (select.value === "") {
     
    document.querySelector(`#grupo__${campo} span i`).classList.add('fa-times-circle');
    document.querySelector(`#grupo__${campo} span i`).classList.remove('fa-check-circle');
    document.getElementById(`grupo__${campo}`).classList.remove("formulario__grupo-correcto");
    document.getElementById(`grupo__${campo}`).classList.add("formulario__grupo-incorrecto");
    document.querySelector(`#grupo__${campo} .formulario__input-error`).classList.add("formulario__input-error-activo");
    campos[campo] = false;
        
    } else {
        
    document.getElementById(`grupo__${campo}`).classList.remove("formulario__grupo-incorrecto");
    document.getElementById(`grupo__${campo}`).classList.add("formulario__grupo-correcto");
    document.querySelector(`#grupo__${campo} span i`).classList.remove('fa-times-circle');
    document.querySelector(`#grupo__${campo} span i`).classList.add('fa-check-circle');
    document.querySelector(`#grupo__${campo} .formulario__input-error`).classList.remove("formulario__input-error-activo");
    campos[campo] = true;
        
    }
};
    
const validarUnicidad = (input, campo) => {
  
  var asku = "", answu = "", opcion = "9", text = "" , val = input.value;
  if(campo === "documento"){
  text = "N1";
  $.post("Usuario", {
      opcion:opcion,
      text:text,
      documento:val }, function(rescu){
      asku = JSON.parse(rescu);
      answu = asku.rescu;
      
      if(answu === "si"){
          
        document.querySelector(`#grupo__${campo} i`).classList.remove('formulario__validacion-unico-A');  
        document.querySelector(`#grupo__${campo} i`).classList.add('formulario__validacion-unico-I');  
        document.querySelector(`#grupo__${campo} i`).classList.add('fa-user-check');
        document.querySelector(`#grupo__${campo} i`).classList.remove('fa-check-double');
        document.getElementById(`grupo__${campo}`).classList.remove("formulario__grupo-correcto");
        document.getElementById(`grupo__${campo}`).classList.add("formulario__grupo-incorrecto");
        document.querySelector(`#grupo__${campo} .formulario__input-existente`).classList.add("formulario__input-existente-activo");
        campos[campo] = false;
        
      } else {
 
        document.querySelector(`#grupo__${campo} i`).classList.remove('formulario__validacion-unico-I');  
        document.querySelector(`#grupo__${campo} i`).classList.add('formulario__validacion-unico-A');
        document.querySelector(`#grupo__${campo} i`).classList.remove('fa-user-check');
        document.querySelector(`#grupo__${campo} i`).classList.add('fa-check-double');
        document.querySelector(`#grupo__${campo} .formulario__input-existente`).classList.remove("formulario__input-existente-activo");
        campos[campo] = true;

      }
      
  });
  } else if (campo === "correo") {
    text = "C2";
    $.post("Usuario", {
      opcion:opcion,
      text:text,
      correos:val }, function(rescu){
      asku = JSON.parse(rescu);
      answu = asku.rescu;
      
      if(answu === "si"){
          
        document.querySelector(`#grupo__${campo} i`).classList.remove('formulario__validacion-unico-A');  
        document.querySelector(`#grupo__${campo} i`).classList.add('formulario__validacion-unico-I');  
        document.querySelector(`#grupo__${campo} i`).classList.add('fa-user-check');
        document.querySelector(`#grupo__${campo} i`).classList.remove('fa-check-double');
        document.getElementById(`grupo__${campo}`).classList.remove("formulario__grupo-correcto");
        document.getElementById(`grupo__${campo}`).classList.add("formulario__grupo-incorrecto");
        document.querySelector(`#grupo__${campo} .formulario__input-existente`).classList.add("formulario__input-existente-activo");
        campos[campo] = false;
        
      } else {
          
        document.querySelector(`#grupo__${campo} i`).classList.remove('formulario__validacion-unico-I');  
        document.querySelector(`#grupo__${campo} i`).classList.add('formulario__validacion-unico-A');
        document.querySelector(`#grupo__${campo} i`).classList.remove('fa-user-check');
        document.querySelector(`#grupo__${campo} i`).classList.add('fa-check-double');
        document.querySelector(`#grupo__${campo} .formulario__input-existente`).classList.remove("formulario__input-existente-activo");
        campos[campo] = true;

      }
      
  });
  }
};

const validarPassword2 = () => {

  const pass1 = document.getElementById('contrasena');
  const pass2 = document.getElementById('contrasena2');

  if (pass1.value !== pass2.value) {
    document.querySelector(`#grupo__contrasena2 i`).classList.add('fa-times-circle');
    document.querySelector(`#grupo__contrasena2 i`).classList.remove('fa-check-circle');
    document.getElementById(`grupo__contrasena2`).classList.remove("formulario__grupo-correcto");
    document.getElementById(`grupo__contrasena2`).classList.add("formulario__grupo-incorrecto");
    document.querySelector(`#grupo__contrasena2 .formulario__input-error`).classList.add("formulario__input-error-activo");
    campos['contrasena'] = false;

  } else {
      
    document.getElementById(`grupo__contrasena2`).classList.remove("formulario__grupo-incorrecto");
    document.getElementById(`grupo__contrasena2`).classList.add("formulario__grupo-correcto");
    document.querySelector(`#grupo__contrasena2 i`).classList.remove('fa-times-circle');
    document.querySelector(`#grupo__contrasena2 i`).classList.add('fa-check-circle');
    document.querySelector(`#grupo__contrasena2 .formulario__input-error`).classList.remove("formulario__input-error-activo");
    campos['contrasena'] = true;

  }
};

function ver() {
    
    var tipo = document.getElementById("contrasena");
    var tipo2 = document.getElementById("contrasena2");
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
    
    var tipo = document.getElementById("contrasena");
    var tipo2 = document.getElementById("contrasena2");
    if (tipo.type === "text" && tipo2.type === "text") {
        tipo.type = "password";
        tipo2.type = "password";
        document.getElementById('hello').classList.add("fa-eye");
        document.getElementById('hello').classList.remove("fa-eye-slash");
        document.getElementById('hello').setAttribute('onclick', 'ver()');
        document.getElementById('contrasena').focus();
    }
}

    inputs.forEach((input) => {
        
      input.addEventListener("keyup", validarFormulario);
      
    });
    
    selects.forEach((select) => {
   
   select.addEventListener("change", validarFormulario);
    
    });

    formulario.addEventListener("submit", (e) => {
        
      e.preventDefault();  
      
      const terminos = document.getElementById('terminos');
      if (campos.nombres && campos.apellidos && campos.tipo && campos.documento && campos.telefono && campos.direccion && campos.correo && campos.barrio && campos.contrasena && terminos.checked) {

      /* Despues de que todo esta correcto */
        document.getElementById('formulario__mensaje-exito').classList.add('formulario__mensaje-exito-activo');
        
        setTimeout(() => {
            
          document.getElementById('formulario__mensaje-exito').classList.remove('formulario__mensaje-exito-activo');

        }, 7000);

        document.querySelectorAll('.formulario__grupo-correcto').forEach((icono) => {
            
          icono.classList.remove('formulario__grupo-correcto');
          document.getElementById('formulario__mensaje').classList.remove('formulario__mensaje-activo');
          
        });
        
       formulario.submit();
        
      } else {

        document.getElementById('formulario__mensaje').classList.add('formulario__mensaje-activo');
        
        setTimeout(() => {
            
          document.getElementById('formulario__mensaje').classList.remove('formulario__mensaje-activo');
          
        }, 20000);
      }
    });
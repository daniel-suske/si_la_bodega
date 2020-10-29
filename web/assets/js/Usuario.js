$(document).ready(function (){

const formularioUE = document.getElementById('formularioUE');
const inputs = document.querySelectorAll('#formularioUE input');
const selects = document.querySelectorAll('#formularioUE select');

const expresiones = {
    
  nombres: /^[a-zA-ZÀ-ÿ\s]{3,50}$/, // Letras y espacios, pueden llevar acentos.
  apellidos: /^[a-zA-ZÀ-ÿ\s]{4,50}$/, // Letras y espacios, pueden llevar acentos.
  documento: /^\d{7,11}$/, // 7 a 11 numeros.
  telefono: /^\d{6,12}$/, // 6 a 12 numeros.
  direccion: /^.{10,100}$/,
  correos: /[\w.+-]+@\w+\.+([a-z]{2,3})$/,
  barrio: /^.{3,75}$/

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
            validarUnicidad(e.target, 'documento');
            validarCampo(expresiones.documento, e.target, 'documento');
        break;
        case "tipo" :
            validarSelect(e.target, 'tipo');
        break;
        case "correos" :
            validarUnicidad(e.target, 'correos');
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
    document.querySelector(`#grupo__${campo} span i`).classList.remove('fa-exclamation-triangle');
    document.querySelector(`#grupo__${campo} span i`).classList.add('fa-clipboard-check');
    document.querySelector(`#grupo__${campo} .formulario__input-error`).classList.remove("formulario__input-error-activo");
    campos[campo] = true;
    
  } else {
      
    document.querySelector(`#grupo__${campo} span i`).classList.add('fa-exclamation-triangle');
    document.querySelector(`#grupo__${campo} span i`).classList.remove('fa-clipboard-check');
    document.getElementById(`grupo__${campo}`).classList.remove("formulario__grupo-correcto");
    document.getElementById(`grupo__${campo}`).classList.add("formulario__grupo-incorrecto");
    document.querySelector(`#grupo__${campo} .formulario__input-error`).classList.add("formulario__input-error-activo");
    campos[campo] = false;
    
    } 
};

const validarSelect = (select, campo) => {
  
    if (select.value === "") {
     
    document.querySelector(`#grupo__${campo} span i`).classList.add('fa-exclamation-triangle');
    document.querySelector(`#grupo__${campo} span i`).classList.remove('fa-clipboard-check');
    document.getElementById(`grupo__${campo}`).classList.remove("formulario__grupo-correcto");
    document.getElementById(`grupo__${campo}`).classList.add("formulario__grupo-incorrecto");
    document.querySelector(`#grupo__${campo} .formulario__input-error`).classList.add("formulario__input-error-activo");
    campos[campo] = false;
        
    } else {
        
    document.getElementById(`grupo__${campo}`).classList.remove("formulario__grupo-incorrecto");
    document.getElementById(`grupo__${campo}`).classList.add("formulario__grupo-correcto");
    document.querySelector(`#grupo__${campo} span i`).classList.remove('fa-exclamation-triangle');
    document.querySelector(`#grupo__${campo} span i`).classList.add('fa-clipboard-check');
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
  } else if (campo === "correos") {
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

/* Toma los inputs y selects y el enviar :)*/

inputs.forEach((input) => {
        
     input.addEventListener("keyup", validarFormularioUE);
     
});

selects.forEach((select) => {
   
   select.addEventListener("change", validarFormularioUE);
    
});
//Cuando se envia todo
formularioUE.addEventListener('submit', (e) => {
   
    e.preventDefault();
    
    if (campos.nombres && campos.apellidos && campos.documento && campos.tipo && campos.correos && campos.telefono && campos.barrio && campos.direccion && campos.textId_R && campos.textPerfil && campos.textEstado) {
        
        var opcion = document.getElementById("opcion").value,
        nombresU = document.getElementById("nombres").value,
        apellidosU = document.getElementById("apellidos").value,
        documentoU = document.getElementById("documento").value,
        tipoU = document.getElementById("tipo").value,
        correosU = document.getElementById("correos").value,
        telefonoU = document.getElementById("telefono").value,
        barrioU = document.getElementById("barrio").value,
        direccionU = document.getElementById("direccion").value,
        textId_U = document.getElementById("textId_R").value,
        textPerfilU = document.getElementById("textPerfil").value,
        textEstadoU = document.getElementById("textEstado").value;
        
        /*formularioUE.submit();*/
           var ask = "", answ = "";
           $.post("Usuario", {
                opcion : opcion, 
                nombres: nombresU,
                apellidos: apellidosU,
                documento: documentoU,
                tipo: tipoU,
                correos: correosU,
                telefono: telefonoU,
                barrio: barrioU,
                direccion: direccionU,
                textId_R: textId_U,
                textPerfil: textPerfilU,
                textEstado: textEstadoU }, function(resu){
                
                ask = JSON.parse(resu);
                answ = ask.resu;
                
                if(answ === "si"){
                    formularioUE.reset();
                    location.href ="RegistrarDatosPE.jsp";
                } else {
                    document.getElementById('mensaje_Error').classList.add('formulario__mensaje-error-activo');
                    setTimeout(() => {
                    document.getElementById('mensaje_Error').classList.remove('formulario__mensaje-error-activo');
                    }, 40000);
                }
                });
        
    } else {
        
        document.getElementById('formulario__mensaje').classList.add('formulario__mensaje-activo');
        
        setTimeout(() => {
            
          document.getElementById('formulario__mensaje').classList.remove('formulario__mensaje-activo');
          
        }, 20000);
    }
});
}); 

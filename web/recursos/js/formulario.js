const formularios = document.getElementById('formulario');
const inputs = document.querySelectorAll('#formulario input');

const expresiones = {
  usuario: /^[a-zA-Z0-9\_\-]{4,16}$/, // Letras, numeros, guion y guion_bajo
  nombres: /^[a-zA-ZÀ-ÿ\s]{3,40}$/, // Letras y espacios, pueden llevar acentos.
  apellidos: /^[a-zA-ZÀ-ÿ\s]{4,40}$/, // Letras y espacios, pueden llevar acentos.
  documento: /^\d{7,14}$/, // 7 a 14 numeros.
  telefono: /^\d{7,10}$/, // 7 a 14 numeros.
  contrasena: /^.{8,20}$/, // 4 a 12 digitos.
  correo: /^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/,
  direccion: /^.{15,100}/,

};
const campos = {

  nombres: false,
  apellidos: false,
  documento: false,
  telefono: false,
  contrasena: false,
  correo: false,
  direccion: false,
  tipo: false
};

const validarFormulario = (e) => {
  switch (e.target.name) {
    case "nombres":
      validarCampo(expresiones.nombres, e.target, 'nombres');
      break;
    case "apellidos":
      validarCampo(expresiones.apellidos, e.target, 'apellidos');
      break;
    case "documento":
      validarCampo(expresiones.documento, e.target, 'documento');
      break;
    case "direccion":
      validarCampo(expresiones.direccion, e.target, 'direccion');
      break;
    case "telefono":
      validarCampo(expresiones.telefono, e.target, 'telefono');
      break;
    case "correo":
      validarCampo(expresiones.correo, e.target, 'correo');
      break;
    case "contrasena":
      validarCampo(expresiones.contrasena, e.target, 'contrasena');
      validarPassword2();
      break;
    case "contrasena2":
      validarPassword2();
      break;
  }

  const selectElement = document.querySelector('.selects');

  selectElement.addEventListener('change', (event) => {




    if (event.target.value == ("EFE")) {


      document.querySelector("#grupo__tipo i").classList.add('fa-times-circle');
      document.querySelector("#grupo__tipo i").classList.remove('fa-check-circle');
      document.getElementById("grupo__tipo").classList.remove("formulario__grupo-correcto");
      document.getElementById("grupo__tipo").classList.add("formulario__grupo-incorrecto");
      document.querySelector("#grupo__tipo .formulario__input-error").classList.add("formulario__input-error-activo");
      campos['tipo'] = false;


    } else {
      document.getElementById("grupo__tipo").classList.remove("formulario__grupo-incorrecto");
      document.getElementById("grupo__tipo").classList.add("formulario__grupo-correcto");
      document.querySelector("#grupo__tipo i").classList.remove('fa-times-circle');
      document.querySelector("#grupo__tipo i").classList.add('fa-check-circle');
      document.querySelector("#grupo__tipo .formulario__input-error").classList.remove("formulario__input-error-activo");
      campos['tipo'] = true;
    }
  });
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

const validarPassword2 = () => {

  const pass1 = document.getElementById('contrasena');
  const pass2 = document.getElementById('contrasena2');

  if (pass1.value != pass2.value) {
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
}

inputs.forEach((input, selectElement) => {
  input.addEventListener("keyup", validarFormulario);
  input.addEventListener("blur", validarFormulario);

});

formulario.addEventListener("submit", (e) => {
  e.preventDefault();
  const terminos = document.getElementById('terminos');
  if (campos.nombres && campos.apellidos && campos.documento && campos.direccion && campos.telefono && campos.contrasena && campos.tipo && terminos.checked) {
    formulario.reset();
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

const login = document.getElementById('login');
const inputss = document.querySelectorAll('#login input');

const expresioness = {

    correos: /^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/,
    contrasenas: /^.{1,30}$/ // 4 a 12 digitos.

};
const camposLogin = {

    contrasenas: false,
    correos: false

};

const validarFormularioL = (e) => {
    
    switch (e.target.name) {

        case "correos":
            validarCampoL(expresioness.correos, e.target, 'correos');
            break;
        case "contrasenas":
            validarCampoL(expresioness.contrasenas, e.target, 'contrasenas');
            break;

    }

};



const validarCampoL = (expresionn, inputt, campoo) => {

    if (expresionn.test(inputt.value)) {

        document.getElementById(`grupoLogin__${campoo}`).classList.remove("login__grupo-incorrecto");
        document.getElementById(`grupoLogin__${campoo}`).classList.add("login__grupo-correcto");
        document.querySelector(`#grupoLogin__${campoo} i`).classList.remove('fa-times-circle');
        document.querySelector(`#grupoLogin__${campoo} i`).classList.add('fa-check-circle');
        document.querySelector(`#grupoLogin__${campoo} .login__input-error`).classList.remove("login__input-error-activo");
        camposLogin[campoo] = true;
        
    } else {

        document.getElementById(`grupoLogin__${campoo}`).classList.remove("login__grupo-correcto");
        document.getElementById(`grupoLogin__${campoo}`).classList.add("login__grupo-incorrecto");
        document.querySelector(`#grupoLogin__${campoo} .login__input-error`).classList.add("login__input-error-activo");
        camposLogin[campoo] = false;

    }

}



inputss.forEach((inputt, selectElement) => {
    inputt.addEventListener("keyup", validarFormularioL);
    inputt.addEventListener("blur", validarFormularioL);

});

login.addEventListener("submit", (e) => {
    
    e.preventDefault();

    if (camposLogin.contrasenas && camposLogin.correos) {

        document.querySelectorAll('.login__grupo-correcto').forEach((icono) => {
            icono.classList.remove('login__grupo-correcto');

            document.getElementById('login__mensaje').classList.remove('login__mensaje-activo');
        });
        
        login.submit();
        
    } else {
        
        document.getElementById('login__mensaje').classList.add('login__mensaje-activo');

    }
});

function hola() {
    
    var tipo = document.getElementById("contrasenas");
    if (tipo.type === "password") {
        tipo.type = "text";
        document.getElementById('hi').classList.remove("fa-eye");
        document.getElementById('hi').classList.add("fa-eye-slash");
        document.getElementById('hi').setAttribute('onclick', 'adios()');
        document.getElementById('contrasenas').focus();
    }
}

function adios() {
    
    var tipo = document.getElementById("contrasenas");
    if (tipo.type === "text") {
        tipo.type = "password";
        document.getElementById('hi').classList.add("fa-eye");
        document.getElementById('hi').classList.remove("fa-eye-slash");
        document.getElementById('hi').setAttribute('onclick', 'hola()');
        document.getElementById('contrasenas').focus();
    }
}
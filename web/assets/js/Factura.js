const form = document.getElementById('form');
const inputs = document.querySelectorAll('#form input');
const expresiones = {

    pago: /[EF]|[ef]|[td]|[TD]/,
    total: /\d/,
    garantia: /([No]|[Si]|[NO]|[SI])/
};

const campos = {
    factura: false,
    servicio: false,
    recibe: false

};
const validarform = (e) => {
    switch (e.target.name) {
        case "pago":
            if (expresiones.pago.test(e.target.value)) {
                document.getElementById('grupo__pago').classList.remove('form-group-incorrecto');
                document.getElementById('grupo__pago').classList.add('form-group-correcto');
                document.querySelector('#grupo__pago i').classList.remove('fa-exclamation-circle');
                document.querySelector('#grupo__pago i').classList.add('fa-clipboard-check');            
            }else {
               
                document.getElementById('grupo__pago').classList.add('form-group-incorrecto');
            }

            break;
        case "servicio":
            break;
        case "pago":
            break;
        case "total":
            break;
        case "garantia":
            break;
        case "recibe":
            break;
    }

};


inputs.forEach((input)=>{
    input.addEventListener('keyup',validarform);
    input.addEventListener('blur',validarform);
    
    });
    


form.addEventListener('submit',(e)  => {
    
});